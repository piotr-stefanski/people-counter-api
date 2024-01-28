#docker build --platform linux/amd64 -t people-counter-api .
#docker tag people-counter-api europe-central2-docker.pkg.dev/lillitrans/lillitrans-app/people-counter-api
#docker push europe-central2-docker.pkg.dev/lillitrans/lillitrans-app/people-counter-api
FROM python:3

WORKDIR /app

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

COPY . .

RUN pip install -r requirements.txt

CMD python main.py