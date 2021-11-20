const express = require("express");
const maria = require("../models/maria");
const router = express.Router();

router.get("/", (req, res) => {
  //res.render('index');
  if (!req.session.userId) {
    return res.send(
      '<script type="text/javascript">window.location="/login"; </script>'
    );
  } else {
    maria
      .getUserList(`SELECT * FROM userInfo WHERE id='${req.session.userId}'`)
      .then((user_rows) => {
        if (!user_rows[0])
          return res.send(
            '<script type="text/javascript">window.location="/login"; </script>'
          );
        maria
          .getUserList(
            `SELECT * FROM post WHERE userID='${req.session.userId}'`
          )
          .then((post_rows) => {
            if (!post_rows[0]) {
              maria.insertUser(
                `INSERT INTO post (userID, postTitle, postContent) VALUES ('${req.session.userId}','메모장 도움말','있을 줄 알았지?
                새글 작성이나 해봐');`
              );
            }

            return res.render("", {
              user_rows: user_rows,
              post_rows: post_rows,
            });
          });
      });
  }
});
router.post("/post", (req, res, next) => {
  return res.render("newpost");
});
router.post("/logout", (req, res, next) => {
  req.session.destroy();
  return res.send(
    '<script type="text/javascript">window.location="/"; </script>'
  );
});

module.exports = router;
