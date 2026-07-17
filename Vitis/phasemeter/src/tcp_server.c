#include "tcp_server.h"

#include "my_gpio.h"

#include "lwip/tcp.h"
#include "lwip/pbuf.h"
#include "lwip/init.h"

#include "netif/xadapter.h"

#include "xil_printf.h"

#include <string.h>
#include <stdlib.h>

#define TCP_SERVER_PORT 5000

static struct tcp_pcb *client_pcb = NULL;

static struct netif *netif;
static struct netif server_netif;

static ip_addr_t ipaddr;
static ip_addr_t netmask;
static ip_addr_t gw;

static inline int ip4_from_string(ip4_addr_t *ip, const char *str)
{
    unsigned a, b, c, d;

    if (sscanf(str, "%u.%u.%u.%u", &a, &b, &c, &d) != 4)
        return -1;

    if (a > 255 || b > 255 || c > 255 || d > 255)
        return -1;

    IP4_ADDR(ip, a, b, c, d);
    return 0;
}

static err_t tcp_server_recv(void *arg, struct tcp_pcb *tpcb, struct pbuf *p, err_t err)
{
    if (p == NULL) {
        xil_printf("Client disconnected\r\n");
        tcp_close(tpcb);
        client_pcb = NULL;
        offLED();
        return ERR_OK;
    }

    if (err != ERR_OK) {
        pbuf_free(p);
        return err;
    }

    xil_printf("RX: %s\r\n", (char *)p->payload);

    tcp_write(tpcb, p->payload, p->len, TCP_WRITE_FLAG_COPY);

    tcp_output(tpcb);

    pbuf_free(p);

    return ERR_OK;
}

void tcp_server_send(char *msg)
{
    if (client_pcb == NULL)
        return;

    tcp_write(client_pcb, msg, strlen(msg), TCP_WRITE_FLAG_COPY);
    tcp_output(client_pcb);
    toggleLED();
}

static err_t tcp_server_accept(void *arg, struct tcp_pcb *newpcb, err_t err)
{
    xil_printf("TCP client connected\r\n");
    client_pcb = newpcb;

    tcp_recv(newpcb, tcp_server_recv);

    return ERR_OK;
}

void tcp_server_init(void)
{
    unsigned char mac[] = { 0x00,0x0A,0x35,0x01,0x02,0x03 };

    struct tcp_pcb *pcb;

    // IP4_ADDR(&ipaddr,  172, 16,  15,  21);      /*172.16.15.21*/
    // IP4_ADDR(&netmask, 255, 255, 255, 0 );
    // IP4_ADDR(&gw,      172, 16 , 15 , 1 );

    ip4_from_string(&ipaddr,  LOCAL_IP);
    ip4_from_string(&netmask, LOCAL_MASK);
    ip4_from_string(&gw,       LOCAL_GW);

    lwip_init();
    netif=&server_netif;

    if(!xemac_add(netif, &ipaddr, &netmask, &gw, mac, XPAR_XEMACPS_0_BASEADDR)) {
        xil_printf(
        "Ethernet init failed\r\n");
        return;
    }

    netif_set_default(netif);
    netif_set_up(netif);

    pcb = tcp_new();

    if (!pcb) {
        xil_printf("TCP PCB creation failed\r\n");
        return;
    }

    if (tcp_bind(pcb, IP_ADDR_ANY, TCP_SERVER_PORT) != ERR_OK) {
        xil_printf("TCP bind failed\r\n");
        return;
    }

    pcb = tcp_listen(pcb);

    tcp_accept(pcb, tcp_server_accept);

    xil_printf("TCP server started. Port %d\r\n", TCP_SERVER_PORT);
}

void tcp_server_handle(void)
{
    xemacif_input(netif);
}