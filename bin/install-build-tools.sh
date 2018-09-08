set -x
set -e

if [ ! -e build_tools ]; then
    if [ ! $(command -v curl) ]; then
        apt-get update && apt-get -y install curl
    fi

    if [ ! $(command -v unzip) ]; then
        apt-get update && apt-get -y install unzip 
    fi

    mkdir build_tools
    curl -O 'https://force-cli.heroku.com/releases/v0.24.3/linux-amd64/force'
    chmod +x ./force
    mv force build_tools/force

    curl -O 'https://github.com/pmd/pmd/releases/download/pmd_releases%2F6.7.0/pmd-bin-6.7.0.zip'
    unzip 'pmd-bin-6.7.0.zip' && rm 'pmd-bin-6.7.0.zip'
    mv 'pmd-bin-6.7.0' build_tools/pmd
fi
