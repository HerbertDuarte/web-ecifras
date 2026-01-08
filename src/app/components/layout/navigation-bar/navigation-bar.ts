import { Location } from "@angular/common";
import { Component, inject, input } from "@angular/core";

@Component({
  selector : 'app-natigation-bar',
  templateUrl: "./navigation-bar.html"
})
export class NavigationBarComponent {
  location = inject(Location)
  title = input.required<string>()
}
