#!/bin/bash

Tools=("Shellscript" "Ansible" "Terraform" "Git" "Jenkins" "Docker" "Kubernetes")

#here the the size of arry is 7.
#and index of arry is 0 to 6

echo "Print the first Tool in DevOps:: ${Tools[0]}"
echo "Print the second Tool in DevOps:: ${Tools[1]}"
echo "Print the third Tool in DevOps:: ${Tools[2]}"
echo "Print the all Tools in DevOps:: ${Tools[@]}"