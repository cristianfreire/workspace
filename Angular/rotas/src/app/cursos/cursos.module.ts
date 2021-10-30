import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
// import { RouterModule } from '@angular/router';

import { CursosComponent } from './cursos.component';
import { CursoDetalheComponent } from './../cursos/curso-detalhe/curso-detalhe.component';
import { CursosService } from './cursos.service';
import { CursoNaoEncontradoComponent } from './../cursos/curso-nao-encontrado/curso-nao-encontrado.component';
import { CursosRoutingModule } from './cursos.routing.module';



@NgModule({
    imports: [
        CommonModule,
        CursosRoutingModule
        // RouterModule
    ],
    exports: [],
    declarations: [
        CursosComponent,
        CursoDetalheComponent,
        CursoNaoEncontradoComponent
    ],
    providers: [CursosService],
})

export class CursosModule {}