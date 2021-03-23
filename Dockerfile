

FROM ubuntu:18.04

MAINTAINER Tyler Linder


ENV AWS_CONFIG_FILE=/config
ENV AWS_SHARED_CREDENTIALS_FILE=/credentials


RUN apt-get update
RUN apt-get install -y vim
#RUN apt-get update
#RUN apt-get install -y sextractor
RUN apt-get update
RUN apt-get install -y python3.7
#RUN apt-get update
#RUN apt-get install -y bzip2
#RUN apt-get update
#RUN apt-get install -y astrometry.net
RUN apt-get update
RUN apt-get install -y python3-pip 



RUN echo 'alias python="/usr/bin/python3.7"' >> /root/.bashrc
RUN echo 'alias pip="/usr/bin/pip3"' >> /root/.bashrc

RUN mkdir dap
RUN mkdir dap_data
#RUN python3.7 -m pip install astropy
RUN python3.7 -m pip install requests
#RUN python3.7 -m pip install astroquery
#RUN python3.7 -m pip install mysql-connector-python
#RUN python3.7 -m pip install docker
#RUN python3.7 -m pip install boto3
#RUN python3.7 -m pip install awscli

COPY pythonServer.py /pythonServer.py
COPY bashLoop.sh /bashLoop.sh

RUN ["chmod", "+x", "/bashLoop.sh"] #change permission of file
ENTRYPOINT ["sh", "/bashLoop.sh"]



