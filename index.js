import express from 'express'
import cors from 'cors'

const PORT = process.env.PORT || 3000

const app = express()
app.use(cors())

app.get('/test', (req, res) => res.send('<h1>Docker API is running ... 🐳</h1>'))

app.listen(PORT, ()=> console.log(`Listening on http://localhost:${PORT}`))