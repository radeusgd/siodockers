FROM python:2.7
MAINTAINER Radosław Waśko <wasko.radek@gmail.com>

RUN groupadd -g 999 appuser && \
    useradd -r -u 999 -g appuser appuser

RUN mkdir -p /spr4g
RUN chown appuser /spr4g
USER appuser
WORKDIR /spr4g

RUN git clone https://github.com/sio2project/sioworkers.git

USER root
RUN pip install -e sioworkers/
RUN pip install librabbitmq

# for debugging \/
RUN apt-get update
RUN apt-get -y install less vim wget netcat tcpdump

USER appuser
ENV FILETRACKER_URL=http://172.17.0.1:9999/
ENV SIOWORKERSD_HOST=172.17.0.1

#RUN dpkg  --add-architecture i386
#RUN apt-get update
#RUN apt-get install -y less netcat vim libc6:i386 libstdc++6:i386

#ADD security/limits.conf sioworkers/security/limits.conf
#ADD a.cpp a.cpp

ADD supervisor.sh /spr4g/sioworkers/supervisor.sh
ADD supervisord-conf-vars.conf /spr4g/sioworkers/config/supervisord-conf-vars.conf
ADD supervisord.conf /spr4g/sioworkers/config/supervisord.conf
ADD start.sh /spr4g/sioworkers/start.sh

WORKDIR /spr4g/sioworkers
RUN mkdir -p logs
RUN mkdir -p pidfiles

#ENTRYPOINT sio-celery-worker -c $CONC -l $MODE -Q $QUEUES "amqp://guest:guest@$OIOIOI:5672/"
#ENTRYPOINT twistd -n -l- worker -c 2 192
ENTRYPOINT ./start.sh
