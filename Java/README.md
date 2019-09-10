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
https://stackoverflow.com/questions/23767997/how-can-i-create-a-jar-file-with-an-entry-point-inside-a-file-tree
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


### Get current working directory in Java
https://stackoverflow.com/questions/3153337/get-current-working-directory-in-java/3153440
```java
public class Test
{
    public static void main(final String[] args)
    {
        final String dir = System.getProperty("user.dir");
        System.out.println("current dir = " + dir);
    }
}  
```

## Dealing With JSON

# Jar file from MVN Repository
https://mvnrepository.com/artifact/com.google.code.gson/gson/2.2.2

### How to read Json from file
https://stackoverflow.com/questions/10926353/how-to-read-json-file-into-java-with-simple-json-library
```java
 JSONArray a = (JSONArray) parser.parse(new FileReader("c:\\exer4-courses.json"));

  for (Object o : a)
  {
    JSONObject person = (JSONObject) o;

    String name = (String) person.get("name");
    System.out.println(name);

    String city = (String) person.get("city");
    System.out.println(city);

    String job = (String) person.get("job");
    System.out.println(job);

    JSONArray cars = (JSONArray) person.get("cars");

    for (Object c : cars)
    {
      System.out.println(c+"");
    }
  }
  
```

### Parse JSON file using GSON
https://stackoverflow.com/questions/16377754/parse-json-file-using-gson
```java
Gson gson = new Gson();
Response response = gson.fromJson(yourJson, Response.class);

String name = response.getDescriptor().get("app3").getName();
```


### Singleton
https://www.geeksforgeeks.org/singleton-class-java/
```java
// Java program implementing Singleton class
// with getInstance() method
class Singleton
{
    // static variable single_instance of type Singleton
    private static Singleton single_instance = null;
 
    // variable of type String
    public String s;
 
    // private constructor restricted to this class itself
    private Singleton()
    {
        s = "Hello I am a string part of Singleton class";
    }
 
    // static method to create instance of Singleton class
    public static Singleton getInstance()
    {
        if (single_instance == null)
            single_instance = new Singleton();
 
        return single_instance;
    }
}
 // Driver Class
class Main
{
    public static void main(String args[])
    {
        // instantiating Singleton class with variable x
        Singleton x = Singleton.getInstance();
 
        // instantiating Singleton class with variable y
        Singleton y = Singleton.getInstance();
 
        // instantiating Singleton class with variable z
        Singleton z = Singleton.getInstance();
 
        // changing variable of instance x
        x.s = (x.s).toUpperCase();
 
        System.out.println("String from x is " + x.s);
        System.out.println("String from y is " + y.s);
        System.out.println("String from z is " + z.s);
        System.out.println("\n");
 
        // changing variable of instance z
        z.s = (z.s).toLowerCase();
 
        System.out.println("String from x is " + x.s);
        System.out.println("String from y is " + y.s);
        System.out.println("String from z is " + z.s);
    }
}
```

## Eclipse: How to install a plugin manually
https://stackoverflow.com/questions/31553376/eclipse-how-to-install-a-plugin-manually


## Update Mvn
https://askubuntu.com/questions/420281/how-to-update-maven-3-0-4-3-1-1
