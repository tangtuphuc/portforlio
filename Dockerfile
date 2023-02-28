FROM ubuntu:lasted 

RUN sudo apt update
RUN sudo apt install apache2
RUN sudo ufw allow 'Apache'
# Cài đặt curl
RUN apt-get update && apt-get install -y curl
# Tải ngrok và giải nén
RUN curl -L https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip -o ngrok.zip
RUN unzip ngrok.zip && rm ngrok.zip
# Tạo thư mục làm việc cho ứng dụng của bạn
WORKDIR /var/www/html
# Mở cổng 80 để Apache2 có thể lắng nghe các kết nối HTTP
EXPOSE 80

ADD ./one-page-website-html-css-project /var/www/html/

CMD ["apache2ctl","./ngrok http 80", "-D", "FOREGROUND"]