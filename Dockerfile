# syntax=docker/dockerfile:1
FROM alpine:latest
RUN apk add --update npm
WORKDIR /share
RUN npm i puppeteer
RUN apk add chromium
RUN rm /bin/ash
RUN rm /bin/sh
# docker build -t chromium-pdf-generator-alpine .
# docker run chromium-pdf-generator-node /usr/lib/chromium/chromium --no-sandbox --headless --print-to-pdf="/share/container-printout.pdf" "/share/example.html"
# docker run -it --volume="{pathToWorkspace}/chromium-pdf-generator:/share" chromium-pdf-generator-alpine /usr/bin/node /share/test.js
