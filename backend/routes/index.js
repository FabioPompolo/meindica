import express from 'express'
import admin from 'firebase-admin';

//REST API 
const app = express ();

var admin = require("firebase-admin");

var serviceAccount = require("path/to/serviceAccountKey.json");

admin.initializeApp({
  credential: admin.credential.cert("serviceAccountKey.json"),
  databaseURL: "https://console.firebase.google.com/project/me-indica-385813/database/me-indica-385813-default-rtdb/data/~2F?hl=pt-br"
});


var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/new', function(req, res, next) {
  res.render('new', { title: 'Novo Cadastro' });
});

module.exports = router;
