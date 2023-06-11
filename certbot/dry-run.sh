#!/bin/bash
pushd `dirname $0`
sudo rm -f /var/log/letsencrypt/letsencrypt.log
../../certbot-dns-zoneedit/dev-install.sh
./dev-install.sh
../acme/dev-install.sh
../../certbot-dns-zoneedit/dry-run.sh
popd
