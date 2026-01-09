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

    ]
  }
]

export default database
