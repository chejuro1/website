FROM hshar/webapp
RUN rm -rf /var/www/html/
ADD  . /var/www/html/
ENV myName="chejuro"
ENTRYPOINT apache2ctl -D FOREGROUND
RUN mkdir /myvol
RUN echo "hello world" > /myvol/greeting
VOLUME /myvol
WORKDIR /workdir

