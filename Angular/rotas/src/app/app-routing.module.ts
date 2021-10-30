import { PaginaNaoEncontradaComponent } from './pagina-nao-encontrada/pagina-nao-encontrada.component';
import { AlunosGuard } from './guards/alunos.guard';
import { CursosGuard } from './guards/cursos.guard';
import { AuthGuard } from './guards/auth-guard';
import { Routes, RouterModule } from '@angular/router';
import { ModuleWithProviders, NgModule } from '@angular/core';

// import { CursosComponent } from './cursos/cursos.component';
import { LoginComponent } from './login/login.component';
import { HomeComponent } from './home/home.component';
// import { CursoDetalheComponent } from './cursos/curso-detalhe/curso-detalhe.component';
// import { CursoNaoEncontradoComponent } from './cursos/curso-nao-encontrado/curso-nao-encontrado.component';


const appRoutes: Routes = [
    { path: 'cursos', 
      loadChildren: () => import ('src/app/cursos/cursos.module').then(m => m.CursosModule),
      canActivate:  [AuthGuard],
      canActivateChild: [CursosGuard],
      canLoad: [AuthGuard]
    },
    
    { path: 'alunos', 
      loadChildren: () => import ('src/app/alunos/alunos.module').then(m => m.AlunosModule),
      canActivate:  [AuthGuard],
      //canActivateChild: [AlunosGuard], 
      canLoad: [AuthGuard],
    },
    
    { path: 'login', component: LoginComponent },
    
    { path: 'home', component: HomeComponent,
      canActivate:  [AuthGuard] },

    { path: '', redirectTo: '/home', pathMatch: 'full'},

    { path: '**', component: PaginaNaoEncontradaComponent, 
      //canActivate: [AuthGuard]
    },
    // { path: 'cursos', component: CursosComponent },
    // { path: 'curso/:id', component: CursoDetalheComponent },
    // { path: 'nao-encontrado', component: CursoNaoEncontradoComponent},


];

export const routing: ModuleWithProviders = RouterModule.forRoot(appRoutes);

@NgModule({
  imports: [RouterModule.forRoot(appRoutes, {useHash: true})],
  exports: [RouterModule]
})

export class AppRoutingModule { }
