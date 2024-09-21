FROM python:3.8

WORKDIR /app

COPY . /app
RUN pip install -r requirements.txt

ENV FLASK_APP=main.py
ENV FLASK_DEBUG=1

CMD ["flask", "run", "--host=0.0.0.0"]
EXPOSE 5000
