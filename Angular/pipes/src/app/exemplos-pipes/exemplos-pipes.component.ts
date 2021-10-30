import { Component, OnInit, Pipe } from '@angular/core';
import { Observable, interval, Observer } from 'rxjs';
import { NumberSymbol } from '@angular/common';

@Component({
  selector: 'app-exemplos-pipes',
  templateUrl: './exemplos-pipes.component.html',
  styleUrls: ['./exemplos-pipes.component.css']
})
export class ExemplosPipesComponent implements OnInit {

  livro: any = {
    titulo: 'Learning JavaScript Data Structures and Algorithms, 3rd Ed',
    rating: 3.54321,
    numeroPaginas: 428,
    preco: 118.99,
    dataLancamento: new Date(2018, 3, 30),
    url: 'https://ler.amazon.com.br/kp/embed?asin=B077NB5H6Y&preview=newtab&linkCode=kpe&ref_=cm_sw_r_kb_dp_KYnbFb5XR7CRG'
  };

  livros: string[] = ['Java', 'Angular'];

  filtro: string;

  addCurso(valor){
    this.livros.push(valor);
    console.log(this.livros);
  }

  obterCursos(){
    if (this.livros.length === 0 || this.filtro === undefined || this.filtro.trim() === ''){
      return this.livros;
    }

    return this.livros.filter((v) => {
      if (v.toLocaleLowerCase().indexOf(this.filtro.toLowerCase()) >= 0){
        return true;
      }
      return false;
    })
  }

  valorAsync = new Promise((resolve, reject) => {
    setTimeout(() => resolve('Valor assíncrono'), 2000);
  });

  valorAsync2 = new Observable<string>((observer: Observer<string>) => {
    setInterval(() => observer.next('Valor assíncrono 2'), 2000);
  });

 
  constructor() { }

  ngOnInit(): void {
  }

}
