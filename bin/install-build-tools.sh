set -x
set -e

if [ ! $(command -v wget) ]; then
    sudo apt-get -y install wget
fi

if [ ! $(command -v unzip) ]; then
    sudo apt-get -y install unzip 
fi

if [ ! $(command -v make) ]; then
    sudo apt-get -y install make 
fi

if [ ! -e build_tools ]; then

    mkdir build_tools
    wget 'https://force-cli.herokuapp.com/releases/v0.26.1/linux-amd64/force'
    chmod +x ./force
    mv force build_tools/force

    wget 'https://github.com/pmd/pmd/releases/download/pmd_releases%2F6.7.0/pmd-bin-6.7.0.zip'
    unzip 'pmd-bin-6.7.0.zip' && rm 'pmd-bin-6.7.0.zip'
    mv 'pmd-bin-6.7.0' build_tools/pmd
fi
