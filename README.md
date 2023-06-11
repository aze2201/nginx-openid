# nginx-openid

1. Define variables in `docker-compose.yml` file
```
      - redirect_uri_path=/redirect_uri
      - accept_none_alg=true
      - discovery=<add discovery url from App Registration endpoint>
      - client_id=<add clientID from App Registration>
      - client_secret=<copy secret from App Registration>
      - redirect_uri_scheme=https
      - logout_path=/logout
      - redirect_after_logout_uri=/
      - redirect_after_logout_with_id_token_hint=false
```
2. Start application

`docker compose up -d`
