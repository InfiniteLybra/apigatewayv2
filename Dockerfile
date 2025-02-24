FROM python:3.13

WORKDIR /usr/src/app

COPY requirements.txt .

RUN pip install -r requirements.txt

RUN pip install pymysql

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
