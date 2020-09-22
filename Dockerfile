FROM alpine:3.12

# Improve alpine container
RUN apk add --no-cache libc6-compat libstdc++

# Args for Hugo Step
ARG HUGO_ARCH="64bit"
ARG HUGO_VERSION="0.75.1"

# Install Hugo by downloading binaries from release
RUN wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_Linux-${HUGO_ARCH}.tar.gz \
    https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_checksums.txt &&\
    # Verify checksums
    grep hugo_extended_${HUGO_VERSION}_Linux-${HUGO_ARCH}.tar.gz hugo_${HUGO_VERSION}_checksums.txt | sha256sum -c &&\
    # Prepare folders
    mkdir -p /usr/local/bin &&\
    # Unpack downloaded content
    tar -zxf hugo_extended_${HUGO_VERSION}_Linux-${HUGO_ARCH}.tar.gz -C /usr/local/bin &&\
    # Verify executable
    hugo version &&\
    # Clean the leftovers
    rm hugo_extended_${HUGO_VERSION}_Linux-${HUGO_ARCH}.tar.gz hugo_${HUGO_VERSION}_checksums.txt

WORKDIR /app
