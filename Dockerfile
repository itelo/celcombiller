FROM python:2-onbuild
RUN pip install --allow-external pyst --allow-unverified pyst -r requirements.txt
ADD . /home
WORKDIR /home
CMD python2.7 app.py