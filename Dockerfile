FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt ./
RUN python -m pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python -m Browser.install

COPY . .

EXPOSE 3000

CMD ["python", "start_banking_demo.py"]
