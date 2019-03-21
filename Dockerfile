FROM 2dotstwice/nginx-php71-starter

MAINTAINER Kristof Coomans "kristof@2dotstwice.be"

RUN DEBIAN_FRONTEND=noninteractive apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y --fix-missing --no-install-recommends -q install \
        fontconfig wget libxext6 libxrender1 xfonts-75dpi xfonts-base && \
    rm -rf /var/lib/apt/lists/*

RUN wget -q https://downloads.wkhtmltopdf.org/0.12/0.12.5/wkhtmltox_0.12.5-1.trusty_amd64.deb && \
   dpkg -i wkhtmltox_0.12.5-1.trusty_amd64.deb && \
   rm wkhtmltox_0.12.5-1.trusty_amd64.deb
