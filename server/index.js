const express = require("express");

const authRouter = require("./routes/auth");

const PORT = process.env.PORT || 3000;
const app = express();
const DB = "";

// Middleware
app.use(express.json());
app.use(authRouter);

app.listen(PORT, () => {
  console.log(`connected at port ${PORT}`);
});
