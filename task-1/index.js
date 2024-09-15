// index.js
const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
  res.send('this will the node application that is running on the port 3000 ');
});

app.listen(port, () => {
  console.log(`App listening at http://localhost:${port}`);
});
