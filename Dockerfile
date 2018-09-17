
FROM fedora:28

RUN dnf install -y python3 python3-pip && dnf clean all

RUN mkdir /install
COPY wheels/*.whl /install/
RUN pip3 install /install/*
RUN rm -rf /install/

COPY cyberprobe-configure /usr/local/bin/

CMD [ "/usr/local/bin/cyberprobe-configure" ]

