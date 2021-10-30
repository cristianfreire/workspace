import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-data-binding',
  templateUrl: './data-binding.component.html',
  // styleUrls: ['./data-binding.component.css']
  styles: [
    `
    .highlight {
      background-color: yellow;
      font-weight: bold;
  }
    `
  ]
})
export class DataBindingComponent implements OnInit {

  url = 'https://cristianfreire.github.io';
  cursoAngular = true;
  urlImagem =  'http://lorempixel.com/400/200/nature/';

  valorAtual = '';
  valorSalvo = '';

  isMouseOver = false;

  nomeDoCurso = 'Angular';

  valorInicial = 15;

  getValor(){
    return 1;
  }

  getCurtirCurso(){
    return true;
  }

  onKeyUp(evento: KeyboardEvent){
    console.log();
    this.valorAtual = (evento.target as HTMLInputElement).value;
    // this.valorAtual = (<HTMLInputElement>evento.target) .value;
  }

  botaoClicado(){
    alert('Botão clicado');
  }

  salvarValor(valor){
    this.valorSalvo = valor;
  }

  onMouseOverOut(){
    this.isMouseOver = !this.isMouseOver;
  }

  onMudouValor(evento){
    console.log(evento.novoValor);
  }

  constructor() { }

  ngOnInit(): void {
  }

}
