FROM ruby:2.6-alpine

# https://github.com/k1LoW/awspec/releases
ENV AWSPEC_VER 1.9.0

RUN set -x \
  && apk upgrade --no-cache \
  && gem install --no-document awspec -v $AWSPEC_VER \
  && mkdir -p /awspec

WORKDIR /awspec
ENTRYPOINT ["rspec"]
CMD []
