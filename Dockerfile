FROM centos:centos7
COPY metricbeat-7.9.2-linux-x86_64.tar.gz "/"
RUN tar -xvzf "/metricbeat-7.9.2-linux-x86_64.tar.gz" -C / \
    && mv /metricbeat-7.9.2-linux-x86_64 /metricbeat \
    && chmod 774 /metricbeat \
    && chown -R root /metricbeat
WORKDIR /metricbeat
CMD ./metricbeat