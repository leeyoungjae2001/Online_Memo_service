const express = require("express");
const maria = require("../models/maria");
const router = express.Router();

router.get("/", (req, res) => {
  //res.render('index');
  res.render("nowpost");
});

router.post("/", (req, res, next) => {
  maria
    .insertUser(
      `INSERT INTO post (userID, postTitle, postContent) VALUES ('${
        req.session.userId
      }','${req.body.title}','${req.body.content.replace(
        /(?:\r\n|\r|\n)/g,
        "<br />"
      )}');`
    )
    .then(() => {
      return res.send(
        '<script type="text/javascript">window.location="/"; </script>'
      );
    });
});

module.exports = router;
