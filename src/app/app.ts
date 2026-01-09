import { Component, signal } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { HeaderLayout } from './components/layout/header/header';
import { FooterLayout } from "./components/layout/footer/footer";

@Component({
  selector: 'app-root',
  imports: [RouterOutlet, HeaderLayout, FooterLayout],
  templateUrl: './app.html',
})
export class App {
  protected readonly title = signal('eCifras');
}
