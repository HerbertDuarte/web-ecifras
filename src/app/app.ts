import { Component, signal } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { HeaderLayout } from './components/layout/header/header';

@Component({
  selector: 'app-root',
  imports: [RouterOutlet, HeaderLayout],
  templateUrl: './app.html',
})
export class App {
  protected readonly title = signal('eCifras');
}
