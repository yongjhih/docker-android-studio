# android studio docker

[![Docker Pulls](https://img.shields.io/docker/pulls/yongjhih/android-studio.svg)](https://hub.docker.com/r/yongjhih/android-studio/)
[![Docker Stars](https://img.shields.io/docker/stars/yongjhih/android-studio.svg)](https://hub.docker.com/r/yongjhih/android-studio/)
[![](https://badge.imagelayers.io/yongjhih/android-studio:latest.svg)](https://imagelayers.io/?images=yongjhih/android-studio:latest)
[![Join the chat at https://gitter.im/yongjhih/docker-android-studio](https://badges.gitter.im/yongjhih/docker-android-studio.svg)](https://gitter.im/yongjhih/docker-android-studio?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

![](art/docker-android-studio.png)

## Usage

```
$ curl -L https://github.com/yongjhih/docker-android-studio/raw/master/docker-android-studio > ~/bin/android-studio
$ chmod a+x ~/bin/android-studio

$ android-studio
```

## Usage with docker-compose

Beta:

```
wget https://github.com/yongjhih/docker-android-studio/raw/master/docker-compose.yml
docker-compose up android-studio-beta
```

Stable:

```
wget https://github.com/yongjhih/docker-android-studio/raw/master/docker-compose.yml
docker-compose up android-studio-stable
```

## Usage without docker-compose

Beta (2.0-beta-2):

```sh
docker run -it \
  --privileged \
  -v $HOME/AndroidStudioProjects:/home/ubuntu/AndroidStudioProjects \
  -v $HOME/.android:/home/ubuntu/.android \
  -v $HOME/.AndroidStudioPreview2.0:/home/ubuntu/.AndroidStudioPreview2.0 \
  -v /dev/bus/usb:/dev/bus/usb \
  -v /dev/kvm:/dev/kvm \
  -v $ANDROID_HOME:/opt/android-sdk \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v $XAUTHORITY:/home/ubuntu/.Xauthority \
  --net host \
  yongjhih/android-studio
```

Stable (1.5.1):

```sh
docker run -it \
  --privileged \
  -v $HOME/AndroidStudioProjects:/home/ubuntu/AndroidStudioProjects \
  -v $HOME/.android:/home/ubuntu/.android \
  -v $HOME/.AndroidStudio1.5:/home/ubuntu/.AndroidStudio1.5 \
  -v /dev/bus/usb:/dev/bus/usb \
  -v /dev/kvm:/dev/kvm \
  -v $ANDROID_HOME:/opt/android-sdk \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v $XAUTHORITY:/home/ubuntu/.Xauthority \
  --net host \
  yongjhih/android-studio:1.5.1
```

## Ref.

* Download: [2.0 beta 2] (https://dl.google.com/dl/android/studio/ide-zips/2.0.0.11/android-studio-ide-143.2586769-linux.zip)
* http://tools.android.com/download/studio
* http://tools.android.com/download/studio/stable
* http://tools.android.com/download/studio/beta
* http://tools.android.com/download/studio/canary

## LICENSE

Apache 2.0, 2015 8tory Inc.
