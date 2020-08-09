LWIP_SRC = ${TOP}/components/lwip-1.4.1

###################################################################
#源文件
C_SOURCES  += $(LWIP_SRC)/src/netif/etharp.c
C_SOURCES  += $(LWIP_SRC)/src/netif/slipif.c

C_SOURCES  += $(LWIP_SRC)/src/core/def.c
C_SOURCES  += $(LWIP_SRC)/src/core/dhcp.c
C_SOURCES  += $(LWIP_SRC)/src/core/dns.c
C_SOURCES  += $(LWIP_SRC)/src/core/init.c
C_SOURCES  += $(LWIP_SRC)/src/core/mem.c
C_SOURCES  += $(LWIP_SRC)/src/core/memp.c
C_SOURCES  += $(LWIP_SRC)/src/core/netif.c
C_SOURCES  += $(LWIP_SRC)/src/core/pbuf.c
C_SOURCES  += $(LWIP_SRC)/src/core/raw.c
C_SOURCES  += $(LWIP_SRC)/src/core/stats.c
C_SOURCES  += $(LWIP_SRC)/src/core/sys.c
C_SOURCES  += $(LWIP_SRC)/src/core/tcp.c
C_SOURCES  += $(LWIP_SRC)/src/core/tcp_in.c
C_SOURCES  += $(LWIP_SRC)/src/core/tcp_out.c
C_SOURCES  += $(LWIP_SRC)/src/core/timers.c
C_SOURCES  += $(LWIP_SRC)/src/core/udp.c
C_SOURCES  += $(LWIP_SRC)/src/core/ipv4/autoip.c
C_SOURCES  += $(LWIP_SRC)/src/core/ipv4/icmp.c
C_SOURCES  += $(LWIP_SRC)/src/core/ipv4/igmp.c
C_SOURCES  += $(LWIP_SRC)/src/core/ipv4/inet.c
C_SOURCES  += $(LWIP_SRC)/src/core/ipv4/inet_chksum.c
C_SOURCES  += $(LWIP_SRC)/src/core/ipv4/ip.c
C_SOURCES  += $(LWIP_SRC)/src/core/ipv4/ip_addr.c
C_SOURCES  += $(LWIP_SRC)/src/core/ipv4/ip_frag.c

###################################################################
#头文件路径
C_INCLUDES  += -I$(LWIP_SRC)/src
C_INCLUDES  += -I$(LWIP_SRC)/src/api
C_INCLUDES  += -I$(LWIP_SRC)/src/arch
C_INCLUDES  += -I$(LWIP_SRC)/src/include
C_INCLUDES  += -I$(LWIP_SRC)/src/include/ipv4
C_INCLUDES  += -I$(LWIP_SRC)/src/include/ipv4/lwip
C_INCLUDES  += -I$(LWIP_SRC)/src/include/netif

