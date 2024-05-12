FROM python:3.10

COPY requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

EXPOSE 8000

COPY config /config
COPY ./src /src
COPY app.py /
COPY .env /

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
