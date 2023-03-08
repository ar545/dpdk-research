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

## setup github:
ssh-keygen -t ed25519 -C "Ar545@github.com"
cat ~/.ssh/id_ed25519.pub


ldconfig

## setup NIC:
 cd dpdk-stable-22.11.1/
   90  ls
   91  ./usertools/dpdk-devbind.py --status
   92  ip link set dev enp6sofo down
   93  ip link set dev enp6s0f0 down
   94  ./usertools/dpdk-devbind.py --status
   95  echo 1 > /sys/module/vfio/parameters/enable_unsafe_noiommu_mode
   96  ./usertools/dpdk-devbind.py --bind=vfio-pci enp6s0f0
   97  ./usertools/dpdk-devbind.py --bind=vfio-pci 0000:06:00.0
   98  ifconfig
   99  ./usertools/dpdk-devbind.py --status
