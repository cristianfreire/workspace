import { CursoNaoEncontradoComponent } from './curso-nao-encontrado/curso-nao-encontrado.component';
import { CursoDetalheComponent } from './curso-detalhe/curso-detalhe.component';
import { Routes, RouterModule } from '@angular/router';
import { CursosComponent } from './cursos.component';
import { NgModule } from '@angular/core';

const cursosRoutes: Routes = [
    { path: '', component: CursosComponent},
    { path: 'naoEncontrado', component: CursoNaoEncontradoComponent},
    { path: ':id', component: CursoDetalheComponent},
];  

@NgModule({
    imports: [RouterModule.forChild(cursosRoutes)],
    exports: [RouterModule]
})

export class CursosRoutingModule {}
