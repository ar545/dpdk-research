wget https://fast.dpdk.org/rel/dpdk-22.11.1.tar.xz
ls
tar xf dpdk-22.11.1.tar.gz
tar xf dpdk-22.11.1.tar.xz
ls
cd dpdk-stable-22.11.1/
meson build
sudo apt install meson
sudo apt-get update
sudo apt install meson
meson build
ninja -C build
sudo apt install ninja
sudo apt-get update
sudo apt install ninja
meson build
meson -Dexamples=all build
cd build/meson-logs/
vim meson-log.txt
meson build
cd ../..
meson build
cd ..
curl Program cat found: YES (/bin/cat)
curl https://fast.dpdk.org/rel/dpdk-22.07.tar.xz
ls
wget https://fast.dpdk.org/rel/dpdk-22.07.tar.xz
ls
tar xf dpdk-22.07.tar.xz
cd dpdk-22.07/
meson build
meson build .
meson build
ls
cd ..
ls
echo "# cloudlab-dpdk" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:Ar545/cloudlab-dpdk.git
git push -u origin main
git remote add origin https://github.com/Ar545/cloudlab-dpdk.git
ssh-keygen -t ed25519 -C "Ar545@github.com"
view ~/.ssh/id_ed25519.pub
git push -u origin main
meson -Dexamples=all build
cd dpdk-22.07/
ls
vim meson_options.txt 
view meson.build 
vim meson.build 
meson build
vim meson.build 
cd build
ls
cd ..
vim README 
mountpoint -q /dev/hugepages || mount -t hugetlbfs nodev /dev/hugepages
echo 64 > /sys/devices/system/node/node0/hugepages/hugepages-2048kB/nr_hugepages
