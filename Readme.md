needs checkstyle-<version>-all.jar from
   <https://github.com/checkstyle/checkstyle/releases/>

    Tested with 8.20 - OK
                8.23 - OK
                8.34 - OK
                 
needs junit 5: <version>/junit-platform-console-standalone-<version>.jar
    <https://repo1.maven.org/maven2/org/junit/platform/junit-platform-console-standalone/>

    Tested with 1.3.2 -- OK
    Tested with 1.5.1 -- OK
    Tested with 1.6.2 -- OK

uses latest openjdk:
    Tested with: 12 13 14


    docker build -t ingi/inginious-c-java-latest-junit5  .

use args to specify versions:

    --build-arg JDKVERSION=latest
    --build-arg JUNITVERSION=1.6.2
    --build-arg CHECKSTYLEVERSION=8.20
     
Example:

    docker build -t ingi/inginious-c-java-latest-junit5 --build-arg CHECKSTYLEVERSION=8.20   .

Wichtig: **Der Inginious Server muss, nachdem der Docker-Container hinzugefügt wurde, neugestartet werden!**
