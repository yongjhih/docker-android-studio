FROM yongjhih/ubuntu-openjdk-8
#FROM yongjhih/ubuntu-openjdk-8-android

ENV ANDROID_HOME /opt/android-sdk
ENV ANDROID_STUDIO /opt/android-studio

ENV ANDROID_STUDIO_ZIP https://dl.google.com/dl/android/studio/ide-zips/1.5.1.0/android-studio-ide-141.2456560-linux.zip
#ENV ANDROID_STUDIO_ZIP https://dl.google.com/dl/android/studio/ide-zips/2.0.0.11/android-studio-ide-143.2586769-linux.zip

RUN wget $ANDROID_STUDIO_ZIP -O tmp.zip && \
    unzip tmp.zip -d /opt && \
    rm tmp.zip

# except FROM yongjhih/ubuntu-openjdk-8-android*
RUN apt-get update && apt-get install -y --no-install-recommends lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

VOLUME $ANDROID_HOME

ENV USER ubuntu
ENV UID 1000

RUN useradd -m -u $UID $USER && \
    echo "$USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

USER $USER

CMD $ANDROID_STUDIO/bin/studio.sh
