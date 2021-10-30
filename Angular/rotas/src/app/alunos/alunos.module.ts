import { AlunoDetalheResolver } from './guards/aluno-detalhe.resolver';
import { AlunosDeactivateGuard } from './../guards/alunos-deactivate.guard';
import { AlunosService } from './alunos.service';
import { FormsModule } from '@angular/forms';
import { AlunosRoutingModule } from './alunos-routing.module';
import { CommonModule } from '@angular/common';
import { AlunosComponent } from './alunos.component';
import { NgModule } from "@angular/core";
import { AlunoFormComponent } from './aluno-form/aluno-form.component';
import { AlunoDetalheComponent } from './aluno-detalhe/aluno-detalhe.component';

@NgModule({
    imports: [
        CommonModule,
        AlunosRoutingModule,
        FormsModule,
    ],
    exports: [],
    declarations: [AlunosComponent, AlunoFormComponent, AlunoDetalheComponent],
    providers: [
        AlunosService,
        AlunosDeactivateGuard,
        AlunoDetalheResolver ],
})

export class AlunosModule {}