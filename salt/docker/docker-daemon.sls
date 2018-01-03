# configure the Docker-daemon

copy-tls-certs:
  file.recurse:
   - name: ~/.docker
   - source: salt://docker/files/certs
   - user: root
   - group: root

configure-docker-daemon:
  file.managed:
    - name: /etc/docker/daemon.json
    - source: salt://docker/files/daemon.json
    - makedir: True

enable-docker-daemon:
  service.running:
    - name: docker
    - enable: true