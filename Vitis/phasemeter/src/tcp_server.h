#ifndef TCP_SERVER_H
#define TCP_SERVER_H

void tcp_server_init(void);
void tcp_server_handle(void);

void tcp_server_send(char *msg);

#endif