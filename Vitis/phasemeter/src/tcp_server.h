#ifndef __TCP_SERVER_H
#define __TCP_SERVER_H

#define LOCAL_IP      "172.16.15.21"
#define LOCAL_MASK    "255.255.255.0"
#define LOCAL_GW      "172.16.15.1"

void tcp_server_init(void);
void tcp_server_handle(void);

void tcp_server_send(char *msg);

#endif /*__TCP_SERVER_H*/