var express = require("express");
var router = express.Router();

var medidaController = require("../controllers/medidaController");

router.get("/ultimas/:idOrigem", function (req, res) {
    medidaController.buscarUltimasMedidas(req, res);
});

router.get("/ultimas2", function (req, res) {
    medidaController.buscarUltimasMedidas2(req, res);
});

router.get("/tempo-real/:idOrigem", function (req, res) {
    medidaController.buscarMedidasEmTempoReal(req, res);
});

router.get("/comparar/:idOrigem", function (req, res) {
    medidaController.comparar(req, res);
});

module.exports = router;