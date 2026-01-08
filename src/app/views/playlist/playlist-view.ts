import { Component, computed, inject, OnInit, signal } from "@angular/core";
import { Playlist } from "../../models/playlist";
import { JsonPipe } from "@angular/common";
import { ActivatedRoute } from "@angular/router";
import { first } from "rxjs";
import database from "../../../mock/database";
import { SongItem } from "../../components/song/song-item/song-item";

@Component({
  imports: [SongItem],
  templateUrl: "./playlist-view.html"
})
export class PlaylistView implements  OnInit{

  route = inject(ActivatedRoute)
  playlist = signal<Playlist | null>(null);
  notFoundSongId = signal<string | null>(null)

  stringItem = computed(()=> JSON.stringify(this.playlist(),null,2))

  ngOnInit(): void {
    this.route.params
      .pipe(first())
      .subscribe(params =>{
          const id = params['id'] as string;
          const playlistFound = database.find(item => item.id === id)
          if(!playlistFound){
            this.notFoundSongId.set(id)
            return;
          }
          this.playlist.set(playlistFound)
      })
  }
}
