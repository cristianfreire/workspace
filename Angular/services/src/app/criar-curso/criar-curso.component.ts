import { CursosService } from './../cursos/cursos.service';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-criar-curso',
  templateUrl: './criar-curso.component.html',
  styleUrls: ['./criar-curso.component.css']
})
export class CriarCursoComponent implements OnInit {

  cursos = [];

  constructor(private cursoService: CursosService) { }

  ngOnInit(): void {
    this.cursos = this.cursoService.getCursos();
  }

  onAddCurso(curso){
    this.cursoService.addCursos(curso);
  }

}
