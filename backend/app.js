const express = require('express');
const mysql = require('mysql');

const app = express();
app.use(express.json());


//ROUTER
const routes = require('./routes/perfil.routes')
app.use(routes)

//conexión
var conexion = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'cp',
});
//prueba de la conexión
conexion.connect(function(error){
    if(error){
        throw error
    }else{
        console.log('Conexión exitosa')
    }
});

//ver todos los artículos
app.get('/api/alumnos', (req,res)=>{
    conexion.query('SELECT * FROM usuarios', (error, filas)=>{
        if(error){
            throw error;
        }else{
            res.send(filas);
        }
    })
});
//ver un articulo
app.get('/api/alumnos/:id', (req,res)=>{
    conexion.query('SELECT * FROM usuarios WHERE id = ?',[req.params.id], (error, filas)=>{
        if(error){
            throw error;
        }else{
            res.send(filas);
            //res.send(filas[0].EMAIL);
        }
    })
});

//crear un articulo
app.post('/api/alumnos', (req,res)=>{
    let data = {nombre:req.body.nombre ,usuario:req.body.usuario, contraseña:req.body.contraseña, correo:req.body.correo, telefono:req.body.telefono};
    let sql = "INSERT INTO usuarios SET ?";
    conexion.query(sql, data, function(error, results){
        if(error){
            throw error;
        }else{
            res.send(results);
        }
    });
});

//editar artículos
app.put('/api/alumnos/:id', (req, res)=>{
    let id = req.params.id;
    let nombre = req.body.nombre;
    let usuario =req.body.usuario;
    let contraseña = req.body.contraseña;
    let correo = req.body.correo;
    let telefono = req.body.telefono;
    let sql = "UPDATE usuarios SET nombre = ?, usuario = ?, contraseña = ?, correo = ?, telefono = ? WHERE id = ?";
    conexion.query(sql, [nombre, usuario, contraseña, correo, telefono, id], function(error, results){
        if(error){
            throw error;
        }else{
            res.send(results);
        }
    });

});

//eliminar articulo
app.delete('/api/alumnos/:id', (req,res)=>{
    conexion.query('DELETE FROM usuarios WHERE id = ?', [req.params.id], function(error, filas){
        if(error){
            throw error;
        }else{
            res.send(filas);
        }
    });
});

const puerto = process.env.PUERTO;

app.listen(puerto, function(){
    console.log('Se inicio en el puerto ' + puerto);
});
