build a package for raspbian on armhf/aarch64:

```
screen -S raspbian -L
```

```
make build
```

```
~/work/build.sh PACKAGE_NAME
```

or build it manually with (same with `build.sh`)

```
sudo apt update && sudo apt install -y time &&
sudo apt-get build-dep mpv &&
mkdir -p mpv &&
cd mpv &&
apt-get source mpv &&
cd mpv* &&
time dpkg-buildpackage -uc -us -b -j"$(nproc)"
```

the deb package was located in the folder named with it's name


incase the compiling failed, check the log with:

```
tail -f screenlog.0
```

to enable custom features:

```
DEB_BUILD_OPTIONS="--enable-mmal" ./build.sh ffmpeg
```
