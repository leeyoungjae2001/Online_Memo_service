const mariadb = require("mariadb");

const pool = mariadb.createPool({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "dudwo2001",
  connectionLimit: 5,
});

GetUserList = async (sql) => {
  let conn, rows;
  try {
    conn = await pool.getConnection();
    conn.query("USE pserver");
    rows = await conn.query(sql);
  } catch (err) {
    throw err;
  } finally {
    if (conn) conn.end();
    return rows;
  }
};

insertUser = async (sql) => {
  let conn, rows;
  try {
    conn = await pool.getConnection();
    conn.query("USE pserver");
    conn.query(sql);
  } catch (err) {
    console.log(`err`);
  }
};

module.exports = {
  getUserList: GetUserList,
  insertUser: insertUser,
};
