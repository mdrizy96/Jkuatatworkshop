# start with a base image
FROM ubuntu:14.04
# Install python

RUN apt-get update && \
apt-get upgrade && \
apt-get install python && \
apt-get install python-pip

# Setup framework
RUN mkdir ussd/
WORKDIR ussd/
COPY . ussd/
RUN cd ussd/ && pip install -r requirements.txt
CMD ["python","sms.py"]
