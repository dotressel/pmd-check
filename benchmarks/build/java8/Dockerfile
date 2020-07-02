FROM galaxy158.sc.uni-leipzig.de/pmd-check/pmd-check-jdk-environment:8

WORKDIR /home/validation_jmh

COPY build/java8/pom.xml .
COPY src src

RUN mvn -f ./pom.xml clean package


FROM galaxy158.sc.uni-leipzig.de/pmd-check/pmd-check-jdk-environment:8

WORKDIR /home/validation_jmh

COPY --from=0 /home/validation_jmh/target/jmh-pmd-benchmarks-1.0.jar .
COPY run .
COPY runFactorial runFactorial

RUN mkdir results