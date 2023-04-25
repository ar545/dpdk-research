# cloudlab-dpdk

## install

### get latest dpdk:
wget http://fast.dpdk.org/rel/dpdk-22.11.1.tar.xz

### C compiler such as gcc (version 4.9+) or clang (version 3.4+), and pkg-config or pkgconf:
apt update

apt upgrade

apt install build-essential

### check python version:
python --version

### reqs:
apt install meson

apt install ninja-build

apt install python3-pyelftools

apt install libnuma-dev

### Huge pages:
echo 1024 > /sys/kernel/mm/hugepages/hugepages-2048kB/nr_hugepages

echo 1024 > /sys/devices/system/node/node0/hugepages/hugepages-2048kB/nr_hugepages

echo 1024 > /sys/devices/system/node/node1/hugepages/hugepages-2048kB/nr_hugepages

## Compiling the DPDK Target from Source
### unzip:
tar xJf dpdk-22.11.1.tar.xz

cd dpdk-stable-22.11.1

meson setup build

### build:
cd build

ninja

ninja install




ldconfig

## setup github:
ssh-keygen -t ed25519 -C "lz527@cornell.edu";
cat ~/.ssh/id_ed25519.pub

## setup NIC:
 cd dpdk-stable-22.11.1/

   ./usertools/dpdk-devbind.py --status

   ip link set dev enp6s0f0 down
   
   ./usertools/dpdk-devbind.py --status ( ../../dpdk-stable-22.11.1/usertools/dpdk-devbind.py --status)
   
   echo 1 > /sys/module/vfio/parameters/enable_unsafe_noiommu_mode
   
   96  ./usertools/dpdk-devbind.py --bind=vfio-pci enp6s0f0 (../../dpdk-stable-22.11.1/usertools/dpdk-devbind.py --bind=vfio-pci enp6s0f0)
   
   97  ./usertools/dpdk-devbind.py --bind=vfio-pci 0000:06:00.0 (../../dpdk-stable-22.11.1/usertools/dpdk-devbind.py --bind=vfio-pci 0000:06:00.0)
   
   98  ifconfig
   
   99  ./usertools/dpdk-devbind.py --status
   
   ## info:
   https://docs.google.com/document/d/1VDzg9zsM2JPhYn_QEuc1rGJJd0fpWVNZznAM2qUcLu8/edit
   
../../dpdk-stable-22.11.1/usertools/dpdk-devbind.py -u 06:00.0

../../dpdk-stable-22.11.1/usertools/dpdk-devbind.py -b ixgbe 06:00.0

 ifconfig enp6s0f0 up
 
 ifconfig enp6s0f0 10.10.1.2/24 (NODE 1)
 ifconfig enp6s0f0 10.10.1.1/24 (NODE 0)
   
# make playground helloworld
   
mkdir -p build; cd build; cmake -DCMAKE_BUILD_TYPE=Release ..; make -j $(nproc)

   ## HELLOWORLD in playground:
   ./helloworld/helloworld -- -r
   
   sudo  ./helloworld/helloworld -l 0,1 -- -s
   
   ./helloworld/helloworld -- -s
   
   
 ## libfabric
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

