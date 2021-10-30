
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { CanActivateChild, ActivatedRouteSnapshot, RouterStateSnapshot } from '@angular/router';

@Injectable()
export class AlunosGuard implements CanActivateChild {
    canActivateChild(
        route: ActivatedRouteSnapshot,
        state: RouterStateSnapshot
    ): Observable<boolean> | boolean{
        console.log('AlunosGuard: Guarda de rota filha');
        //console.log(route);
        //console.log(state);

        if (state.url.includes('edit')){
            //alert('Usuario sem acesso');
            //return false;
            
        }

        return true;
    }
   
}