FROM alpine
ADD . .
# RUN chmod +x /xxx/xxxx
RUN apk update
RUN apk add wget
RUN chmod +x /start.sh
EXPOSE 443
ENTRYPOINT [ "/start.sh" ]
