#! /bin/bash
# This bundles up PM2 for install on an offline system - see https://stackoverflow.com/questions/41156556/what-exact-command-is-to-install-pm2-on-offline-rhel 
# Also see https://www.npmjs.com/package/npm-bundle 

cd /mnt/createdpackages
npm-bundle pm2
ls .

# Keep the container running
exec "$@"