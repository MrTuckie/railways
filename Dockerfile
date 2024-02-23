# Este dockerfile é feito para rodar com o django e com o celery
# Obviamente, não é a melhor opção, pois o requirements.txt tem tudo
# Alé, de copiar os arquivos inteiros para aí
FROM python:3.10.13-bookworm
ENV PIP_DISABLE_PIP_VERSION_CHECK 1 
ENV PYTHONDONTWRITEBYTECODE 1 
ENV PYTHONUNBUFFERED 1
WORKDIR /app
COPY ./requirements.txt . 
RUN pip install -r requirements.txt
COPY . .
