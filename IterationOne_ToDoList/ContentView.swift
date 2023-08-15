//
//  ContentView.swift
//  IterationOne_ToDoList
//
//  Created by scholar on 6/20/23.
//

//** This file contains all the code for the root UI**

import SwiftUI

struct ContentView: View {
    @State var toDoItems: [ToDoItem] = []
    @State private var showNewTask =
    false
    //Add a State property called showNewTask that is set to false
    
    var body: some View {
        VStack {
            HStack {
                Text("To Do List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                
                Spacer()
                
                Button(action: {
                    self.showNewTask = true
                    
                }) {
                Text("+")
                        .font(.largeTitle)
                }
            }
            .padding()
            Spacer()
            
            List {
                ForEach (toDoItems) {toDoItem in if toDoItem.isImportant == true {
                    Text("‼️" + toDoItem.title)
                } else {
                    Text(toDoItem.title)
                }
                    
                }
                
                //Add the ForEach statement here
                    //Later, delete the Text View and add an if statement inside the list view that indicates to add !! to ToDoItems that are marked important
            }
            //Add the plain listStyle modifier here
        }
        
        if showNewTask {
            NewToDoView(title: "", isImportant:
                            false,
                        toDoItems: $toDoItems,
                        showNewTask: $showNewTask)
                }
        //Add an if statement here that indicates if showNewTask is true, then NewToDoView will be displayed
            //Later, bind toDoItems: $toDoItems in this if statement
            //Later, bind showNewTask: $showNewTask in this if statement
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
