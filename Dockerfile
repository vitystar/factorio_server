FROM centos
LABEL maintainer="vitystar"
RUN mkdir /factorio; cd /factorio
COPY factorio_headless_x64_1.1.33.tar.xz /factorio
WORKDIR /factorio
RUN xz -d factorio_headless_x64_1.1.33.tar.xz && tar -xf factorio_headless_x64_1.1.33.tar && mkdir -p /factorio/factorio/saves && chmod -R 777 /factorio
COPY server-settings.json /factorio/factorio/data
COPY startup.sh /root
EXPOSE 34197/udp
ENTRYPOINT ["bash","/root/startup.sh"]
# ENTRYPOINT [ /factorio/factorio/bin/x64/factorio --create /factorio/factorio/saves/world.zip"/factorio/factorio/bin/x64/factorio", "--port 34197", "--start-server" ]
# CMD [ "/factorio/factorio/saves/world.zip", "--server-settings", "/factorio/factorio/data/server-settings.json" ]