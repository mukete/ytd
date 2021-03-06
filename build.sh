#Script builds the program
#!/usr/bin/env bash

p=`pwd`
for d in $(ls ./cmd); do
  echo "building cmd/$d"
  cd $p/cmd/$d
  env GOOS=linux GOARCH=386 go build
done
cd $p
