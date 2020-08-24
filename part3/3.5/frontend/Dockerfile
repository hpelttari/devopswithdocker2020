FROM node
WORKDIR /frontend_app
COPY frontend-example-docker /frontend_app
RUN  npm install \
    && chown node -R /frontend_app

USER node

ENV API_URL="http://localhost:8000"
EXPOSE 5000
CMD npm start
