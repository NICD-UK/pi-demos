FROM python:3.11-slim

WORKDIR /src

COPY index.html urls.json /src/

CMD ["python", "-m", "http.server", "8000"]