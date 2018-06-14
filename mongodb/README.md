




### How to query Nested Object
https://stackoverflow.com/questions/16002659/how-to-query-nested-objects
```javascript
db.messages.find( { headers : { From: "reservations@marriott.com" } } )
// This queries for documents where headers equals { From: ... }, i.e. contains no other fields.


db.messages.find( { 'headers.From': "reservations@marriott.com" }  )
//This is only looks at the headers.From field, not affected by other fields contained in, or missing from, headers
```

```
db.<Collection>.find({}, {metadata : 1, _id: 0 });

db.<Collection>.getIndexes()

show collections
```


# Execute mongo command through shell scripts
https://stackoverflow.com/questions/4837673/how-to-execute-mongo-commands-through-shell-scripts
