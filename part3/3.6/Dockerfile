FROM node as build-stage
WORKDIR /frontend_app

COPY frontend-example-docker /frontend_app

RUN  npm install && \
    npm run build

FROM node

WORKDIR /app

COPY --from=build-stage /frontend_app/dist /app

RUN npm install -g serve && \
    chown node -R /app

USER node

EXPOSE 5000
ENV API_URL="http://localhost:8000"

CMD ["serve", "-s", "-l", "5000"]
