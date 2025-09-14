FROM python:3.13-slim
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN python -m pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 80
# opções ANTES do arquivo:
CMD ["fastapi", "run", "--host", "0.0.0.0", "--port", "80", "main.py"]
