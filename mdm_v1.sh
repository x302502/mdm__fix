csrutil authenticated-root disable;
diskutil mount /Volumes/Macintosh\ SSD;
 Mount -uv /Volumes/Macintosh\ SSD;	
 cd /Volumes/Macintosh\ SSD/System/Library/LaunchAgents;
mkdir tmp;
mv com.apple.ManagedClientAgent.* tmp/;
mv com.apple.mdmclient.* tmp/;
cd ../LaunchDaemons;
mkdir tmp;
mv com.apple.ManagedClient.* tmp/;
mv com.apple.mdmclient.* tmp/;
bless --folder /Volumes/Macintosh\ SSD/System/Library/CoreServices --bootefi --create-snapshot;
Echo "Copyright Maclife.vn nhe"
