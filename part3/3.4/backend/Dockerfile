FROM ubuntu:16.04
WORKDIR /backend_app
RUN apt-get update && apt-get upgrade -y \
&& apt-get install curl -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
COPY backend-example-docker /backend_app
RUN apt-get install -y nodejs \
    && npm install  \
    && useradd -m backend \
    && chown backend -R /backend_app

ENV FRONT_URL="http://localhost:5000" 
EXPOSE 8000
CMD npm start
