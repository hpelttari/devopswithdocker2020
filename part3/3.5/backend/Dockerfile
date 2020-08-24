FROM node
WORKDIR /backend_app
COPY backend-example-docker /backend_app
RUN npm install \
    && chown node -R /backend_app

USER node

ENV FRONT_URL="http://localhost:5000" 
EXPOSE 8000
CMD npm start
