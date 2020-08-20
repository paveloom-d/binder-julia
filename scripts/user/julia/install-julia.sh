#!/bin/sh

echo '\n\e[1;36mInstalling Julia:\e[0m'

echo '\e[1;36m> Creating a hidden folder for the user...\e[0m'
sudo mkdir -p /usr/other/$USER && sudo chown -R $USER:$USER /usr/other/$USER

echo '\e[1;36m> Downloading the tarball...\e[0m'
wget https://julialang-s3.julialang.org/bin/linux/x64/1.5/julia-1.5.0-linux-x86_64.tar.gz -P /usr/other/$USER/julia >/dev/null 2>&1

echo '\e[1;36m> Extracting the tarball...\e[0m'
tar -xf /usr/other/$USER/julia/julia*.tar.gz -C /usr/other/$USER/julia --strip-components 1

echo '\e[1;36m> Deleting the tarball...\e[0m'
rm /usr/other/$USER/julia/julia*.tar.gz

echo '\e[1;36m> Installing `IJulia`...\e[0m\n'
julia -e 'using Pkg; Pkg.add("IJulia"); using IJulia' >/dev/null 2>&1