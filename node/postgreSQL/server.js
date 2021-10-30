/** 
 * Arquivo: server.js
 * Descrição: arquivi responsável por toda a configuração e execução da aplicação.
 * Data: 04/05/2021
 * Author: Cristian Passos
 */

const app = require('./src/app');

const port = process.env.PORT || 3000;

app.listen(port, () => {
    console.log('Aplicação executando na porta', port);
})