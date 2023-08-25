FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]

# FROM ubuntu

# RUN apt update
# RUN apt install python3-pip -y
# RUN pip3 install Flask

# WORKDIR /app
# COPY . .

# CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
