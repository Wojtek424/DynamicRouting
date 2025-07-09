# 2025-07-09 16:29:07 by RouterOS 7.19.2
# system id = TpvSJBNZgxJ
#
/interface ethernet
set [ find default-name=ether1 ] disable-running-check=no
set [ find default-name=ether2 ] disable-running-check=no
set [ find default-name=ether3 ] disable-running-check=no
set [ find default-name=ether4 ] disable-running-check=no
/port
set 0 name=serial0
set 1 name=serial1
/routing id
add disabled=no id=1.1.1.1 name=ospf_id select-dynamic-id=""
/routing ospf instance
add disabled=no name=ospf-instance-1 router-id=ospf_id
/routing ospf area
add disabled=no instance=ospf-instance-1 name=ospf-area-1
/ip address
add address=192.168.10.1/24 interface=ether2 network=192.168.10.0
add address=10.0.0.2/30 interface=ether1 network=10.0.0.0
/ip firewall nat
add action=masquerade chain=srcnat out-interface=ether1
/routing ospf interface-template
add area=ospf-area-1 disabled=no interfaces=ether1
/system identity
set name=RouterA
