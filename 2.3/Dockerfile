FROM yongjhih/android:jdk8-all

RUN dpkg --add-architecture i386 && \
    apt-get update && apt-get install -y --no-install-recommends sudo lib32z1 lib32ncurses5 lib32stdc++6 lib32z1 lib32ncurses5 lib32stdc++6 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV ANDROID_STUDIO /opt/android-studio

ENV ANDROID_STUDIO_VERSION 2.3.3.0
ENV ANDROID_STUDIO_URL https://dl.google.com/dl/android/studio/ide-zips/${ANDROID_STUDIO_VERSION}/android-studio-ide-162.4069837-linux.zip
# ENV ANDROID_STUDIO_URL https://dl.google.com/dl/android/studio/ide-zips/2.3.3.0/android-studio-ide-162.4069837-linux.zip
ADD $ANDROID_STUDIO_URL /tmp/tmp.zip

RUN unzip /tmp/tmp.zip -d /opt && rm /tmp/tmp.zip

ENV USER ubuntu
ENV UID 1000

RUN useradd -m -u $UID $USER && \
    echo "$USER ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers && \
    chmod -R a+w ${ANDROID_HOME}

#USER $USER

ADD docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

#CMD ["${ANDROID_STUDIO}/bin/studio.sh"] # will not do variable substitution
CMD ["/opt/android-studio/bin/studio.sh"]
