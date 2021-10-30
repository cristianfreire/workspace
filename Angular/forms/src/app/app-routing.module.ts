import { DataFormComponent } from './data-form/data-form.component';
import { TemplateFormComponent } from './template-form/template-form.component';
import { NgModule } from '@angular/core';
import { FormsModule} from '@angular/forms';
import { Routes, RouterModule } from '@angular/router';


const routes: Routes = [
  { path: 'templateForm', component: TemplateFormComponent},
  {path: 'dataForm', component: DataFormComponent  },
  { path: '', pathMatch: 'full', redirectTo: 'templateForm'}
];

@NgModule({
  imports: [RouterModule.forRoot(routes), FormsModule],
  exports: [RouterModule]
})
export class AppRoutingModule { }
