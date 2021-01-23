FROM quay.io/surajd/fedora-networking

COPY ./signals /signals
COPY ./startup.sh /startup.sh

ENTRYPOINT /startup.sh
