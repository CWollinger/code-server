FROM linuxserver/code-server:4.135.0

RUN apt-get update && apt-get -y install python3 python3-pip sshpass

RUN pip3 install --break-system-packages ansible ansible-lint openshift

RUN /app/code-server/bin/code-server --extensions-dir /config/extensions/ --install-extension golang.go
RUN /app/code-server/bin/code-server --extensions-dir /config/extensions/ --install-extension ms-azuretools.vscode-docker
RUN /app/code-server/bin/code-server --extensions-dir /config/extensions/ --install-extension ms-python.python
RUN /app/code-server/bin/code-server --extensions-dir /config/extensions/ --install-extension ms-toolsai.jupyter
RUN /app/code-server/bin/code-server --extensions-dir /config/extensions/ --install-extension redhat.vscode-yaml
RUN /app/code-server/bin/code-server --extensions-dir /config/extensions/ --install-extension redhat.vscode-xml
RUN /app/code-server/bin/code-server --extensions-dir /config/extensions/ --install-extension redhat.ansible
RUN /app/code-server/bin/code-server --extensions-dir /config/extensions/ --install-extension esbenp.prettier-vscode