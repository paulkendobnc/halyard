FROM gcr.io/spinnaker-marketplace/halyard:1.18.0-20190321182809
USER root
RUN curl -o "awscli-bundle.zip" "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" && unzip awscli-bundle.zip && \
    ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws && chmod +x /usr/local/aws /usr/local/bin/aws

USER spinnaker
