mvn -f ../pom.xml clean package
java -jar ../target/jmh-pmd-benchmarks-1.0.jar -f 10 -wi 5 -i 5 -w 5 -r 10 de.pmdcheck.factorial.UseArrayListInsteadOfVectorBenchmarkFill | tee UseArrayListInsteadOfVectorBenchmarkFill_"$JAVA_VERSION".txt

