FROM alpine
ADD . .
RUN chmod +x /xxx/xxxx
RUN chmod +x /start.sh
EXPOSE 80
CMD /start.sh
