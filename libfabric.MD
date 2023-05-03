# Libfabric common used commands
## Setup
 `git clone git@github.com:Ar545/libfabric.git`
 Swtich into DPDK provider branch
 `git checkout dpdk_provider`
### Compile main features (including util/pingpong)
```
cd libfabric/
./autogen.sh 
./configure && sudo make && sudo make install
```
### Compile fabtests (must after main is compiled, in pwd of libfabric)
```
cd fabtests/
./autogen.sh
./configure --prefix=/opt/fabtests && make -j 32 && sudo make install
```

## Util/pingpong
### SERVER
find ip address through `ifconfig`
- sockets
`sudo ./fi_pingpong -p sockets`
- TCP (default endpoint does not work)
`sudo ./fi_pingpong -p tcp -e msg`
- DPDK (default endpoint does not work) (need to put labfabric.dpdk.cfg (from libfabric/prov/dpdk) in pwd (usually libfabric/util))
`sudo ./fi_pingpong -p dpdk -e msg`

### CLIENT
server command + {SERVER ADDRESS}

## Fabtests
### functional/fi_msg
