
FROM golang:1.15.6

# Add aws cli
RUN \
    apk -Uuv add groff less python py-pip git && \
    pip install awscli && \
    apk --purge -v del py-pip && \
    rm /var/cache/apk/*
