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
Example Compliation
```
javac -cp ".:lib/*" -d bin/ src/*.java
# cp = classpath
# lib/* containing jar files (Dependencies)
# -d /bin: -d is specified output location, bin is folder

jar cmvf MANIFEST.MF tool.jar bin/cdn/*.class
# compile into jar file using .class file
# MANIFEST.MF contain Main class
# "Main-class: cdn.Main" # cdn is package name
# tool.jar is the name that the output file

java -cp tool.jar:lib/*:bin cdn.Main
# -cp : classpath
# tool.jar: name of the jar file that going to be run
# lib : directory contains .jar dependencies
# cdn.Main: cdn is the name of the package, Main is the name of the class containing "public statis void Main(String[] args)"
```
