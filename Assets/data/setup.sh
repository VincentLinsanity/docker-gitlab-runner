 #!/bin/bash
 
 gitlab-ci-multi-runner register -n \
     -c /etc/gitlab-runner/config.toml  \
     -u http://gitlab.com/ci \
     -r 941e1c8ded70ff16191c1eac863a6b \
     --name "runner" \
     --executor docker \
     --docker-image "node:4.5.0"