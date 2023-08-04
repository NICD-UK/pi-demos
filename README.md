## Raspberry Pi Demos

This repo contains a web page (`index.html`) which displays an iframe displaying content from a URL defined in `urls.json`.
A file called `name` must be preset at the root with the name of the raspberry pi.
The name of the raspberry pi is used to choose the URL from `urls.py`.

Build and tag the image:

```shell
docker build -t fmcclean/pi-demo .
```

Push the image:

```shell
docker push fmcclean/pi-demo
```

Run the image:

```shell
docker run -v $(pwd)/name:/src/name -p 8000:8000 fmcclean/pi-demo 
```

Run watchtower:

```shell
docker run -d \
--name watchtower \
-v /var/run/docker.sock:/var/run/docker.sock \
containrrr/watchtower --interval 60
