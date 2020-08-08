
#include <stdio.h>
#include "stm32f1xx_hal.h"

UART_HandleTypeDef UART1_Handler; //UART句柄

//重定向
#ifdef __GNUC__
int _write(int fd, char *ptr, int len)  
{  
  HAL_UART_Transmit(&UART1_Handler, (uint8_t*)ptr, len, 0xFFFF);
  return len;
}
#endif

void HAL_UART_MspInit(UART_HandleTypeDef *huart)
{
    //GPIO端口设置
	GPIO_InitTypeDef GPIO_Initure;
	
	if(huart->Instance==USART1)                 //如果是串口1，进行串口1 MSP初始化
	{
		__HAL_RCC_GPIOA_CLK_ENABLE();			//使能GPIOA时钟
		__HAL_RCC_USART1_CLK_ENABLE();			//使能USART1时钟
		__HAL_RCC_AFIO_CLK_ENABLE();
	
		GPIO_Initure.Pin=GPIO_PIN_9;			//PA9
		GPIO_Initure.Mode=GPIO_MODE_AF_PP;		//复用推挽输出
		GPIO_Initure.Pull=GPIO_PULLUP;			//上拉
		GPIO_Initure.Speed=GPIO_SPEED_FREQ_HIGH;//高速
		HAL_GPIO_Init(GPIOA,&GPIO_Initure);	   	//初始化PA9

		GPIO_Initure.Pin=GPIO_PIN_10;			//PA10
		GPIO_Initure.Mode=GPIO_MODE_AF_INPUT;	//模式要设置为复用输入模式！	
		HAL_GPIO_Init(GPIOA,&GPIO_Initure);	   	//初始化PA10
	}
}

//初始化IO 串口1 
//bound:波特率
void uart_init(uint32_t bound)
{	
	//UART 初始化设置
	UART1_Handler.Instance=USART1;					    //USART1
	UART1_Handler.Init.BaudRate=bound;				    //波特率
	UART1_Handler.Init.WordLength=UART_WORDLENGTH_8B;   //字长为8位数据格式
	UART1_Handler.Init.StopBits=UART_STOPBITS_1;	    //一个停止位
	UART1_Handler.Init.Parity=UART_PARITY_NONE;		    //无奇偶校验位
	UART1_Handler.Init.HwFlowCtl=UART_HWCONTROL_NONE;   //无硬件流控
	UART1_Handler.Init.Mode=UART_MODE_TX;               //收发模式
    // UART1_Handler.MspInitCallback = HAL_UART_MspInit;
	HAL_UART_Init(&UART1_Handler);					    //HAL_UART_Init()会使能UART1
}
