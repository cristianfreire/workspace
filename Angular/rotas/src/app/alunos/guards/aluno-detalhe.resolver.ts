import { AlunosService } from './../alunos.service';
import { Aluno } from './../aluno';
import { Observable } from 'rxjs';
import { Injectable } from "@angular/core";
import { Resolve, ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';

@Injectable()
export class AlunoDetalheResolver implements Resolve<Aluno>{
    constructor(private alunosService: AlunosService){}

    resolve(
        route: ActivatedRouteSnapshot,
        state: RouterStateSnapshot
    ): Observable<any> | Promise<any> | any{

        console.log('AlunosDetalheResolver')

        let id = route.params['id'];
        return this.alunosService.getAluno(id);
    }
}
