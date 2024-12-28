
# To-Do List App with Improved UI 🌟

A simple, elegant, and user-friendly To-Do List app built with SwiftUI. This app helps you manage tasks effectively with a clean and modern user interface.

---

## 🚀 Features

- **Add Tasks**: Quickly add tasks with a responsive input field.
- **Mark Tasks as Complete**: Tap the completion button to mark tasks as done.
- **Delete Tasks**: Swipe left to remove tasks from the list.
- **Modern UI**: Stylish design with a clean layout and shadow effects.
- **Dark Mode Support**: Automatically adapts to system appearance.

---

## 📸 Preview

### **Main Interface**

![App Preview](app_image.png)

---

## 🛠️ Technologies Used

- **Swift**: Core programming language.
- **SwiftUI**: Declarative framework for UI development.
- **Xcode**: IDE for iOS development.

---

## 📝 How to Use

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/iOSDila/SimpleToDoApp.git
   ```
2. **Open in Xcode**:
   - Open the `.xcodeproj` file in Xcode.
3. **Run the App**:
   - Select a simulator or device, and click the ▶️ button in Xcode to run the app.

---

## 🎨 UI Code Highlights

The app features a **modern and intuitive user interface**, built with `ZStack`, `VStack`, and `HStack` for layout management. Here's a glimpse of the core UI components:

```swift
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
```

---

## 👩‍💻 Contributions

Contributions are welcome! Feel free to open an issue or submit a pull request.

---

## 📜 License

This project is licensed under the [APPtora](LICENSE).

---

## 💬 Contact

- **Developer**: Pubudu Dilshan 
- **Email**: pubududilshan97@gmail.com
- **GitHub**: [iOSDila](https://github.com/iOSDila)

---

### **Enjoy managing your tasks efficiently with this To-Do List App!**
