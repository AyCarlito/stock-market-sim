FROM node:18.0.0-alpine as base

FROM base as builder

WORKDIR /app

COPY package*.json /app/
RUN npm install

COPY .eslintrc.js /app/
COPY .prettierrc.js /app/
COPY tsconfig.json /app/

COPY public/ /app/public
COPY src /app/src

RUN npm run build

### Multi-stage build to reduce image size
FROM base

RUN npm install -g serve@14.2.0

COPY --from=builder /app/build /app/build

USER daemon:daemon
WORKDIR /app

ENTRYPOINT ["serve"]
CMD ["-n", "-l", "3000", "-S", "-s", "build"]


