 [![](https://badge.imagelayers.io/yongjhih/android-studio:latest.svg)](https://imagelayers.io/?images=yongjhih/android-studio:latest)

## Usage

```sh
docker run -it -v $ANDROID_HOME:/opt/android-sdk -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $XAUTHORITY:/home/ubuntu/.Xauthority --net=host yongjhih/android-studio
```

Include ~/.android:

```sh
docker run -it -v ~/.android:/home/ubuntu/.android \
  -v $ANDROID_HOME:/opt/android-sdk -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $XAUTHORITY:/home/ubuntu/.Xauthority --net=host yongjhih/android-studio
```

Include ~/AndroidStudioProjects:

```sh
docker run -it -v ~/AndroidStudioProjects:/home/ubuntu/AndroidStudioProjects \
  -v ~/.android:/home/ubuntu/.android \
  -v $ANDROID_HOME:/opt/android-sdk -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix -v $XAUTHORITY:/home/ubuntu/.Xauthority --net=host yongjhih/android-studio
```

## Usage with docker-compose

```
docker-compose up
```


## Ref.

* Download: [2.0 beta 2] (https://dl.google.com/dl/android/studio/ide-zips/2.0.0.11/android-studio-ide-143.2586769-linux.zip)
* http://tools.android.com/download/studio
* http://tools.android.com/download/studio/stable
* http://tools.android.com/download/studio/beta
