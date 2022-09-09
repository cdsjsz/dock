FROM alpine
ADD . .
RUN chmod +x /xxx/xxxx
RUN chmod +x /start.sh
EXPOSE 443
CMD /start.sh
