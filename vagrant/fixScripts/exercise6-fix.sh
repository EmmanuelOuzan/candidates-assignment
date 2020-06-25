#!/bin/bash
# Welcome to Emmanuel's Script!
# The script takes minimum 2 arguments and copies the files to the destination
# The script can run from each one of the servers
# Prints at the end the number of bytes transferd

# Defines the server

if [ $HOSTNAME == "server1" ]
then
    remote_server="server2"
else
    remote_server="server1"
fi

# Defines the destination folder
dest=${@: -1}

# Defines the total bytes
bytes_sum=0

# Start iteraiting on the arguments:
# if the arguemnt is not the last -> copy the path
for path in "$@"
do
  if [ $path != $dest ]
  then
      scp $path $remote_server:$dest
      bytes_sum=$(($(stat -c "%s" ${path}) + $bytes_sum))
  fi
done

# Prints the sum of bytes
echo $bytes_sum
