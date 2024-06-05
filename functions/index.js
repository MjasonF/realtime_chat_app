const functions = require('firebase-functions');
const express = require('express');
const app = express();

app.get('/api/your-endpoint', (req, res) => {
  res.send('Hello from Firebase!');
});

exports.app = functions.https.onRequest(app);