import { Song } from "./song"

export type Playlist = {
  id: string
  name: string
  description: string
  songs: Song[]
}
