#!/bin/sh

echo '\n\e[1;36mInstalling Julia:\e[0m'

echo '\e[1;36m> Downloading the tarball...\e[0m'
wget https://julialang-s3.julialang.org/bin/linux/x64/1.5/julia-1.5.0-linux-x86_64.tar.gz -P ~/Other/julia >/dev/null 2>&1

echo '\e[1;36m> Extracting the tarball...\e[0m'
tar -xf ~/Other/julia/julia*.tar.gz -C ~/Other/julia --strip-components 1

echo '\e[1;36m> Deleting the tarball...\e[0m\n'
rm ~/Other/julia/julia*.tar.gz