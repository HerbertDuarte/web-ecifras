import { Component,  input, output } from "@angular/core";

@Component({
  selector : 'app-button',
  templateUrl: "./button.html"
})
export class ButtonComponent {
  label = input.required<string>()
  handleClick = output();
}
