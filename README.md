# **📝 Ruby To-Do List CLI -**  
*A simple, terminal-based task manager built with Ruby*  

*📝 A simple, command-line to-do list manager built with Ruby. Add, delete, and mark tasks as complete—all from your terminal! Perfect for Ruby beginners learning file I/O and CLI interaction.*

![Ruby](https://img.shields.io/badge/Ruby-3.x+-red)  
![License](https://img.shields.io/badge/License-MIT-green)  

---

## **🚀 Features**  
- ✅ Add, list, edit, and delete tasks  
- ✅ Mark tasks as complete/incomplete  
- 💾 Optional: Save tasks to a JSON file (persists between runs)  
- 🖥️ Clean, intuitive command-line interface  

---

## **⚙️ Installation**  

### **Prerequisites**  
- Ruby **3.0+** ([Download Ruby](https://www.ruby-lang.org/en/downloads/))  

### **Steps**  
1. **Clone the repo**:  
   ```bash
   git clone https://github.com/Kirankumarvel/Ruby-todo-cli-.git
   cd ruby-todo-cli
   ```

2. **Make the script executable (Linux/Mac)**:  
   ```bash
   chmod +x bin/todo
   ```  
   *(Windows users: Skip this step and use `ruby bin/todo` instead.)*

---

## **🛠️ Usage**  
Run the app:  
```bash
./bin/todo
```  
*(Windows: Use `ruby bin/todo`)*  

### **Commands**  
| Option | Action                  | Example                  |
|--------|-------------------------|--------------------------|
| 1      | Add a new task          | `"Buy groceries"`        |
| 2      | List all tasks          | Shows numbered tasks     |
| 3      | Mark task as complete   | Enter task number (e.g., `1`) |
| 4      | Delete a task           | Enter task number        |
| 5      | Exit the app            | Saves tasks (if enabled) |

---

## **📂 Project Structure**  
```
ruby-todo-cli/
├── bin/
│   └── todo             # Executable script
├── lib/
│   ├── todo.rb          # Main logic
│   └── storage.rb       # (Optional) JSON storage
├── README.md
└── LICENSE
```

---

## **🔧 Customization**  

### **Enable Persistent Storage**  
1. Uncomment the `require_relative 'storage'` line in `lib/todo.rb`.  
2. Tasks will auto-save to `~/.todo_list.json`.  

### **Add New Features**  
- **Due Dates**: Extend the task hash in `todo.rb`:  
  ```ruby
  @tasks << { name: task, completed: false, due_date: "2023-12-31" }
  ```
- **Categories**: Add a `category` field and filter tasks by it.  

---

## **🤝 Contributing**  
1. Fork the project.  
2. Create a branch (`git checkout -b feature/your-feature`).  
3. Commit changes (`git commit -m 'Add some feature'`).  
4. Push to the branch (`git push origin feature/your-feature`).  
5. Open a **Pull Request**.  

---

## **📜 License**  
MIT © [Kiran KUmar](https://github.com/Kirankumarvel)  

---

## **💡 Why Build This?**  
- Learn **Ruby fundamentals** (I/O, arrays, hashes).  
- Practice **CLI app design**.  
- Extend it with **APIs or databases** (e.g., SQLite).  

---

**Happy Coding!** ✨  

--- 

