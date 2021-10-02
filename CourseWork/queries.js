const Pool = require('pg').Pool
const pool = new Pool({
 host: 'ec2-54-217-213-79.eu-west-1.compute.amazonaws.com',
  database: 'delpcnre7qqvcd',
  user:'vzlulqlbbidpeh',
  password: 'af82c78ad889cad3286d51a758515f36c0eeba2569a9141dc6a8b62b7e8f951f',
  port: 5432,
  ssl:{rejectUnauthorized:false},
})
const getUsers = (request, response) => {
    response.header("Access-Control-Allow-Origin", "*");
    pool.query('SELECT * FROM public.swiper ORDER BY id ASC', (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

const getUsers1 = (request, response) => {
    response.header("Access-Control-Allow-Origin", "*");
    pool.query('SELECT * FROM public.back ORDER BY id ASC', (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

const getUserById1 = (request, response) => {
  const id = parseInt(request.params.id)
    response.header("Access-Control-Allow-Origin", "*");
    pool.query('SELECT * FROM public.back WHERE id = $1', [id], (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}

const getUserById = (request, response) => {
  const id = parseInt(request.params.id)
    response.header("Access-Control-Allow-Origin", "*");
    pool.query('SELECT * FROM public.swiper WHERE id = $1', [id], (error, results) => {
    if (error) {
      throw error
    }
    response.status(200).json(results.rows)
  })
}







module.exports = {
  getUsers,
  getUserById,
  getUsers1,
  getUserById1
}
