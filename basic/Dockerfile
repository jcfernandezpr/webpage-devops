# Nginx running on AlpineOS
FROM nginx:alpine

# Deploy Environment
ARG stage=dev
ENV STAGE=$stage

# Copy files and test
COPY index.html /usr/share/nginx/html/index.html
COPY test/ test/

# If Prod, no test folder
RUN if [[ "$stage" == 'production' ]] ; then rm -rf test ; else : ; fi
