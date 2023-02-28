FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y apache2
# Tạo thư mục làm việc cho ứng dụng của bạn
WORKDIR /var/www/html
# Mở cổng 80 để Apache2 có thể lắng nghe các kết nối HTTPs
EXPOSE 80

ADD ./portforlio /var/www/html/

CMD ["apache2ctl", "-D", "FOREGROUND"]

