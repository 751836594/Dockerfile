FROM lsnp/php

LABEL maintainer="Steven Lu <751836594@qq.com>"

# Install Supervisor.
RUN apt-get update && \
  apt-get install -y supervisor vim && \
  rm -rf /var/lib/apt/lists/* && \
  sed -i 's/^\(\[supervisord\]\)$/\1\nnodaemon=true/' /etc/supervisor/supervisord.conf && \
  sed -i 's/*.conf/*.ini/g' /etc/supervisor/supervisord.conf

# Define mountable directories.
VOLUME ["/etc/supervisor/conf.d"]

# Define working directory.
WORKDIR /var/www/html

# Define default command.
CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]

