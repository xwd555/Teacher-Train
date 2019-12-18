const express = require('express');
const app = express();

//解析表单等数据
const bodyParser = require('body-parser');
app.use(bodyParser.urlencoded({extended: false}));//application/x-www-form-urlen
 
 
//创建数据库连接对象
const mysql = require('mysql');
const conn = mysql.createConnection({
    host: 'localhost',//数据库地址,本地127.0.0.1||localhost
    user: 'root',//账号
    password: '',//密码
    database: 'teach_train',//库名
    multipleStatements: true //允许执行多条语句
});


//这四部操作为teacher的个人信息增删查改
//查
app.get('/teacher', (req, res) => {
    const sqlStr = 'select * from tr_teacher';
    conn.query(sqlStr, (err, results) => {
        if (err) return res.json({err_code: 1, message: '数据不存在', affextedRows: 0});
        res.json({err_code: 200, message: results, affextedRows: results.affextedRows});
    })
});

//删除
app.delete('/teacher/:id', function (req, res) {
    console.log('params:' + req.params);
    let id = req.params.id;
    let sql = 'delete from tr_teacher where tr_id=' + id;
            conn.query(sql, id, (err, results) => {
            if (err) return res.json({err_code: 1, message: err, affectedRows: 0});
            if(results.affectedRows === 0){
                res.json({err_code: 0, message: '该数据不存在', affectedRows: results.affectedRows})
            }res.json({err_code: 0, message: '删除成功', affectedRows: results.affectedRows})
            
        })
});
//修改
app.put('/teacher', function (req, res) {
    console.log(req.body);
    const id = req.body.tr_id;
    const name = req.body.name;
    const u_name = req.body.u_name;
    const u_password = req.body.u_password;
    const sex = req.body.sex;
    const age = req.body.age;
    const address = req.body.address;
    const email = req.body.email;
    const sqlStr = `update tr_teacher set name='${name}',u_name="${u_name}",u_password='${u_password}', sex='${sex}', age='${age}',address ='${address}',email="${email}"where tr_id = ${id}`;
    conn.query(sqlStr, (err, results) => {
        if (err) return res.json({err_code: 1, message: err, affectedRows: 0});
        res.json({err_code: 0, message: '修改成功', affectedRows: results.affectedRows});
    })
});

//添加
app.post('/teacher', (req, res) => {
    console.log(req.body);
    const data = req.body;
    const sqlStr = 'insert into tr_teacher set ?';
    conn.query(sqlStr, data, (err, results) => {
        if (err) return res.json({err_code: 1, message: err, affectedRows: 0});
        res.json({err_code: 0, message: '添加成功', affectedRows: results.affectedRows});
    })
});



/**
    course课程的增删查改

 */
//查
app.get('/course', (req, res) => {
    const sqlStr = 'select * from tr_course';
    conn.query(sqlStr, (err, results) => {
        if (err) return res.json({err_code: 1, message: '数据不存在', affextedRows: 0});
        res.json({err_code: 200, message: results, affextedRows: results.affextedRows});
    })
});

//删除
app.delete('/course/:id', function (req, res) {
    console.log('params:' + req.params);
    let id = req.params.id;
    console.log(id)
    let sql = 'delete from tr_course where cou_id=' + id;
            conn.query(sql, id, (err, results) => {
            if (err) return res.json({err_code: 1, message: err, affectedRows: 0});
            if(results.affectedRows === 0){
                res.json({err_code: 0, message: '该数据不存在', affectedRows: results.affectedRows})
            }res.json({err_code: 0, message: '删除成功', affectedRows: results.affectedRows})
            
        })
});
//修改
app.put('/course', function (req, res) {
    console.log(req.body);
    const id = req.body.cou_id;
    const cou_name = req.body.cou_name;
    const sqlStr = `update tr_course set cou_name='${cou_name}'where cou_id = ${id}`;
    conn.query(sqlStr, (err, results) => {
        if (err) return res.json({err_code: 1, message: err, affectedRows: 0});
        res.json({err_code: 0, message: '修改成功', affectedRows: results.affectedRows});
    })
});
//添加
app.post('/course', (req, res) => {
    console.log(req.body);
    const data = req.body;
    const sqlStr = 'insert into tr_course set ?';
    conn.query(sqlStr, data, (err, results) => {
        if (err) return res.json({err_code: 1, message: err, affectedRows: 0});
        res.json({err_code: 0, message: '添加成功', affectedRows: results.affectedRows});
    })
});
app.listen(3000, () => {
    console.log('监听端口3000,http://localhost:3000');
});