# -v /opt/android-sdk:$ANDROID_HOME

FROM yongjhih/ubuntu-openjdk-8

ENV ANDROID_HOME /opt/android-sdk
ENV ANDROID_STUDIO /opt/android-studio

RUN wget https://dl.google.com/dl/android/studio/ide-zips/2.0.0.11/android-studio-ide-143.2586769-linux.zip -O tmp.zip && \
    unzip tmp.zip -d /opt && \
    rm tmp.zip

#WORKDIR $ANDROID_STUDIO

VOLUME $ANDROID_HOME

CMD $ANDROID_STUDIO/bin/studio.sh
