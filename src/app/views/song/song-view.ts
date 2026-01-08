import { Component, computed, inject, OnInit, signal } from "@angular/core";
import { ActivatedRoute } from "@angular/router";
import { first } from "rxjs";
import database from "../../../mock/database";
import { Song } from "../../models/song";
import { NavigationBarComponent } from "../../components/layout/navigation-bar/navigation-bar";

@Component({
  imports: [NavigationBarComponent],
  templateUrl: "./song-view.html"
})
export class SongView implements  OnInit{

  route = inject(ActivatedRoute)
  song = signal<Song | null>(null);
  notFoundSongId = signal<string | null>(null)

  stringItem = computed(()=> JSON.stringify(this.song(),null,2))

  ngOnInit(): void {
    this.route.params
      .pipe(first())
      .subscribe(params =>{
          const id = params['id'] as string;
          const songs:Song[] = [];
          database.forEach(playlist => songs.push(...playlist.songs))
          const songFound = songs.find(song => song.id === id) ?? null
          if(!songFound){
            this.notFoundSongId.set(id)
            return;
          }
          this.song.set(songFound)
      })
  }
}
