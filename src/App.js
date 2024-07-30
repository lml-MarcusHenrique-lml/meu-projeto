require('dotenv').config();
const express = require('express');
const userRouter = require('./routes/userRoutes');

const app = express();
app.use(express.json());
app.use('/api/users', userRouter);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});