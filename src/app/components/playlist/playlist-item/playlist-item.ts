import { Component, input } from '@angular/core';
import { Playlist } from '../../../models/playlist';
import { RouterLink } from "@angular/router";

@Component({
  selector: 'app-playlist-item',
  imports: [RouterLink],
  templateUrl: './playlist-item.html',
})
export class PlaylistItem {

  playlist = input.required<Playlist>()

}
