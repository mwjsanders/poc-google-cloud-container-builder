FROM pactfoundation/pact-stub-server:latest as service

COPY pacts/*  /app/pacts/

ENTRYPOINT ["/app/pact-stub-server", "-d=/app/pacts"]

EXPOSE 8080