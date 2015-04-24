#!/bin/bash
echo "copying public key to $1 and adding it to ~/ssh/authorized_keys"
cat ~/.ssh/id_rsa.pub | ssh $1 “mkdir ~/.ssh; cat >> ~/.ssh/authorized_keys” 
