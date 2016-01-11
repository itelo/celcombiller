FROM python:2-onbuild

MAINTAINER Itelo Filho (ixfh), itelofilho@gmail.com

# Install celcombiller packages
RUN pip install --allow-external pyst --allow-unverified pyst -r requirements.txt

WORKDIR /home

# Make everything available for start
ADD . /home

# Port 5000 for server
EXPOSE 5000

# Add user to test api
CMD python2.7 add.py

# RUN api rest
CMD python2.7 app.py
