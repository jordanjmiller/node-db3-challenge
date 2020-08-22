// Now, wherever we configure our database, we may use the following syntax instead of hardcoding in a config object.
const knex = require('knex');

const config = require('../knexfile.js');

// we must select the development object from our knexfile
const db = knex(config.development);

// export for use in codebase
module.exports = db;