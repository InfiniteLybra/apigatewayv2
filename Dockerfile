FROM python3.13-alpine

WORKDIR /usr/src/app

COPY requirements.txt .

RUN pip install -r requirements.txt

RUN pip install pymysql

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
