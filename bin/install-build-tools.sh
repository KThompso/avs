set -x
set -e

if [ ! -e build_tools ]; then
    if [ ! $(command -v wget) ]; then
        apt-get update && apt-get -y install wget
    fi

    if [ ! $(command -v unzip) ]; then
        apt-get update && apt-get -y install unzip 
    fi

    mkdir build_tools
    wget 'https://force-cli.heroku.com/releases/v0.24.3/linux-amd64/force'
    chmod +x ./force
    mv force build_tools/force

    wget 'https://github.com/pmd/pmd/releases/download/pmd_releases%2F6.7.0/pmd-bin-6.7.0.zip'
    unzip 'pmd-bin-6.7.0.zip' && rm 'pmd-bin-6.7.0.zip'
    mv 'pmd-bin-6.7.0' build_tools/pmd
fi
