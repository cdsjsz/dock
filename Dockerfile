FROM alpine
ADD . .
RUN chmod +x /xxx/xxxx
RUN chmod +x /start.sh
EXPOSE 443
ENTRYPOINT [ "/start.sh" ]
