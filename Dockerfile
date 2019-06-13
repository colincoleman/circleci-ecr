FROM docker:18.09.6 as resource
RUN apk add --update --no-cache \
    py-pip
RUN pip install \
    awscli

FROM resource
ENTRYPOINT [ "aws" ]
CMD [ "--version" ]