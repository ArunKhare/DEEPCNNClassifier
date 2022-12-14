FROM python:3.8-slim
RUN apt update -y && apt install awscli -y
# RUN --mount=type=bind, source=/prediction_service
WORKDIR /app
COPY . /app
RUN pip install -r prediction_service/requirements.txt
CMD ["streamlit", "run", "app.py"]
