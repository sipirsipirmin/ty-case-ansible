#datacenter = "my-dc-1"
data_dir = "/opt/consul"
server = true
bind_addr = "{{ GetInterfaceIP \"eth0\" }}" # Listen on all IPv4
advertise_addr = "192.168.6.70"
bootstrap_expect=1
