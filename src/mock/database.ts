import { Playlist } from "../app/models/playlist";

const database: Playlist[] = [
  {
    id: "3",
    name: "Louvor de domingo - IBE",
    description: "Músicas de adoração e louvor",
    songs: [
      {
        id: "3-1",
        name: "Boa parte",
        tone: "E",
        verses: [
          {
            id: "3-1-1",
            verse: "Precioso Jesus",
            chords: ["E"]
          },
          {
            id: "3-1-1",
            verse: "Tuas palavras são mais desejáveis",
            chords: ["E", "A","B"]
          },
          {
            id: "3-1-1",
            verse: "Que o mais doce mel",
            chords: ["C#m", "A", "E"]
          },
          {
            id: "3-1-2",
            verse: "Tudo que tenho, Eu derramo aos Teus pés",
            chords: ["E", "A", "E", "C#m", "A", "E", "(2x)"]
          },

          {
            id: "3-1-3",
            verse: "Eu econtrei o meu tesouro (1 Parte)",
            chords: ["E","E4","(A","B)", "E"]
          },
          {
            id: "3-1-33",
            verse: "Eu econtrei o meu tesouro (2 Parte)",
            chords: ["C#m","F#m","E","A","B"]
          },
          {
            id: "3-1-4",
            verse: "Como Maria, que estava aos seus pés",
            chords: ["B",  "A"]
          },
        ]
      },
      {
        id: "3-12",
        name: "Vitória No Deserto",
        tone: "G",
        verses: [
          {
            id:"a-12321",
            verse:"Sequência única",
            chords: ["G", "D","Em", "C"],
          }
        ]
      },
      {
        id: "3-122",
        name: "Toda Sorte de Bênçãos",
        tone: "?",
        verses: [
          {
            id:"a-1124",
            verse:"Por onde eu for a tua  benção me seguirá",
            chords: ["1", "5","4"],
          },
          {
            id:"a-123",
            verse:"Pros_perarei, transbordarei",
            chords: ["2m", "6m","5", "(2x)"],
          },
          {
            id:"a-123234233",
            verse:"Para direita , para esquerda",
            chords: ["1", "5","6m","4"],
          },
          {
            id:"a-11233223",
            verse:"Por todo lado, ôôôô, sou abençoado",
            chords: ["1", "5","6m","4"],
          },
        ]
      },
      {
        id: "3-12as2",
        name: "Ouço Deus Me Chamar",
        tone: "F",
        verses: [
          {
            id:"a-1dsf124",
            verse:"Alta madrugada vai Já estou deitado",
            chords: ["F", "Bb"],
          },
          {
            id:"F1dsf124",
            verse:"Meu coração se aperta Eu ando tão cansado",
            chords: ["Dm", "C/E", "Bb", "(Preparaçao Gm)"],
          },
          {
            id:"F1dsf1asdasd24",
            verse:"Eu vou Já tô indo ao Teu encontro, Senhor",
            chords: ["F", "C", "Gm7(9)", "Bb"],
          },
          {
            id:"fsafgassf1asdasd24",
            verse:"Preparação para repetir",
            chords: [ "Dm7", "C", "Gm7", "D#9" ],
          },
          {
            id:"124fsasfasfa",
            verse:"Nem que seja pra ficarmos",
            chords: [ "Dm7", "Bb", "Dm7", "F" , "C"],
          },
          {
            id:"3fcsdsgfsasfasfa",
            verse:"Não há como desprezar o Teu chamado",
            chords: [ "Gm7", "F","(2x)", "(Preparaçao C)"],
          }
        ]
      },
      {
        id: "3-12as1323122",
        name: "Alfa e Omega",
        tone: "E",
        verses: [
          {
            id:"12534fasdf34",
            verse:"Não há outro como Tu",
            chords: [ "A", "E/G#"],
          },
          {
            id:"324ASFDFSD",
            verse:"Reina sobre a terra e céus",
            chords: [ "A", "B"],
          },
          {
            id:"6GHDFG3432SDFf",
            verse:"Tu és o Alfa e Ômega",
            chords: [ "E", "B", "A", "F#m", "B"],
          },
          {
            id:"FDFS44FFF4A",
            verse:"Tu és o Alfa e Ômega (2 PARTE)",
            chords: [ "C#m", "B", "E", "E/G#", "A", "F#m","B"],
          },
          {
            id:"ddsdf4235423",
            verse:"SOLO",
            chords: [ "A", "B", "C#m", "F#m#","E", "C#m", "B", "(2x)"],
          },
        ],
      },
      {
        id: "3-easdasdasdas",
        name: "Gratidão",
        tone: "E",
        verses: [
          {
            id:"12534fasdf34",
            verse:"Nada novo achei",
            chords: [ "E", "C#m", "B", "A"],
          },
          {
            id:"1253ASFASFASFsdf34",
            verse:"Então vou derramar",
            chords: [ "E", "B", "A", "C#m", "B"],
          },
          {
            id:"asd534fgffdf",
            verse:"Ei, meu coração não se envergonhe",
            chords: ["E", "B", "A", "(C#m", "B)"],
          },
        ]
      }
    ]
  }
]

export default database
