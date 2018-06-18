import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-component1',
  templateUrl: './component1.component.html',
  styleUrls: ['./component1.component.css']
})
export class Component1Component implements OnInit {

  courses = [1,2,3];
  viewMode = 'map';
  isSelected = "true";

  coursess;

  loadCourses()
  {
    this.coursess = [
      { id:1 ,name:"course1"},
      { id:2 ,name:"course2"},
      { id:3 ,name:"course3"}
    ];

  }


  trackCourse(id,c)
  {
    return  c ? c.id : undefined;
  }

  constructor() { }

  ngOnInit() {
  }

}
