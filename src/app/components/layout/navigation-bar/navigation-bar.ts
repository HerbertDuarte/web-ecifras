import { Location } from "@angular/common";
import { Component, inject, input } from "@angular/core";
import { ButtonComponent } from "../../common/ui/button/button";

type ButtonProps = {
  label: string
  handleClick: ()=> void;
}

@Component({
  selector : 'app-navigation-bar',
  templateUrl: "./navigation-bar.html",
  imports: [ButtonComponent]
})
export class NavigationBarComponent {
  location = inject(Location)
  title = input.required<string>()
  button = input<ButtonProps>()
}
