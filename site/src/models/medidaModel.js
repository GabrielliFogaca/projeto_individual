var database = require("../database/config");



function buscarUltimasMedidas(idOrigem, limite_linhas) {

    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "producao") {
        instrucaoSql = `SELECT COUNT(usuario.fkOrigem) as Qtd, origem.tipo AS origem 
        FROM usuario JOIN origem ON  origem.idOrigem = usuario.fkOrigem group by usuario.fkOrigem;
        `;
    } else if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `SELECT COUNT(usuario.fkOrigem) as Qtd, origem.tipo AS origem 
        FROM usuario JOIN origem ON  origem.idOrigem = usuario.fkOrigem group by usuario.fkOrigem;
        `;
    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarUltimasMedidas2() {

    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "producao") {
        instrucaoSql = `SELECT COUNT(usuario.fkCasa) as Qtd, casa.nome AS Casa 
        FROM usuario JOIN casa ON  casa.idCasa = usuario.fkCasa group by usuario.fkCasa;
        `;
    } else if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `SELECT COUNT(usuario.fkCasa) as Qtd, casa.nome AS Casa 
        FROM usuario JOIN casa ON  casa.idCasa = usuario.fkCasa group by usuario.fkCasa;
        `;
    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}

function buscarMedidasEmTempoReal(idOrigem) {

    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "producao") {
        instrucaoSql = `select top 1
        dht11_temperatura as temperatura, 
        dht11_umidade as umidade,  
                        CONVERT(varchar, momento, 108) as momento_grafico, 
                        fk_aquario 
                        from medida where fk_aquario = ${idOrigem} 
                    order by id desc`;

    } else if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `select 
        dht11_temperatura as temperatura, 
        dht11_umidade as umidade,
                        DATE_FORMAT(momento,'%H:%i:%s') as momento_grafico, 
                        fk_aquario 
                        from medida where fk_aquario = ${idOrigem} 
                    order by id desc limit 1`;
    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}




function comparar(idOrigem) {

    instrucaoSql = ''

    if (process.env.AMBIENTE_PROCESSO == "producao") {
        instrucaoSql = `SELECT COUNT(usuario.fkCasa) as casa, casa.nome AS Casa 
        FROM usuario JOIN casa ON  casa.idCasa = usuario.fkCasa group by usuario.fkCasa;`;

    } else if (process.env.AMBIENTE_PROCESSO == "desenvolvimento") {
        instrucaoSql = `SELECT COUNT(usuario.fkCasa) as casa, casa.nome AS Casa 
        FROM usuario JOIN casa ON  casa.idCasa = usuario.fkCasa group by usuario.fkCasa;`;
    } else {
        console.log("\nO AMBIENTE (produção OU desenvolvimento) NÃO FOI DEFINIDO EM app.js\n");
        return
    }

    console.log("Executando a instrução SQL: \n" + instrucaoSql);
    return database.executar(instrucaoSql);
}



module.exports = {
    buscarUltimasMedidas,
    buscarUltimasMedidas2,
    buscarMedidasEmTempoReal,
    comparar
}
