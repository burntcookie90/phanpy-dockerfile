Container for https://github.com/cheeaun/phanpy

---


Example `docker-compose.yml`

```yaml
version: '3'
services:
  phanpy:
    image: ghcr.io/burntcookie90/phanpy-dockerfile:latest
    networks:
      - proxy
    labels:
      traefik.enable: true
      traefik.http.routers.phanpy.rule: Host(`phanpy.example.com`)
      traefik.http.routers.phanpy.entrypoints: websecure
      traefik.http.routers.phanpy.tls.certresolver: letsencrypttls

networks:
  proxy:
    external: true
```
