FROM openjdk:8-jre-alpine

ENV JAVA_APP_JAR os3-springboot-0.1.0.jar

EXPOSE 8080

ADD target/$JAVA_APP_JAR /app/
RUN chmod 777 /app/

WORKDIR /app/
ENTRYPOINT ["sh", "-c"]
CMD ["exec java -jar $JAVA_APP_JAR"]