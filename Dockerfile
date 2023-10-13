FROM python

RUN pip install flask
RUN pip install flask-restful
RUN pip install flask-marshmallow

COPY . /opt/api

ENTRYPOINT FLASK_APP=/opt/api/app.py flask run -h 0.0.0.0
