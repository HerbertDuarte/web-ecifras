import { Playlist } from "../app/models/playlist";

const database: Playlist[] = [
  {
    id: "1",
    name: "Clássicos do Rock",
    description: "As melhores músicas de rock de todos os tempos",
    songs: [
      {
        id: "1-1",
        name: "Wonderwall",
        tone: "Em",
        verses: [
          {
            id: "1-1-1",
            verse: "Intro",
            chords: ["Em", "G", "Dsus4", "A7sus4"]
          },
          {
            id: "1-1-2",
            verse: "Today is gonna be the day",
            chords: ["Em", "G", "Dsus4", "A7sus4"]
          },
          {
            id: "1-1-3",
            verse: "That they're gonna throw it back to you",
            chords: ["Em", "G", "Dsus4", "A7sus4"]
          },
          {
            id: "1-1-4",
            verse: "By now you should've somehow",
            chords: ["Em", "G", "Dsus4", "A7sus4"]
          },
          {
            id: "1-1-5",
            verse: "Realized what you gotta do",
            chords: ["Em", "G", "Dsus4", "A7sus4"]
          },
          {
            id: "1-1-6",
            verse: "And maybe you're gonna be the one that saves me",
            chords: ["C", "D", "Em"]
          },
          {
            id: "1-1-7",
            verse: "And after all you're my wonderwall",
            chords: ["C", "D", "Em"]
          }
        ]
      },
      {
        id: "1-2",
        name: "Knockin' on Heaven's Door",
        tone: "G",
        verses: [
          {
            id: "1-2-1",
            verse: "Mama, take this badge off of me",
            chords: ["G", "D", "Am"]
          },
          {
            id: "1-2-2",
            verse: "I can't use it anymore",
            chords: ["G", "D", "C"]
          },
          {
            id: "1-2-3",
            verse: "It's gettin' dark, too dark to see",
            chords: ["G", "D", "Am"]
          },
          {
            id: "1-2-4",
            verse: "I feel I'm knockin' on heaven's door",
            chords: ["G", "D", "C"]
          },
          {
            id: "1-2-5",
            verse: "Knock, knock, knockin' on heaven's door",
            chords: ["G", "D", "Am"]
          }
        ]
      },
      {
        id: "1-3",
        name: "Hotel California",
        tone: "Bm",
        verses: [
          {
            id: "1-3-1",
            verse: "On a dark desert highway",
            chords: ["Bm"]
          },
          {
            id: "1-3-2",
            verse: "Cool wind in my hair",
            chords: ["F#"]
          },
          {
            id: "1-3-3",
            verse: "Warm smell of colitas",
            chords: ["A"]
          },
          {
            id: "1-3-4",
            verse: "Rising up through the air",
            chords: ["E"]
          },
          {
            id: "1-3-5",
            verse: "Welcome to the Hotel California",
            chords: ["G", "D"]
          },
          {
            id: "1-3-6",
            verse: "Such a lovely place",
            chords: ["Em", "F#"]
          }
        ]
      }
    ]
  },
  {
    id: "2",
    name: "MPB Brasileiro",
    description: "Música Popular Brasileira para tocar no violão",
    songs: [
      {
        id: "2-1",
        name: "Evidências",
        tone: "D",
        verses: [
          {
            id: "2-1-1",
            verse: "Quando eu digo que deixei de te amar",
            chords: ["D", "A", "Bm"]
          },
          {
            id: "2-1-2",
            verse: "É porque eu te amo",
            chords: ["G", "A", "D"]
          },
          {
            id: "2-1-3",
            verse: "Quando eu digo que não quero mais você",
            chords: ["D", "A", "Bm"]
          },
          {
            id: "2-1-4",
            verse: "É porque eu te quero",
            chords: ["G", "A", "D"]
          },
          {
            id: "2-1-5",
            verse: "Eu tenho medo de te dar meu coração",
            chords: ["G", "D", "Em"]
          },
          {
            id: "2-1-6",
            verse: "E confessar que eu estou em suas mãos",
            chords: ["A", "D"]
          }
        ]
      },
      {
        id: "2-2",
        name: "Será",
        tone: "Am",
        verses: [
          {
            id: "2-2-1",
            verse: "Será que é isso o que me encanta",
            chords: ["Am", "Dm"]
          },
          {
            id: "2-2-2",
            verse: "Será que é isso o que me atrai",
            chords: ["G", "C"]
          },
          {
            id: "2-2-3",
            verse: "Será que é isso que me faz sofrer",
            chords: ["F", "Dm"]
          },
          {
            id: "2-2-4",
            verse: "E me faz chorar por você",
            chords: ["E", "Am"]
          }
        ]
      }
    ]
  },
  {
    id: "3",
    name: "Gospel",
    description: "Músicas de adoração e louvor",
    songs: [
      {
        id: "3-1",
        name: "Tua Graça Me Basta",
        tone: "C",
        verses: [
          {
            id: "3-1-1",
            verse: "Tua graça me basta",
            chords: ["C", "G"]
          },
          {
            id: "3-1-2",
            verse: "Teu amor me sustenta",
            chords: ["Am", "F"]
          },
          {
            id: "3-1-3",
            verse: "Teu poder me levanta",
            chords: ["C", "G"]
          },
          {
            id: "3-1-4",
            verse: "E me faz prosseguir",
            chords: ["F", "G", "C"]
          }
        ]
      },
      {
        id: "3-2",
        name: "君をのせて (Carrying You)",
        tone: "F",
        verses: [
          {
            id: "3-2-1",
            verse: "あの地平線 輝くのは",
            chords: ["F", "C"]
          },
          {
            id: "3-2-2",
            verse: "どこかに君を 隠しているから",
            chords: ["Dm", "Am", "Bm"]
          },
          {
            id: "3-2-3",
            verse: "たくさんの灯が なつかしいのは",
            chords: ["F", "C"]
          },
          {
            id: "3-2-4",
            verse: "あのどれか一つに 君がいるから",
            chords: ["Dm", "G", "C"]
          }
        ]
      }
    ]
  }
]

export default database
