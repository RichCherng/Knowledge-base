


### How to deploy a Python application as a zip file

https://gist.github.com/asimjalis/4237534


### Accessing the index in Python 'for' loop
https://stackoverflow.com/questions/522563/accessing-the-index-in-python-for-loops


### iterate over dictionary in sorted order
https://stackoverflow.com/questions/522563/accessing-the-index-in-python-for-loops


### Python for loop
```python
for k in dict:
  print k
  
for k, v in dict.items():
  print k, v
```

### Parsing Value from JSON file
https://stackoverflow.com/questions/2835559/parsing-values-from-a-json-file

### Dump dict to json file
https://stackoverflow.com/questions/17043860/python-dump-dict-to-json-file


### Pretty Print Json file
https://stackoverflow.com/questions/12943819/how-to-prettyprint-a-json-file

### Parent directory
https://stackoverflow.com/questions/2860153/how-do-i-get-the-parent-directory-in-python
```Python
PATH = os.path.abspath(os.path.join(dir_path, "../../"))
```

### import modules from parent folder subfolder
https://stackoverflow.com/questions/14057464/relative-importing-modules-from-parent-folder-subfolder

## Multi-threading with subprocess
https://stackoverflow.com/questions/984941/python-subprocess-popen-from-a-thread
```python
import threading
import subprocess

class MyClass(threading.Thread):
    def __init__(self):
        self.stdout = None
        self.stderr = None
        threading.Thread.__init__(self)

    def run(self):
        p = subprocess.Popen('rsync -av /etc/passwd /tmp'.split(),
                             shell=False,
                             stdout=subprocess.PIPE,
                             stderr=subprocess.PIPE)

        self.stdout, self.stderr = p.communicate()

myclass = MyClass()
myclass.start()
myclass.join()
print myclass.stdout
```

### Terminate process when timeout
https://stackoverflow.com/questions/4158502/kill-or-terminate-subprocess-when-timeout?rq=1
```python
import subprocess as sub
import threading

class RunCmd(threading.Thread):
    def __init__(self, cmd, timeout):
        threading.Thread.__init__(self)
        self.cmd = cmd
        self.timeout = timeout

    def run(self):
        self.p = sub.Popen(self.cmd)
        self.p.wait()

    def Run(self):
        self.start()
        self.join(self.timeout)

        if self.is_alive():
            self.p.terminate()      #use self.p.kill() if process needs a kill -9
            self.join()

RunCmd(["./someProg", "arg1"], 60).Run()
```
### Python Yield, Generator, Iterable
```python
# iterable
mylist = [x*x for x in range(3)] # or mylist = [0,1,4]
for i in mylist:
  print(i)
0
1
4

# Generator: can be call/iterate once
# Only difference HERE is () instead of []
mygenerator = (x*x for x in range(3))
  print (i)
0
1
4
```
Yield
```Python
>>> def createGenerator():
...    mylist = range(3)
...    for i in mylist:
...        yield i*i
...
>>> mygenerator = createGenerator() # create a generator
>>> print(mygenerator) # mygenerator is an object!
<generator object createGenerator at 0xb7555c34>
>>> for i in mygenerator:
...     print(i)
0
1
4
```
https://stackoverflow.com/questions/231767/what-does-the-yield-keyword-do?rq=1
