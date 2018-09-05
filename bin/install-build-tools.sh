set -x
set -e

if [ ! -e build_tools ]; then
    if [ ! $(command -v curl) ]; then
        apt-get update && apt-get -y install curl
    fi
    mkdir build_tools
    curl -O 'https://force-cli.heroku.com/releases/v0.24.3/linux-amd64/force'
    chmod +x ./force
    mv force build_tools/force
fi
