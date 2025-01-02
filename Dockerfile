FROM python:3.11-alpine

ADD calculator.py .

RUN python3 calculator.py
