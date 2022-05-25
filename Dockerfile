FROM quay.io/skopeo/stable
ENV http_proxy=<Your corporate proxy>
ENV https_proxy=<Your corporate proxy>
RUN yum install perl-Digest-SHA -y
COPY script.sh /tmp
CMD ["/bin/sh", "/tmp/script.sh"]
