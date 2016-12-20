FROM abaez/luarocks:lua5.1

RUN sed -i -e 's/v3\.4/edge/g' /etc/apk/repositories
RUN apk add --update p7zip 	py-imagesize py-sphinx 
RUN luarocks install penlight
VOLUME /opt/svof/
WORKDIR /opt/svof/
ENTRYPOINT ["lua", "/opt/svof/generate.lua"]
