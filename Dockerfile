FROM congame-source:latest AS build

WORKDIR /src/congame
RUN raco koyo dist ++lang north


FROM ghcr.io/marckaufmann/congame-deploy:latest AS deploy

COPY --from=build /src/congame/dist /opt/congame
COPY --from=build /src/congame/bin/run-congame.sh /opt/congame/bin/run-congame.sh
CMD ["dumb-init", "/opt/congame/bin/run-congame.sh"]
