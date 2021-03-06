FROM python:3.6-alpine3.7

RUN apk update &&\
    apk add --no-cache git build-base &&\
    git clone https://github.com/laramies/theHarvester.git
WORKDIR /theHarvester
RUN pip3 install --no-cache-dir -r requirements.txt &&\
    chmod +x *.py
#Add API keys
ARG shodan_key=1234

#ENTRYPOINT ["/usr/local/bin/python","/theHarvester/theHarvester.py"]
