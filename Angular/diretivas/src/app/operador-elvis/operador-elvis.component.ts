import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-operador-elvis',
  templateUrl: './operador-elvis.component.html',
  styleUrls: ['./operador-elvis.component.css']
})
export class OperadorElvisComponent implements OnInit {

  tarefa = {
    desc: 'Descrição da tarefa',
    responsavel: {
      usuario: null
    }
    // responsavel: { nome: 'Cristian' }
  };

  constructor() { }

  ngOnInit(): void {
  }

}
