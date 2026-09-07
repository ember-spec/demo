FROM python:3.10-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .
EXPOSE 8000
#必须监听0.0.0.0，不能127.0.0.1
CMD ["uvicorn","main:app","--host","0.0.0.0","--port","8000"]