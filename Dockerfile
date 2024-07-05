FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip install -r requirements.txt

RUN apt-get update && apt-get install -y jq curl

COPY . .

RUN chmod +x bash.sh

EXPOSE 5000

CMD ["python", "app.py"]
