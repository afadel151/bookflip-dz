export const hello = require("firebase-functions").https.onRequest((req, res) => {
  res.send("Functions emulator works!");
});
