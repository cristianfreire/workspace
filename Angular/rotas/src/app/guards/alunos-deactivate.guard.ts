import { CommonModule } from '@angular/common';
import { IFormCanDeactivate } from './iform-candeactivate';
import { Observable } from 'rxjs';
import { AlunoFormComponent } from './../alunos/aluno-form/aluno-form.component';
import { Injectable } from '@angular/core';
import { CanDeactivate, ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';

@Injectable()
export class AlunosDeactivateGuard implements CanDeactivate<IFormCanDeactivate> {
    canDeactivate(
        component: IFormCanDeactivate,
        route: ActivatedRouteSnapshot,
        state: RouterStateSnapshot
    ): Observable<boolean> | Promise<boolean> | boolean {

        console.log('guarda de desativação');

        //return component.podeMudarRota();

        return component.podeDesativar();
    }
}