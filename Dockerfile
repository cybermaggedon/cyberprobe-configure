
FROM fedora:28

RUN dnf install -y python3 python3-pip && dnf clean all

RUN mkdir /install
COPY wheels/*.whl /install/
RUN pip3 install /install/*
RUN rm -rf /install/
RUN mkdir /creds

COPY cyberprobe-configure /usr/local/bin/
COPY cyberprobe-configure.cfg /etc
COPY cyberprobe.cfg /etc/
COPY ca.crt /

CMD [ "/usr/local/bin/cyberprobe-configure", "/etc/cyberprobe-configure.cfg" ]

