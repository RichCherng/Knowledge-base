const http = require('http');
const port = 3001

const requestHandler = (request, response) => {
    response.end('Hello Node.js Server!');
}

const server = http.createServer(requestHandler);

server.listen(port, (err) => {
    if (err) {
        return console.log('something bad happend', err);
    }

    console.log(`server is listening on ${port}`);
})