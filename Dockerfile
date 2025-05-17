FROM python:3.11-slim

RUN apt update && apt upgrade -y && apt install git -y

COPY requirements.txt /requirements.txt
RUN pip3 install -U pip && pip3 install -r /requirements.txt

RUN mkdir /EvaMaria
WORKDIR /EvaMaria

COPY . /EvaMaria

RUN chmod +x /start.sh
CMD ["/bin/bash", "/start.sh"]
