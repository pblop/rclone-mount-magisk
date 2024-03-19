tar xvf "$1"
rm debian-binary control.tar.xz

tar xvf data.tar.xz
rm data.tar.xz

cp ./data/data/com.termux/files/usr/bin/inotifywait ./inotifywait
rm -rf ./data
