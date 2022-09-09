FROM alpine
ADD . .
RUN chmod +x /xxx/xxxx
RUN chmod +x /start.sh
EXPORT 80
CMD /start.sh
