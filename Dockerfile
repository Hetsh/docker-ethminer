FROM library/debian:stable-20210511-slim
ARG DEBIAN_FRONTEND="noninteractive"
RUN apt update && \
    apt install --no-install-recommends --assume-yes \
        ... && \
    rm -r /var/lib/apt/lists /var/cache/apt

# App user
ARG APP_USER="ethminer"
ARG APP_UID=1377
RUN useradd --uid "$APP_UID" --user-group --no-create-home --shell /sbin/nologin "$APP_USER"

USER "$APP_USER"
ENTRYPOINT ["ethminer"]