[![Docker Repository on Quay](https://quay.io/repository/realeyes/pm2offlinepackager/status "Docker Repository on Quay")](https://quay.io/repository/realeyes/pm2offlinepackager)

# PM2OfflinePackager
A Docker Container to package up PM2 from the public registry for offline install

# How to use
Make sure there's a createdpackages folder in the location you run this from, then give it a run:

docker run -it -v ./createdpackages:/mnt/createdpackages ironsalsa/pm2offlinepackager

After the container is started and you are at the prompt, cd to /mnt/createdpackages and run npm-bundle pm2 to create an offline bundle for PM2 that can be installed offline. It will drop it in the volume once complete, and you can install it on an offline system with the npm install ,name-of-tarball-exported>

You could set this an an ENTRYPOINT, but I haven't been successful with this myself. Since I'm triggering this from a Jenkins Pipeline and passing in npm-bundle pm2 after the container is up, it doesn't make a difference for now.
