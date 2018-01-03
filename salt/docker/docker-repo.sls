# Add Docker-Repository and perform yum update

add-docker-ce-repo:
  pkgrepo.managed:
  - name: docker-ce
  - humanname: Docker CE Stable
  - baseurl: https://download.docker.com/linux/centos/7/{{ salt['grains.get']('osarch')}}/stable
  - gpgcheck: 1
  - gpgkey: https://download.docker.com/linux/centos/gpg
  - refresh_db: True