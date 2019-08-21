# GoLang

### Why GoLang?
https://medium.com/exploring-code/why-should-you-learn-go-f607681fad65


### Dependencies Management
https://golang.github.io/dep/docs/introduction.html
https://medium.freecodecamp.org/an-intro-to-dep-how-to-manage-your-golang-project-dependencies-7b07d84e7ba5

### Simple E-comm REST API in GO
https://medium.com/@gautamprajapati/writing-a
z-simple-e-commerce-website-api-in-go-programming-language-9f671324b4dd

### Go lang Guide
https://medium.com/mindorks/lets-go-a-complete-guide-147aec23fd5a



### Variable
1. `:=` can only be used inside a function
2. `var` is used to define global variable
3. `_` is a specific type of variabe. Any value assigned to it like `_:=12` will be ignored
4. If a variable declared in a program is not used, will throw an error
5. A global variable is a variable with global scrop, meaning that it is accessible through the program from any point 

## Basic Data Type
Boolean
- In Go, we use `bool` as boolean datatype having values as `true` or `false`. 
- Default value is `false`

Numerical Types
- In Go, we have int(interger), uint(un-signed integer).
- Their length depends upon the bit of operating systems.
- Float also has `float32` and `float64` types with default being is `float64`
- Go also has `complex64` and `complex128` as data types with a 32-bit real and 32-bt imaginary part and with a 64-bit real and 64-bit imaginary part respectively
```
// Real + Imaginary(i)
var complex Number complex64 = 5 + 3i
```

String and Error Type
- String are represented by double quotes "" or backticks ``
- We use the + operator to concatenate two strings.
- Error are something which gets generated when the desired value/state is not accepted.
- Go has error type for purpose of dealing with error messages. There is also a package called errors to handle errors using,
```
variableName := errors.new("Error");
```

Ground declaration
```
import (
  "fmt"
)

const(
  variableName1 = 100
  variableName2 = 3.1415
  variableName3 = "Go_"
)

var(
  variableName4 int
  variableName5 float32
  variableName6 string
)
```

Array
- Go has two tytpe of data structure which can handle the list of data
- Arrays a kind of data structure that can store a **fixed-size** sequential collection of elements of the same type.
- An array is used to store a collection of data, but it is often more useful to think of an array as a collection of variables of the same type
- Default value of all element in an array is 0
- Array has fixed length
```
  var a [5]int // [0 0 0 0 0]

  a[4] = 100 // [0 0 0 0 100]
  
  len(a) // 5

  b := [5]int{1, 2, 3, 4, 5} // [1 2 3 4 5]

  var twoD [2][3]int // [[0 0 0] [0 0 0]] 
```


## Len vs Cap
https://stackoverflow.com/questions/41668053/cap-vs-len-of-slice-in-golang
- cap : tells you the capcacity of the underlying array
- len : tells you hwo many items are in the arrays.

## Unmarshal vs decoder (Parsing JSON)
https://stackoverflow.com/questions/21197239/decoding-json-in-golang-using-json-unmarshal-vs-json-newdecoder-decode
- Use `json.Decoder` if your data is coming from an `io.Reader` stream, or you need to decode miltiple values from a stream of data
- Use `json.Unmarshal` if you already have the JSOn data in memory.


## Middleware usage
3 ways of adding middleware
```

e: := echo.New()

// 1. binding middleware on declaration
g := e.Group("/admin", middleware.Logger(), middler....) // as many middlewares

// 2. Use method

g := e.Group("/admin")

g.Use(middleware.Logger())


// Add middleware directly to the method

e.GET("/something", someFunc, middleware.Logger())
```

## Go module with private gitlab repos
https://www.reddit.com/r/golang/comments/9els7j/go_module_with_private_gitlab_repos/e5px5lg/?context=8&depth=9
https://github.com/golang/go/issues/27254

```Bash
The problem I get is that my projects are hosted on a private gitlab server, I used the classic git replacement technique to have *go get* use ssh instead of https but it doesn't seem to work.

git config --global url."git@mygitlab.com:".insteadof="https://mygitlab.com/"


```

## Go get cannot find local packages when using multiple modules in a repo
https://stackoverflow.com/questions/52079662/go-get-cannot-find-local-packages-when-using-multiple-modules-in-a-repo


