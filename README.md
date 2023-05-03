# Useful UNIX commands

## setup github:
ssh-keygen -t ed25519 -C "lz527@cornell.edu";
cat ~/.ssh/id_ed25519.pub

## libfabric
```
 git clone git@github.com:Ar545/libfabric.git
 
cd libfabric/

./autogen.sh 

./configure && sudo make && sudo make install

cd util/

ifconfig

./fi_pingpong -p sockets

./fi_pingpong -p sockets 128.105.145.179


sudo ./fi_pingpong -p tcp -e msg

sudo ./fi_pingpong -p dpdk -e msg -d 0000:06:00.1

sudo ./fi_pingpong -p dpdk -e msg -d 0000:5e:00.1
```
