# Multi-stage build

FROM node:18 AS build
WORKDIR /app
COPY . .
RUN npm install

FROM node:18
COPY --from=build /app /app
CMD ["node", "app.js"]
