
SET(LWIP_SOURCES 
    ./src/netif/etharp.c
    ./src/netif/slipif.c
    ./src/core/def.c
    ./src/core/dhcp.c
    ./src/core/dns.c
    ./src/core/init.c
    ./src/core/mem.c
    ./src/core/memp.c
    ./src/core/netif.c
    ./src/core/pbuf.c
    ./src/core/raw.c
    ./src/core/stats.c
    ./src/core/sys.c
    ./src/core/tcp.c
    ./src/core/tcp_in.c
    ./src/core/tcp_out.c
    ./src/core/timers.c
    ./src/core/udp.c
    ./src/core/ipv4/autoip.c
    ./src/core/ipv4/icmp.c
    ./src/core/ipv4/igmp.c
    ./src/core/ipv4/inet.c
    ./src/core/ipv4/inet_chksum.c
    ./src/core/ipv4/ip.c
    ./src/core/ipv4/ip_addr.c
    ./src/core/ipv4/ip_frag.c
    )

add_library(lwip ${LWIP_SOURCES})

