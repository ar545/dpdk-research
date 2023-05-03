# Libfabric common used commands
## Setup
 `git clone`
### Compile main features (including util/pingpong)
```
cd libfabric/
./autogen.sh 
./configure && sudo make && sudo make install
```
### Compile fabtests
```
cd fabtests/
./autogen.sh
./configure --prefix=/opt/fabtests && make -j 32 && sudo make install
```

## Util/pingpong
### SERVER
find ip address through `ifconfig`
sudo

### CLIENT
