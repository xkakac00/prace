#!/bin/bash

source_dir=/home/kamil/Desktop/
remote_dir=/home/test/Desktop/

remote_host=192.168.56.103
user_name="test"

rsync -ayz -e "ssh -o StrictHostKeyCHecking=no" $source_dir $user_name@$remote_host:$remote_dir
