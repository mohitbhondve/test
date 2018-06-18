import { Component, OnInit } from '@angular/core';
import { Http, Response } from '@angular/http';

@Component({
  selector: 'posts',
  templateUrl: './posts.component.html',
  styleUrls: ['./posts.component.css']
})
export class PostsComponent {

  //get data 
  posts : any[];
  private url='http://jsonplaceholder.typicode.com/posts';
  constructor(private http:Http) {
    http.get(this.url)
    .subscribe(response=>{
        this.posts = response.json();
    });


  }

  // create data
  createPost(input : HTMLInputElement)
  { 
      let post:any ={ title : input.value};
      input.value = '';

      this.http.post(this.url,JSON.stringify(post))
      .subscribe(response=>{
       post['id'] = response.json().id;
       this.posts.splice(0,0,post);

      });
  }
}
