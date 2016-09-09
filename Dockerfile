FROM abaez/luarocks:lua5.1

RUN apk add --update p7zip py-sphinx 
RUN luarocks install penlight
VOLUME /opt/svof/
WORKDIR /opt/svof/
ENTRYPOINT lua /opt/svof/generate.lua -o monk
