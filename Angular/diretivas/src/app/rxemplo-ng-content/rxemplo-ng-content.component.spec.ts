import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { RxemploNgContentComponent } from './rxemplo-ng-content.component';

describe('RxemploNgContentComponent', () => {
  let component: RxemploNgContentComponent;
  let fixture: ComponentFixture<RxemploNgContentComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ RxemploNgContentComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(RxemploNgContentComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
