#!/data/data/com.termux/files/usr/bin/bash
#!/bin/bash

mine_outra() {
# Mining Algorithm
ALGO=scrypt

# Pool URL #
POOL=stratum+tcp://pool.niceminers.com:3032

# Wallet address to mine (Outracoin Core recomended)#
WALLET=your_wallet_address_goes_here

# Pool Password (Optional) #
PASS="x"

# Mining thread to use #
# To know how many your own cpu threads, #
# Type lscpu on the terminal or #
# type getconf _NPROCESSORS_ONLN #
THR=$(getconf _NPROCESSORS_ONLN)

# Miner config[Do not edit if you not understand] #

clear
./cpuminer -a $ALGO -o $POOL -u $WALLET -p $PASS -t $THR
}
mine_outra
