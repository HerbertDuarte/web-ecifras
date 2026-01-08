import { Verse } from "./verse"
import { Tone } from "./tone"

export type Song = {
  id: string
  name: string
  tone: Tone,
  verses: Verse[]
}
