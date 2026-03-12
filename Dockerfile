FROM alpine:latest
RUN apk add --no-cache shadowsocks-libev
# Configuramos el puerto y la contraseña (Cámbiala por seguridad)
ENV SS_PORT=8080
ENV SS_PASSWORD=DueñoSupremo123
ENV SS_METHOD=aes-256-gcm
EXPOSE 8080
CMD ss-server -s 0.0.0.0 -p $SS_PORT -k $SS_PASSWORD -m $SS_METHOD -u
