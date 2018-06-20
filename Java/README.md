# JAVA

### Compiling multiple jar and java files using javac
https://stackoverflow.com/questions/30313812/compiling-multiple-jar-and-java-files-using-javac/30313909
(Usage of wildcard)
```java
javac -classpath lib/\* src/*.java
```
https://stackoverflow.com/questions/9091733/how-do-i-compile-a-java-file-that-has-jar-dependencies


### Compile package with multiple file to jar
https://stackoverflow.com/questions/9689793/cant-execute-jar-file-no-main-manifest-attribute
```
jar cmvf MANIFEST.MF <new-jar-filename>.jar <file to include>

jar cmvf MANIFEST.MF tool.jar cdn/*.class
```
MANIFEST.MF
```
Main-Class: com.mypackage.Myclass
// Class that contain public static void main(String[] args)
```
