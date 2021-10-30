import { Component, OnInit, AfterContentChecked, AfterContentInit, AfterViewInit, AfterViewChecked, OnDestroy, Input } from '@angular/core';

@Component({
  selector: 'app-ciclo',
  templateUrl: './ciclo.component.html',
  styleUrls: ['./ciclo.component.css']
})
export class CicloComponent implements  OnInit, AfterContentChecked, AfterContentInit, AfterViewInit, AfterViewChecked, OnDestroy {
  @Input() valorInicial = 10;

  constructor() {
    this.log('constructor');
   }

  ngOnDestroy(){
   this.log('ngOnDestroy');
  }

  ngOnInit(){
    this.log('ngOnInit');
  }


  ngAfterContentInit(){
    this.log('ngAfterContentInit');
  }

  ngAfterContentChecked(){
    this.log('ngAfterContentChecked');
  }

  ngAfterViewInit(){
    this.log('ngAfterViewInit');
  }

  ngAfterViewChecked(){
    this.log('ngAfterViewChecked');
  }

  private log(hook: string){
    console.log(hook);
  }



}
