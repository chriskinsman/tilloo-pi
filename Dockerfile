#
# ---- Base Node ----
# latest is a multi-arch manifest
FROM tilloo/k8s:latest
COPY config.json /tilloo/config.json
