FROM alpine:latest
ARG PB_VERSION=0.28.3
RUN apk add --no-cache unzip ca-certificates
ADD https://github.com/pocketbase/pocketbase/releases/download/v${PB_VERSION}/pocketbase_${PB_VERSION}_linux_amd64.zip /tmp/pb.zip
RUN unzip /tmp/pb.zip -d /pb/
EXPOSE 8080
CMD ["/pb/pocketbase", "superuser", "upsert", "gabrielpabloneto@gmail.com", "NovaSenha2025!@#"] && ["/pb/pocketbase", "serve", "--http=0.0.0.0:8080"]
