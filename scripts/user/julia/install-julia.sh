#!/bin/sh

echo '\n\e[1;36mInstalling Julia:\e[0m'

echo '\e[1;36m> Downloading the tarball...\e[0m'
wget https://julialang-s3.julialang.org/bin/linux/x64/1.5/julia-1.5.0-linux-x86_64.tar.gz -P /other/julia >/dev/null 2>&1

echo '\e[1;36m> Extracting the tarball...\e[0m'
tar -xf /other/julia/julia*.tar.gz -C /other/julia --strip-components 1

echo '\e[1;36m> Deleting the tarball...\e[0m'
rm /other/julia/julia*.tar.gz

echo '\e[1;36m> Installing `IJulia`...\e[0m\n'
julia -e 'using Pkg; Pkg.add("IJulia"); using IJulia' >/dev/null 2>&1