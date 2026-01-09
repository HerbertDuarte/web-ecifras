import { Component } from '@angular/core';
import database from '../../../mock/database';
import { PlaylistItem } from '../../components/playlist/playlist-item/playlist-item';
import { NavigationBarComponent } from "../../components/layout/navigation-bar/navigation-bar";

@Component({
  selector: 'app-home-view',
  imports: [PlaylistItem, NavigationBarComponent],
  templateUrl: './home-view.html',
})
export class HomeView {

  playlists = database

  greeting = 'Bem vindo ao eCifras'

  buttonProps = {
    label: 'IBE', handleClick : function(){}
  }
}
