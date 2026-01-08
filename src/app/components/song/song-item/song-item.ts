import { Component, input } from '@angular/core';
import { Song } from '../../../models/song';
import { RouterLink } from '@angular/router';

@Component({
  selector: 'app-song-item',
  imports: [RouterLink],
  templateUrl: './song-item.html',
})
export class SongItem {
  song = input.required<Song>()

}
