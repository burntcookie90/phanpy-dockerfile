FROM node:22-alpine3.18 as build

RUN apk add --no-cache git
WORKDIR /app
RUN git clone --depth 1 https://github.com/cheeaun/phanpy.git 
RUN cd phanpy && npm install && npm run build

FROM nginx:1.25.3-alpine
LABEL maintainer="Vishnu Rajeevan <docker@vishnu.email>"

WORKDIR /app
COPY --from=build /app/phanpy/dist /usr/share/nginx/html
