//
//  ContentView.swift
//  ToDoListApp
//
//  Created by Pubudu Dilshan on 2024-12-29.
//

import SwiftUI

// Task Model
struct Task: Identifiable {
    let id: UUID
    var name: String
    var isCompleted: Bool
}

struct ContentView: View {
    @State private var tasks: [Task] = [] // List of tasks
    @State private var newTaskName: String = "" // Input field for new tasks

    var body: some View {
        NavigationView {
            ZStack {
                // Background Color
                Color(.systemGray6)
                    .ignoresSafeArea()
                
                VStack(spacing: 20) {
                    // Title
                    Text("To-Do List")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top, 20)
                    
                    // Input Field with Add Button
                    HStack {
                        TextField("Enter a task...", text: $newTaskName)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                            .shadow(color: .gray.opacity(0.5), radius: 5, x: 0, y: 2)
                        
                        Button(action: addTask) {
                            Image(systemName: "plus.circle.fill")
                                .font(.system(size: 40))
                                .foregroundColor(.blue)
                        }
                        .shadow(color: .gray.opacity(0.5), radius: 5, x: 0, y: 2)
                    }
                    .padding(.horizontal)

                    // Task List
                    List {
                        ForEach(tasks) { task in
                            HStack {
                                // Task Name
                                Text(task.name)
                                    .font(.headline)
                                    .foregroundColor(task.isCompleted ? .gray : .black)
                                    .strikethrough(task.isCompleted, color: .gray)
                                
                                Spacer()
                                
                                // Completion Button
                                Button(action: {
                                    toggleTaskCompletion(task: task)
                                }) {
                                    Image(systemName: task.isCompleted ? "checkmark.circle.fill" : "circle")
                                        .font(.system(size: 25))
                                        .foregroundColor(task.isCompleted ? .green : .blue)
                                }
                            }
                            .padding(.vertical, 5)
                        }
                        .onDelete(perform: deleteTask)
                    }
                    .listStyle(InsetGroupedListStyle())
                }
            }
        }
    }

    // Add Task Function
    func addTask() {
        guard !newTaskName.isEmpty else { return }
        let newTask = Task(id: UUID(), name: newTaskName, isCompleted: false)
        tasks.append(newTask)
        newTaskName = "" // Clear the input field
    }

    // Toggle Completion Status
    func toggleTaskCompletion(task: Task) {
        if let index = tasks.firstIndex(where: { $0.id == task.id }) {
            tasks[index].isCompleted.toggle()
        }
    }

    // Delete Task
    func deleteTask(at offsets: IndexSet) {
        tasks.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
