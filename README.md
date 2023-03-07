# cloudlab-dpdk

## install

get latest dpdk:
wget http://fast.dpdk.org/rel/dpdk-22.11.1.tar.xz

C compiler such as gcc (version 4.9+) or clang (version 3.4+), and pkg-config or pkgconf:
apt update
apt upgrade
apt install build-essential

check python version:
python --version

reqs:
apt install meson
apt install ninja-build
apt install pyelftools
apt install libnuma-dev

Huge pages:
echo 1024 > /sys/kernel/mm/hugepages/hugepages-2048kB/nr_hugepages
echo 1024 > /sys/devices/system/node/node0/hugepages/hugepages-2048kB/nr_hugepages
echo 1024 > /sys/devices/system/node/node1/hugepages/hugepages-2048kB/nr_hugepages

## Compiling the DPDK Target from Source
tar xJf dpdk-22.11.1.tar.xz
cd dpdk-22.11.1

meson setup build

cd build
ninja
ninja install
ldconfig
