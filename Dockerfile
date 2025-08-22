# Simple Dockerfile for Streamlit app
FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY app.py README.md ./
EXPOSE 8501
ENV STREAMLIT_SERVER_PORT=8501     STREAMLIT_SERVER_HEADLESS=true     PYTHONUNBUFFERED=1
CMD ["streamlit", "run", "app.py"]
