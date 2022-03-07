#!/usr/bin/env bash


user_id=$(id -un)

sudo cp /var/lib/AccountsService/users/gdm ./ -a
sudo cp /var/lib/AccountsService/users/$user_id ./ -a


sudo chown $user_id.$user_id ./gdm
sudo chown $user_id.$user_id ./$user_id

sudo chmod 644 ./gdm
sudo chmod 644 ./$user_id
