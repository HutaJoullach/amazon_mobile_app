const express = require("express");
const mongoose = require("mongoose");

const authRouter = require("./routes/auth");

const PORT = process.env.PORT || 3000;
const app = express();
const DB = "";

// Middleware
app.use(express.json());
app.use(authRouter);

// Connection
mongoose
  .connect(DB)
  .then(() => {
    console.log("Connection Successful");
  })
  .catch((e) => {
    console.log(e);
  });

app.listen(PORT, () => {
  console.log(`connected at port ${PORT}`);
});
