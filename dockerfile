FROM python:3.10-slim
WORKDIR /APP
COPY . . 
RUN pip install -r requirements.txt
EXPOSE 5000
CMD ["python", "app.py"]

