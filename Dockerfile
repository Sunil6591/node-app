FROM node:12-alpine as base
WORKDIR /app
COPY package.json package.json
COPY package-lock.json package-lock.json

FROM base as test
RUN npm ci
COPY . .
RUN ["npm", "run", "test"]

FROM base as production
RUN npm ci --production
COPY . .
CMD ["node", "src/index.js"]

EXPOSE 4000