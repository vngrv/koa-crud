var mysql = require('mysql');
var config = require('../config/default.js')

var pool = mysql.createPool({
    host: config.database.HOST,
    user: config.database.USERNAME,
    password: config.database.PASSWORD,
    database: config.database.DATABASE,
    port: config.database.PORT,
    connectionLimit : 100,
    insecureAuth : true
});

let query = (sql, values) => {

    return new Promise((resolve, reject) => {
        pool.getConnection((err, connection) => {
            if (err) {
                reject(err)
            } else {
                connection.query(sql, values, (err, rows) => {
                    if (err) {
                        reject(err)
                    } else {
                        resolve(rows)
                    }
                    connection.release()
                })
            }
        })
    })

}


let books = `create table if not exists book(
     id INT NOT NULL AUTO_INCREMENT,
     title VARCHAR(255) NOT NULL COMMENT 'заглавие',
     author VARCHAR(255) NOT NULL COMMENT 'автор',
     description VARCHAR(255) NOT NULL COMMENT 'описание',
     image VARCHAR(255) NOT NULL COMMENT 'изображение',
     date VARCHAR(255) NOT NULL COMMENT 'датасоздания',
     PRIMARY KEY ( id )
    );`

let createTable = (sql) => {
    return query(sql, [])
}

createTable(books)

exports.findAll = () => {
    let _sql = `SELECT * FROM book;`
    console.log(_sql)
    return query(_sql)
}

exports.insertBook = (value) => {
    let _sql = "INSERT INTO book SET title=?, author=?, description=?, image=?, date=? ;"
    console.log(_sql)
    return query(_sql, value)
}

exports.findById = ( id ) => {
  let _sql = `SELECT * FROM book WHERE id="${id}";`
  console.log(_sql)
  return query( _sql)
}

exports.orderBy = (fields1, fields2) => {
    let _sql = `SELECT ${fields1} FROM book ORDER BY ${fields2}`
    console.log(_sql)
    return query(_sql)
}

exports.update = (fields1, id) => {
    let _sql = `UPDATE book SET ${fields1} WHERE id=${id}`
    console.log(_sql)
    return query(_sql)
}
