FROM docker:19.03.3 as resource
RUN apk add --update --no-cache \
    py-pip
RUN pip install \
    awscli

FROM resource
ENTRYPOINT [ "aws" ]
CMD [ "--version" ]