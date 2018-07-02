# Knowledge Base for Javascript

### Async/await declaration for ES8
https://medium.com/@_bengarrison/javascript-es8-introducing-async-await-functions-7a471ec7de8a
An `async` function can contain an `await` expression, that pauses the execution of the async function and waits for the passed `Promises`'s resolution, and then resumes the `async` function's execution and returns the resolved value.
```Javascript
// Standard Promise
function getProcessedData(url) {
  return downloadData(url) // return a promise
    .catch( e => {
      return downloadFallbackData(url); // return a promise
    })
    .then( v => {
      return processDataInWorker(v); // return a promise
    });
}


// ASYNC/AWAIT
async function getProcessedData(ur) {
  let v;
  try {
    v = await downloadData(url);
  } catch (e) {
    v = await downloadFallbackData(url);
  }
  
  return processDataInWorker(v);
}
```

### NODEJS Multi-part data
https://stackoverflow.com/questions/13797670/nodejs-post-request-multipart-form-data

### NODEJS write after end
https://stackoverflow.com/questions/31941715/nodejs-request-error-sending-multipart-form-data

### Node.js "btoa is not defined" error
https://stackoverflow.com/questions/23097928/node-js-btoa-is-not-defined-error

### Basic Authentication Using Javascript
https://stackoverflow.com/questions/34860814/basic-authentication-using-javascript
