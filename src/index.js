const express = require('express');
const app = express();

app.get('/', (rep, res) => {
    res.send('Hello world!');
});

app.listen(3000, function () {
    console.log('Example app listening on port 3000!')
});