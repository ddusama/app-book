FROM openjdk:17-jdk-slim

COPY ./build/install/app-book/lib/app-book-1.0-SNAPSHOT.jar ./
COPY ./build/install/app-book/lib ./lib

CMD ["java", "-cp", "app-book-1.0-SNAPSHOT.jar:./lib/*", "org.du.Main"]

EXPOSE 4040