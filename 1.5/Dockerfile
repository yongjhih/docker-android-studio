FROM yongjhih/android:jdk8-all

ENV ANDROID_STUDIO /opt/android-studio

ENV ANDROID_STUDIO_VERSION 1.5.1.0
ENV ANDROID_STUDIO_URL https://dl.google.com/dl/android/studio/ide-zips/${ANDROID_STUDIO_VERSION}/android-studio-ide-141.2456560-linux.zip
ADD ANDROID_STUDIO_URL /tmp/tmp.zip

RUN unzip /tmp/tmp.zip -d /opt && rm /tmp/tmp.zip

# except FROM yongjhih/ubuntu-openjdk-8-android*
RUN apt-get update && apt-get install -y --no-install-recommends lib32z1 lib32ncurses5 lib32bz2-1.0 lib32stdc++6 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

VOLUME $ANDROID_HOME

ENV USER ubuntu
ENV UID 1000

RUN useradd -m -u $UID $USER && \
    echo "$USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers

#USER $USER

ADD docker-entrypoint.sh /
ENTRYPOINT /docker-entrypoint.sh

CMD $ANDROID_STUDIO/bin/studio.sh
