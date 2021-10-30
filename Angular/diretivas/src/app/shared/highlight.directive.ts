import { Directive, HostListener, HostBinding, Input } from '@angular/core';

@Directive({
  selector: '[highlight]'
})
export class HighlightDirective {
 
  @HostListener('mouseenter') onMouseOver(){
    this.backgroundColor = this.highlightColor;
  }

  @HostListener('mouseleave') onMouseLeave(){
    this.backgroundColor = this.defaultColor;
  }


  @HostBinding('style.backgroundColor') backgroundColor;

  @Input() defaultColor = 'white';
  @Input('highlight') highlightColor  = 'yellow';

  constructor() { }

  ngOnInit() {
    this.backgroundColor = this.defaultColor;
  }

}
