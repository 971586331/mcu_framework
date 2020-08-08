/*
 * @Author: your name
 * @Date: 2020-07-23 15:09:32
 * @LastEditTime: 2020-07-23 15:13:43
 * @LastEditors: Please set LastEditors
 * @Description: In User Settings Edit
 * @FilePath: /mcu_framework/project/lwip_test/inc/enc28j60_spi.h
 */ 
#ifndef __SPI_H
#define __SPI_H

#include "stm32f1xx_hal.h"

//////////////////////////////////////////////////////////////////////////////////	 
//本程序只供学习使用，未经作者许可，不得用于其它任何用途
//ALIENTEK STM32F103开发板
//SPI驱动代码	   
//正点原子@ALIENTEK
//技术论坛:www.openedv.com
//创建日期:2017/5/30
//版本：V1.0
//版权所有，盗版必究。
//Copyright(C) 广州市星翼电子科技有限公司 2014-2024
//All rights reserved									  
////////////////////////////////////////////////////////////////////////////////// 	

extern SPI_HandleTypeDef SPI1_Handler;  //SPI句柄

void spi1_it_init(void);
void spi1_cs_init(void);
void spi1_cs_enable(int flag);
void SPI1_Init(void);
uint8_t SPI1_ReadWriteByte(uint8_t TxData);

#endif
