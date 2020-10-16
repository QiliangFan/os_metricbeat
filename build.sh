#!/bin/bash

sudo docker image build -t fanqiliang/os_metricbeat:latest . &&
sudo docker container run -itd -v $($(cd `dirname $0`);pwd)/logs/:/metricbeat/logs --name metricbeat fanqiliang/os_metricbeat /bin/bash &&
sudo docker start metricbeat
