ARG ALPINE_IMAGE=alpine

FROM "${ALPINE_IMAGE}"

RUN apk --no-cache add openvpn

CMD [ "openvpn", "--config", "/openvpn.conf" ]
