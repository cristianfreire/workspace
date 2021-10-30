/**
 * Arquivo: src/routes/index.js
 * Descrição: arquivo responsável pela chamada de Api da aplicação.
 * Data: 04/05/2021
 * Author: Cristian Passos
 */

const express = require('express');

const router = express.Router();

router.get('/api', (req, res) => {
    res.status(200).send({
        success: 'true',
        message: 'Seja bem-vindo(a) a API Node.js + PostgreSQL + Azure',
        version: '1.0.0',
    });
});

module.exports = router;