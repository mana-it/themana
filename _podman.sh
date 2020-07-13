
# podman unshare chown $USER:$USER $PWD

podman run --rm \
--volume="$PWD:/srv/jekyll:Z" \
-p 127.0.0.1:4000:4000 \
-it jekyll/jekyll:stable \
jekyll serve --watch --incremental