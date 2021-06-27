datacenter = "dc1"
data_dir = "/opt/consul"
client_addr = "0.0.0.0"
server = false
bind_addr = "{{GetInterfaceIP \"eth0\"}}" # Listen on all IPv4
retry_join = ["8.208.94.136"]
