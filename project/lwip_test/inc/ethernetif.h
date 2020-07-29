/*
 * @Author: your name
 * @Date: 2020-07-29 17:10:18
 * @LastEditTime: 2020-07-29 17:12:51
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /mcu_framework/project/lwip_test/inc/ethernetif.h
 */ 

#ifndef __ETHERMETIF_H
#define __ETHERMETIF_H

#include "lwip/err.h"

void process_mac(void);
err_t ethernetif_init(struct netif *netif);

#endif
