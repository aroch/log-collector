FROM    docker.elastic.co/logstash/logstash-oss:7.1.1

RUN     rm -f /usr/share/logstash/pipeline/logstash.conf
RUN     /usr/share/logstash/bin/logstash-plugin install logstash-input-syslog & \
        /usr/share/logstash/bin/logstash-plugin install logstash-output-s3

ADD     pipeline/ /usr/share/logstash/pipeline/
ADD     config/ /usr/share/logstash/config/