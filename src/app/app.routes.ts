import { Routes } from '@angular/router';

export const routes: Routes = [
  {
    loadComponent: ()=> import("./views/home/home-view").then(c => c.HomeView),
    path : ""
  },
    {
    loadComponent: ()=> import("./views/playlist/playlist-view").then(c => c.PlaylistView),
    path : "playlist/:id",
  },
];
