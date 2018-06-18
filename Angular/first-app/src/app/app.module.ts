import { BrowserModule } from '@angular/platform-browser';
import { NgModule, Component } from '@angular/core';
import { FormsModule } from '@angular/forms';
import { AppComponent } from './app.component';
import { Component1Component } from './component1/component1.component';
import { ContactFormComponent } from './contact-form/contact-form.component';
import { PostsComponent } from './posts/posts.component';
import { HttpModule} from '@angular/http';
import { NavbarComponent } from './navbar/navbar.component';
import { RouterModule} from '@angular/router';

@NgModule({
  declarations: [
    AppComponent,
    Component1Component,
    ContactFormComponent,
    PostsComponent,
    NavbarComponent
  ],
  imports: [
    BrowserModule,
    FormsModule,
    HttpModule,
    RouterModule.forRoot([
      { path: '', component: AppComponent},
      { path: '', component: Component1Component},
      { path: 'navbar', component: NavbarComponent}
    ])
   ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
 