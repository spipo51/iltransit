FROM python:2.7

RUN apt-get update
RUN apt install unzip
RUN pip install transitfeed
RUN wget ftp://gtfs.mot.gov.il/israel-public-transportation.zip

EXPOSE 8765

CMD schedule_viewer.py israel-public-transportation.zip
