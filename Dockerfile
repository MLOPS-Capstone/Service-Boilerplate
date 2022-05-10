FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir --upgrade -r requirements.txt

COPY ./src ./src
COPY ./start.sh .

EXPOSE 8000

CMD ["./start.sh"]
