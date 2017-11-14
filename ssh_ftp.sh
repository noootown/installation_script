#!/bin/bash

sudo apt-get install ssh
sudo apt-get install vsftpd
sudo cp vsftpd.conf /etc/
sudo /etc/init.d/vsftpd restart
