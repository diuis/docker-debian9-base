FROM debian:9-slim
LABEL mantainer "diuis"

RUN groupadd -g 999 appuser && useradd -r -u 999 -g appuser appuser && \
    echo 'debconf debconf/frontend select Noninteractive' | debconf-set-selections
