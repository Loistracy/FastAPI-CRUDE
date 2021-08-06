#!/bin/bash
#requires to be run in super user mode
#to run from same directory eg su ./serversetup.sh 
echo "copying service file to /etc/systemd/system"
cp gleaveapi.service /etc/systemd/system
echo "copy complete"
echo "starting the service"
systemctl start gleaveapi
echo "started gleave api service"
echo "enabling gleave api service to run on startup"
systemctl enable gleaveapi
echo "enabled gleave api service"
echo "reloading systemctl daemons"
systemctl daemon-reload
echo "reloaded systemctl daemon"
echo "printing gleave api status"
systemctl status gleaveapi
echo "succesfully started th server"