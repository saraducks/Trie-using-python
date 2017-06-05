FROM python:3.5

MAINTAINER saranya vijay

RUN apt-get update -y 

RUN apt-get install -y git  python-pip python-dev build-essential

RUN pip install -r requirements.txt

EXPOSE 8500

ENTRYPOINT "python"

WORKDIR ["/dictionary_webapp"]

CMD["trieflaskapp.py", "-p:8500"]