const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const db = require('./queries');
const port = process.env.PORT || 3000;


app.use(bodyParser.json());
app.use(
  bodyParser.urlencoded({
    extended: true
  })
  );
  
app.get('/swiper', db.getUsers);
app.get('/swiper/:id', db.getUserById);
app.get('/back', db.getUsers1);
app.get('/back/:id', db.getUserById1);
app.use(express.static("CourseWork"));

app.listen(port, () => {
  console.log(`App running on port ${port}.`);
});