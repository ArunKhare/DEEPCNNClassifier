FROM python:3.8-slim
RUN apt update -y && apt
install awscli -y
WORKDIR /app
COPY ./prediction_service .
RUN pip install -r requirements.txt
CMD ["streamlit", "run", "app.py"]
