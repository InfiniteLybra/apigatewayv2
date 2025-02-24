FROM python3

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

RUN pip install pymysql

COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
