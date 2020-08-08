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
//������ֻ��ѧϰʹ�ã�δ��������ɣ��������������κ���;
//ALIENTEK STM32F103������
//SPI��������	   
//����ԭ��@ALIENTEK
//������̳:www.openedv.com
//��������:2017/5/30
//�汾��V1.0
//��Ȩ���У�����ؾ���
//Copyright(C) ������������ӿƼ����޹�˾ 2014-2024
//All rights reserved									  
////////////////////////////////////////////////////////////////////////////////// 	

extern SPI_HandleTypeDef SPI1_Handler;  //SPI���

void spi1_it_init(void);
void spi1_cs_init(void);
void spi1_cs_enable(int flag);
void SPI1_Init(void);
uint8_t SPI1_ReadWriteByte(uint8_t TxData);

#endif
