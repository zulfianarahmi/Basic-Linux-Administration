#!/bin/bash

for user in dev1 dev2 devops; do
    adduser --disabled-password --gecos "" $user
    mkdir -p /home/$user/.ssh
    cp keys/$user.pub /home/$user/.ssh/authorized_keys
    chown -R $user:$user /home/$user/.ssh
    chmod 700 /home/$user/.ssh
    chmod 600 /home/$user/.ssh/authorized_keys
done

usermod -aG sudo devops

echo "User setup complete."
