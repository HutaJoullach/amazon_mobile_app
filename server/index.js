const express = require("express");
const mongoose = require("mongoose");
const dotenv = require("dotenv");

const authRouter = require("./routes/auth");

dotenv.config();

const PORT = process.env.PORT || 3000;
const app = express();
const DB = process.env.CONNECTION_URL;

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

app.listen(PORT, "0.0.0.0", () => {
  console.log(`connected at port ${PORT}`);
});
