




### How to query Nested Object
https://stackoverflow.com/questions/16002659/how-to-query-nested-objects
```javascript
db.messages.find( { headers : { From: "reservations@marriott.com" } } )
// This queries for documents where headers equals { From: ... }, i.e. contains no other fields.


db.messages.find( { 'headers.From': "reservations@marriott.com" }  )
//This is only looks at the headers.From field, not affected by other fields contained in, or missing from, headers
```

```
db.<Collection>.find({}); # Display everything
db.<Collection>.find({}, {metadata : 1, _id: 0 }); # filter out _id, show only metadata

db.<Collection>.getIndexes() # Get "headers" or show the the document structure look like

db.<Collection>.findOne({}); # Find one instance ("{}" query for everything)

show collections # Show all collections

db.<Collection>.deleteOne() # Delete one instance, first encouter?

db.<Collection>.deleteMany() # Delete all instance 

db.<Collection>.find({ 'filename': {$regex: /^SomeString/i} }); # Query using Regex, show object that has "SomeString" as part of the value for key "filename"


# Using value from one collection to help in the query for the other collection.
# Useful when doing command ling query execution
db.<Collection>.find({ 'filename': {$regex: /^SomeString/i} }).forEach(function(doc){
  db.Collection2.deleteOne({files_id: doc._id});
});

```


# Execute mongo command through shell scripts
https://stackoverflow.com/questions/4837673/how-to-execute-mongo-commands-through-shell-scripts


### Execute mongo query from terminal
```bash
mongo --host 1.1.1.1 --eval 'db.collection.find()'
```

## Install Mongo
https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/

## Uninstall Mongo
https://stackoverflow.com/questions/29554521/uninstall-mongodb-from-ubuntu
```
sudo service mongod stop
sudo apt-get purge mongodb-org*
sudo rm -r /var/log/mongodb
sudo rm -r /var/lib/mongodb

```
