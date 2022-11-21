#FROM python:3

#WORKDIR /usr/src/app
#RUN mkdir -p /usr/src/app/django3
#COPY requirements.txt /usr/src/app/django3
#copy . /usr/src/app/django3
#RUN pip install --no-cache-dir -r /usr/src/app/django3/requirements.txt
#RUN python3 -m venv /opt/venv
#RUN virtualenv venv
#RUN source venv/bin/activate
#COPY main.py .
#EXPOSE 8085
#CMD ["virtualenv venv"]
#CMD ["source venv/bin/activate"]
#ENTRYPOINT ["python"]
#CMD ["main.py"]
#CMD ["/django3/manage.py runserver"]


FROM python:3.8
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN python -m pip install -r requirements.txt
COPY . /code/