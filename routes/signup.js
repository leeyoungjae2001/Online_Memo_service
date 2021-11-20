const express = require("express");
const maria = require("../models/maria");
const router = express.Router();

router.get("/", (req, res) => res.render("signup", { page: "signup" }));
router.post("/", (req, res, next) => {
  if (req.body.password !== req.body.password_check)
    return res.send(
      '<script type="text/javascript">alert("비밀번호를 확인하십시오"); window.location="/signup"; </script>'
    );

  maria
    .getUserList(`SELECT * FROM userInfo WHERE email='${req.body.email}'`)
    .then((rows) => {
      if (rows[0])
        return res.send(
          '<script type="text/javascript">alert("이미 존재하는 이메일입니다."); window.location="/signup"; </script>'
        );
      maria.insertUser(
        `INSERT INTO pserver.userInfo (email, password, name) VALUES ('${req.body.email}','${req.body.password}','${req.body.name}');`
      );
      return res.send(
        '<script type="text/javascript">alert("회원가입이 완료되었습니다."); window.location="/login"; </script>'
      );
    })
    .catch((errMsg) => {
      console.log(errMsg);
    });
});

module.exports = router;
