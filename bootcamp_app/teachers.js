const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT teachers.name AS teacher, cohorts.name AS cohort
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
JOIN teachers ON teachers.id = teacher_id
GROUP BY teachers.name, cohorts.name
HAVING cohorts.name LIKE '%${process.argv[2]}%'
ORDER BY teachers.name;
`)
.then(res => {
  res.rows.forEach(user => {

    console.log(`${user.cohort}: ${user.teacher}`);
  })
})
.catch(err => console.error('query error', err.stack));