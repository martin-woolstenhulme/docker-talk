const http = require("http");
const host = '0.0.0.0';
const port = 8000;
const fs = require('fs').promises;

const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'db',
    user: 'root',
    password: 'changeme',
    database: 'library'
});

let books;
let authors;

connection.connect(function(err) {
    if (err) {
      return console.error('error: ' + err.message);
    }
  
    console.log('Connected to the MySQL server.');
  });

connection.query('SELECT * FROM books', function(error, results){
    console.log(results);
    books = JSON.stringify(results);
});

connection.query('SELECT * FROM authors', function(error, results){
    console.log(results);
    authors = JSON.stringify(results);
});

const requestListener = function (req, res) {
    res.setHeader("Content-Type", "application/json");
    switch (req.url) {
        case "/books":
            res.writeHead(200);
            res.end(books);
            break
        case "/authors":
            res.writeHead(200);
            res.end(authors);
            break
        default:
            fs.readFile(__dirname + "/404.png")
            .then(contents => {
                res.setHeader("Content-Type", "image/png");
                res.writeHead(404);
                res.end(contents);
            })
    }
};

const server = http.createServer(requestListener);
server.listen(port, host, () => {
    console.log(`Server is running on http://${host}:${port}`);
});