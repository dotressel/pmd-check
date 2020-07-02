FROM dotressel/pmd-check-jdk-environment:6

WORKDIR /home/validation_jmh

COPY build/java6/pom.xml .
COPY src src

RUN rm ./src/main/java/de/pmdcheck/AvoidFileStreamBenchmark.java
RUN rm -rf ./src/main/java/de/pmdcheck/factorial/

RUN mvn -f ./pom.xml clean package


FROM dotressel/pmd-check-jdk-environment:6

WORKDIR /home/validation_jmh

COPY --from=0 /home/validation_jmh/target/jmh-pmd-benchmarks-1.0.jar .
COPY run .
COPY runFactorial runFactorial

RUN mkdir results