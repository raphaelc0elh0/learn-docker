import express from "express";

const app = express();

app.get("/", async (req, res) => {
  res.send("<h1>Stupid</h1>");
});

app.listen(3000, () => console.log("🚀 http://localhost:3000"));
