FROM python:2-onbuild

MAINTAINER Itelo Filho (ixfh), itelofilho@gmail.com

# Install celcombiller packages
RUN pip install --allow-external pyst --allow-unverified pyst -r requirements.txt

WORKDIR /home/celcombiller

# Make everything available for start
ADD . /home/celcombiller

# Port 5000 for server
EXPOSE 5000

# Add users to test api
RUN python2.7 adduser.py

# RUN api rest
CMD python2.7 app.py
