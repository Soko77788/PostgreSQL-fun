require('dotenv').config();


const { Pool } = require('pg');
const pool = new Pool ({ 
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    host: process.env.DB_HOST,
    database: process.env.DB_NAME,

})

pool.query('SELECT NOW()')
.then(result => console.log(result))
.catch(err => console.log(err))


const getAllAnimals = async () => {
    const result = await pool.query('SELECT * FROM animals;')
    console.table(result.rows)
}

getAllAnimals()