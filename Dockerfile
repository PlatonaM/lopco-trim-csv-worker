FROM alpine

RUN apk --no-cache add curl

RUN mkdir data_cache

WORKDIR /usr/src/converter

COPY . .

CMD [ "./trimmer.sh"]
