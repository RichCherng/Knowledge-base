# AWS Stuff


### Getting Start
https://aws.amazon.com/developers/getting-started/nodejs/
https://aws.amazon.com/sdk-for-node-js/

## S3

### Upload file
https://gist.github.com/homam/8646090
`upload takes stream as argument and putObject can take buffer as input`
https://stackoverflow.com/questions/44145813/javascript-aws-sdk-s3-upload-method-with-body-stream-generating-empty-file
``` javascript
const fs = require('fs')
const S3 = require('aws-sdk/clients/s3')

const s3 = new S3()

const send = async () => {
  const rs = fs.createReadStream('/home/osman/Downloads/input.txt')
  rs.on('open', () => {
    console.log('OPEN')
  })
  rs.on('end', () => {
    console.log('END')
  })
  rs.on('close', () => {
    console.log('CLOSE')
  })
  // rs.on('data', (chunk) => {
  //   console.log('DATA: ', chunk)
  // })

  console.log('START UPLOAD')

  const response = await s3.upload({
    Bucket: 'test-bucket',
    Key: 'output.txt',
    Body: rs,
  }).promise()

  console.log('response:')
  console.log(response)
}

send().catch(err => { console.log(err) })
```

https://stackoverflow.com/questions/28018855/upload-a-file-to-amazon-s3-with-nodejs



### Delete File
https://stackoverflow.com/questions/27753411/aws-s3-delete-object-using-javascript
```javascript
var AWS = require('aws-sdk');
AWS.config.loadFromPath('./credentials-ehl.json');
var s3 = new AWS.S3();
var params = {  Bucket: 'your bucket', Key: 'your object' };
s3.deleteObject(params, function(err, data) {
  if (err) console.log(err, err.stack);  // error
  else     console.log();                 // deleted
});
```
