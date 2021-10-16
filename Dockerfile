FROM ubuntu:20.04
RUN apt-get update -y
RUN apt-get install -y python3-pip python3-dev build-essential
RUN pip install -U flask
RUN mkdir /app
WORKDIR /app
COPY . /app
ENV FLASK_APP=app.py
EXPOSE 5000
CMD ["flask", "run", "--host=0.0.0.0"]
