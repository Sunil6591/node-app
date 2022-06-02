const express = require('express');
const sum = require('./utils');
const app = express();

app.use('/', (req, res) => {
  res.send(`<h1>hello !!! ${sum(1,25)}</h1>`)
})

app.listen(4000, () => {
  console.log('Listening on port 4000 ');
})