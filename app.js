const express = require("express");
const app = express();
const PORT = process.env.PORT || 5000;
const bodyParser = require("body-parser");
app.use(bodyParser.urlencoded({ extended: true }));
const session = require("express-session");
const FileStore = require("session-file-store")(session); // 1

// routes
const mainRoute = require("./routes/main");
const loginRoute = require("./routes/login");
const signupRoute = require("./routes/signup");
const newpostRoute = require("./routes/newpost");

// 뷰엔진 설정
app.set("views", __dirname + "/views");
app.set("view engine", "ejs");
app.use(express.static(__dirname + "/public"));

//session 설정
app.use(
  session({
    // 2
    secret: "keyboard cat", // 암호화
    resave: false,
    saveUninitialized: true,
    store: new FileStore(),
  })
);

// use routes
app.use("/", mainRoute);
app.use("/login", loginRoute);
app.use("/signup", signupRoute);
app.use("/newpost", newpostRoute);

//listen
app.listen(PORT, function () {
  console.log("Example app listening on port", PORT);
});
