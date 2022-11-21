FROM ruby:3.1.2-alpine
RUN apk add --update bash build-base libffi-dev libcurl && rm -rf /var/cache/apk/*
RUN gem install typhoeus nokogiri
USER root
WORKDIR /prompt
COPY . /prompt/
RUN cd /prompt && chmod +x fetch
CMD ["bash"]
