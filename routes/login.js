const express = require("express");
const maria = require("../models/maria");
const router = express.Router();

router.get("/", (req, res) => {
  if (!req.session.userId) return res.render("login", { page: "login" });
  else {
    maria
      .getUserList(`SELECT * FROM userInfo WHERE id='${req.session.userId}'`)
      .then((rows) => {
        if (!rows[0])
          return res.send(
            '<script type="text/javascript">window.location="/login"; </script>'
          );
        return res.send(
          '<script type="text/javascript">window.location="/"; </script>'
        );
      });
  }
});
router.post("/", (req, res, next) => {
  maria
    .getUserList(`SELECT * FROM userInfo WHERE email='${req.body.email}'`)
    .then((rows) => {
      console.log(rows[0]);
      if (!rows[0])
        return res.send(
          '<script type="text/javascript">alert("이메일이 잘못되었습니다."); window.location="/login"; </script>'
        );
      if (rows[0].password !== req.body.password)
        return res.send(
          '<script type="text/javascript">alert("비밀번호가 잘못되었습니다."); window.location="/login"; </script>'
        );
      req.session.userId = rows[0].id;
      return res.send(
        '<script type="text/javascript">window.location="/"; </script>'
      );
    });
});
module.exports = router;
