#!/bin/bash

# SSH into server using private key ~/.ssh/school with user ubuntu
ssh -i ~/.ssh/school ubuntu@8.8.8.8

# Exit after connecting (this line will execute after the SSH session ends)
echo "Connection to 8.8.8.8 closed."
