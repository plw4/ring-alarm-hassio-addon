ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8
RUN apk add --no-cache nodejs-npm git 
RUN git clone  https://github.com/plw4/ring-alarm-mqtt.git
COPY run.sh /
RUN chmod +x run.sh

CMD [ "/run.sh" ]
