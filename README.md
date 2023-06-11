# NGINX-OpenID
(OpenID Connect is an identity layer built on top of the OAuth 2.0 protocol.)
## Description
This application uses HTTP Proxy with OpenID Authentication. Please follow official OpenID authentication requirement and do necessary changes.

## Tested
* Azure AD
* Keycloak

## Steps

1. Define variables in `docker-compose.yml` file
```
      - redirect_uri_path=/redirect_uri
      - accept_none_alg=true
      - discovery=<add discovery url from App Registration endpoint ... .well-known/openid-configuration >
      - client_id=<add clientID from App Registration>
      - client_secret=<copy secret from App Registration>
      - redirect_uri_scheme=https
      - logout_path=/logout
      - redirect_after_logout_uri=/
      - redirect_after_logout_with_id_token_hint=false
```
3. Update SSL certificate path in `nginx/conf.d/dyno-lua.conf` file

  
  ``` 
  ssl_certificate        /etc/letsencrypt/live/domain.com/fullchain.pem; 
  ssl_certificate_key    /etc/letsencrypt/live/domain.com/privkey.pem;
  ```

2. Start application

`docker compose up -d`
