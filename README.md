# PM2OfflinePackager
A Docker Container to package up PM2 from the public registry for offline install

# How to use
Make sure there's a createdpackages folder in the location you run this from, then give it a run:

docker run -d -v ./createdpackages:/mnt/createdpackages ironsalsa/pm2offlinepackager

After the image is up, cd to /mnt/createdpackages and run /tmp/bundleup.sh to create an offline bundle for PM2 that can be installed offline. It will drop it in the volume once complete, and you can do whatever you like with it from there.

I may later set the ENTRYPOINT to do this for you.
