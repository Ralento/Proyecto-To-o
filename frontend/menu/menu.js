const mysql = require('mysql')

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'cp'
})

connection.connect( (err) =>{
    if(err)throw err
    console.log('Conectado a la base de datos')
})

connection.query('SELECT * from usuarios', (err, rows) =>{
    if(err)throw err
    console.log('Los datos de la tabla son estos')
    console.log(rows)
    console.log('La cantidad de datos recogidos son ')
    console.log(rows.length)
    const usuario1 = rows[0]
    console.log(`El usuario se llama ${usuario1.nombre} y tiene el id ${usuario1.id}`)
})

const insertar = "INSERT INTO usuarios (id, nombre) VALUES (NULL, 'OTRO NOMBRE')"
connection.query(insertar, (err, rows)=>{
    if(err)throw err
})

connection.query('SELECT * from usuarios', (err, rows) =>{
    if(err)throw err
    console.log('Los datos de la tabla son estos')
    console.log(rows)
    console.log('La cantidad de datos recogidos son ')
    console.log(rows.length)
    const usuario1 = rows[0]
    console.log(`El usuario se llama ${usuario1.nombre} y tiene el id ${usuario1.id}`)
})

connection.end()
