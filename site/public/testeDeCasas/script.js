var perguntas = [

    {
        pergunta: "Qual é a sua personalidade predominante?",
        opcoes: [
          { texto: "Corajoso(a)", casa: "Grifinória" },
          { texto: "Inteligente", casa: "Corvinal" },
          { texto: "Astuto(a)", casa: "Sonserina" },
          { texto: "Leal", casa: "Lufa-Lufa" }
        ]
      },
      {
        pergunta: "Qual é a sua matéria favorita?",
        opcoes: [   
        { texto: "Ocultismo", casa: "Sonserina" },
          { texto: "Trato das Criaturas Mágicas", casa: "Grifinória" },
          { texto: "Inteligente", casa: "Corvinal" },
          { texto: "Herbologia", casa: "Lufa-Lufa" }
        ]
      },
      {
        pergunta: "Escolha uma varinha",
        opcoes: [
         { texto: "Feita para magia não verbal, encantamentos e adivinhação", casa: "Corvinal" },
          { texto: "Varinhas de núcleo de pena de Fênix", casa: "Grifinória" },
          { texto: "Feita para cura, encantamentos e feitiços de proteção", casa: "Lufa-Lufa" },
          { texto: "Madeira de cedro, de ébano ou de teixo.", casa: "Sonserina" }
        ]
      },
      {
        pergunta: "Quais destes valores são mais importantes para você?",
        opcoes: [
            { texto: "Sabedoria", casa: "Corvinal" },
            { texto: "Ambição", casa: "Sonserina" },
            { texto: "Determinação", casa: "Grifinória" },
            { texto: "Paciência", casa: "Lufa-Lufa" }
        ]
      },
      {
        pergunta: "Qual destes defeitos você possui?",
        opcoes: [
            { texto: "Manipulação", casa: "Sonserina" },
            { texto: "Orgulho intelectual", casa: "Corvinal" },
            { texto: "Impulsividade", casa: "Grifinória" },
            { texto: "Dificuldade em impor limites", casa: "Lufa-Lufa" }
        ]
      },
    {
      pergunta: "Qual destes medos tem mais a ver com você?",
      opcoes: [
        { texto: "O medo de serem rejeitados ou excluídos pelos outros.", casa: "Lufa-Lufa" },
        { texto: "O medo de perder entes queridos ou ser incapaz de protegê-los.", casa: "Grifinória" },
        { texto: "O medo de ser considerado fraco ou insignificante pelos outros.", casa: "Sonserina" },
        { texto: "Medo de serem incompreendidos ou subestimados .", casa: "Corvinal" }
      ]
    },
    {
      pergunta: "Escolha um poder:",
      opcoes: [
        { texto: "Invisibilidade", casa: "Grifinória" },
        { texto: "Teletransportar", casa: "Lufa-Lufa" },
        { texto: "Telepatia", casa: "Corvinal" },
        { texto: "Ler mentes", casa: "Sonserina" }
      ]
    },
    {
      pergunta: "Escolha um feitiço",
      opcoes: [
        { texto: "Accio: para chamar objetos à distância. É um feitiço prático para obter informações e recursos.", casa: "Corvinal" },
        { texto: "Estupefaça: é um feitiço ofensivo bastante utilizado para desabilitar temporariamente um oponente.", casa: "Grifinória" },
        { texto: "Cruciatus: é uma maldição imperdoável que causa dor excruciante ao alvo.", casa: "Sonserina" },
        { texto: "Protego: O Feitiço Protego é usado para criar um escudo protetor.", casa: "Lufa-Lufa" }
      ]
    },
    {
      pergunta: "Escolha um animal",
      opcoes: [
        { texto: "Cobra", casa: "Sonserina" },
        { texto: "Leão", casa: "Grifinória" },
        { texto: "Texugo", casa: "Lufa-Lufa" },
        { texto: "Corvo", casa: "Corvinal" }
      ]
    },
    {
      pergunta: "Qual desses insultos deixaria você mais irritado?",
      opcoes: [
        { texto: "Covarde", casa: "Grifinória" },
        { texto: "Fraco(a)", casa: "Sonserina" },
        { texto: "Estúoido", casa: "Corvinal" },
        { texto: "Egoísta", casa: "Lufa-Lufa" }
      ]
    }
  ];
  
var perguntaAtual = 0;
var respostas = [];

var perguntaDiv = document.getElementById("pergunta");
var opcoesDiv = document.getElementById("opcoes");
var btnResponder = document.getElementById("btnResponder");
var resultadoDiv = document.getElementById("resultado");

function exibirPergunta() {
  var pergunta = perguntas[perguntaAtual];

  perguntaDiv.innerText = pergunta.pergunta;
  opcoesDiv.innerHTML = "";

  pergunta.opcoes.forEach(function (opcao) {
    var btnOpcao = document.createElement("button");
    btnOpcao.innerText = opcao.texto;
    btnOpcao.addEventListener("click", function () {
      selecionarOpcao(opcao);
    });
    opcoesDiv.appendChild(btnOpcao);
  });
}

function selecionarOpcao(opcao) {
  respostas.push(opcao);

  if (perguntaAtual < perguntas.length - 1) {
    perguntaAtual++;
    exibirPergunta();
  } else {
    exibirResultado();
  }
}

function exibirResultado() {
  var resultado = "Você pertence à casa: " + obterCasaSelecionada();
  resultadoDiv.innerText = resultado;

  perguntaDiv.style.display = "none";
  opcoesDiv.style.display = "none";
  btnResponder.style.display = "none";
  resultadoDiv.style.display = "block";
}

function obterCasaSelecionada() {
  var casas = {
    Grifinória: 0,
    Sonserina: 0,
    Corvinal: 0,
    "Lufa-Lufa": 0
  };

  respostas.forEach(function (resposta) {
    casas[resposta.casa]++;
  });

  var casaSelecionada = Object.keys(casas).reduce(function (a, b) {
    return casas[a] > casas[b] ? a : b;
  });

  return casaSelecionada;
}

exibirPergunta();