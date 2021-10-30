import { Http } from '@angular/http';
import { Component, OnInit } from '@angular/core';
import 'rxjs/add/operator/map';

@Component({
  selector: 'app-template-form',
  templateUrl: './template-form.component.html',
  styleUrls: ['./template-form.component.css']
})
export class TemplateFormComponent implements OnInit {

  usuario: any = {
    nome: null,
    email: null,
  } 

  onSubmit(form){
    console.log(form);
    console.log(this.usuario);  
  }

  constructor(private http: Http) { }

  ngOnInit(): void {
  }

  verificaValidTouched(campo){
    return !campo.valid && campo.touched;
  }
 
  aplicaCssError(campo){
    return  {
      'has-error': this.verificaValidTouched(campo)
  }
  }

  consultaCEP(cep){
    // Nova variável "cep" somente com dígitos.
    cep = cep.val().replace(/\D/g, '');

    // Verifica se o campo cep possui valor informado
    if (cep != ""){
       // Expressão regular para validar o CEP.
       var validacep = /^[0-9]{8}$/;

       // Valida o formato CEP.
       if (validacep.test(cep)){
         this.http.get(`//viacep.com.br/ws/${cep}/json/`)
         .map(dados => dados.json())
         .subscribe((dados) => {
           console.log(dados);
         });
       }
    }
  }

}
