import { AlunosService } from './../alunos.service';
import { ActivatedRoute, Router } from '@angular/router';
import { Subscription } from 'rxjs';
import { Component, OnInit, OnDestroy } from '@angular/core';
import { Action } from 'rxjs/internal/scheduler/Action';
import { Aluno } from '../aluno';

@Component({
  selector: 'app-aluno-detalhe',
  templateUrl: './aluno-detalhe.component.html',
  styleUrls: ['./aluno-detalhe.component.css']
})
export class AlunoDetalheComponent implements OnInit, OnDestroy {

  id: number;
  aluno: Aluno;
  inscricao: Subscription;



  constructor(
    private route: ActivatedRoute,
    private router: Router,
    private alunosService: AlunosService
  ) { }

  ngOnInit() {
    /*this.inscricao = this.route.params.subscribe((params: any) => {
      this.id = params['id'];

      this.aluno = this.alunosService.getAluno(this.id);
    });*/

    console.log('ngOnInit: AlunoDetalheComponent');

    this.inscricao = this.route.data.subscribe((info: {aluno: Aluno}) => {
      console.log('Recebendo o obj Aluno do resolver');
      this.aluno = info.aluno;
    });
  }

  editarContato(){
    this.router.navigate(['/alunos', this.aluno.id, 'edit']);
  }

  ngOnDestroy(){
    this.inscricao.unsubscribe();
  }


}
