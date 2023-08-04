# bookworm gave permission denied error on time.time()
# bullseye gave fatal python error pycond_wait failed
# FROM arm32v7/python:3.11-alpine
# FROM arm32v7/httpd:2.4

FROM balenalib/raspberry-pi-python:3.11-buster

WORKDIR /src

COPY index.html urls.json /src/

CMD ["python", "-m", "http.server", "8000"]