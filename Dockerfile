FROM python:3.8
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip &&\
    pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 5000
CMD ["python", "app.py"]