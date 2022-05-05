FROM openjdk

WORKDIR /opt/minecraft

COPY server.jar .
COPY server.properties .

RUN echo "eula=true" > eula.txt

EXPOSE 25565

CMD ["/bin/sh", "-l", "-c", "java -Xmx1024M -Xms1024M -jar /opt/minecraft/server.jar"]
