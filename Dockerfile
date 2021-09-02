ARG VERSION=latest
FROM nginx:${VERSION}
ARG APPTYPE
COPY static-html-directory${APPTYPE} /usr/share/nginx/html
