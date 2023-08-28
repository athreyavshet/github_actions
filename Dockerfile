FROM ubuntu

<<<<<<< Updated upstream
RUN apt update
RUN apt install python3-pip -y
RUN pip3 install Flask
=======
WORKDIR /app

EXPOSE 5000

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
>>>>>>> Stashed changes

WORKDIR /app
COPY . .

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]
