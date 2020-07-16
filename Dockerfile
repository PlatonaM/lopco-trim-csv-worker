FROM alpine

RUN apk update && apk upgrade && apk add curl

RUN mkdir data_cache

WORKDIR /usr/src/converter

COPY . .

CMD [ "./trimmer.sh"]
