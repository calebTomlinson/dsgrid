from jpetazzo/dind
RUN apt-get update
RUN apt-get install -y -q python2.7 python2.7-dev gcc openssl
RUN apt-get install -y -q curl wget
RUN curl https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py | python
ADD ./ /application
WORKDIR /application
RUN ["python", "setup.py", "install"]
CMD ["dsgrid"]
