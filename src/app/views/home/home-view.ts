import { Component } from '@angular/core';
import database from '../../../mock/database';
import { PlaylistItem } from '../../components/playlist/playlist-item/playlist-item';

@Component({
  selector: 'app-home-view',
  imports: [PlaylistItem],
  templateUrl: './home-view.html',
})
export class HomeView {

  playlists = database
}
