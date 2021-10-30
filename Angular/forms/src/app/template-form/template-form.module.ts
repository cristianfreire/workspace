import { CampoControlErrorComponent } from './../campo-control-error/campo-control-error.component';
import { FormDebugComponent } from './../form-debug/form-debug.component';
import { FormsModule } from '@angular/forms';
import { TemplateFormComponent } from './template-form.component';
import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';



@NgModule({
  declarations: [TemplateFormComponent,
  FormDebugComponent,
CampoControlErrorComponent],
  imports: [
    CommonModule,
    FormsModule,
  ]
})
export class TemplateFormModule { }
