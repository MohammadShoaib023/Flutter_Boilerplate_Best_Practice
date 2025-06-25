# 🚀 Flutter Boilerplate – Best Practices

This repository contains a clean and scalable Flutter boilerplate that follows strict conventions to ensure consistent, maintainable, and testable code.

## ✅ Coding Conventions

### 📌 Naming Rules

1. **Callbacks:** Name using `on` + _verb_  
   → `onPressed`, `onTap`, `onFetchData`

2. **Classes & Enums:** Use `UpperCamelCase`  
   → `ButtonWidget`, `UserRole`

3. **Class Members:** Use `lowerCamelCase`

   - Named constructors → `ButtonWidget.stretched()`
   - Methods/functions → `fetchData()`
   - Parameters → `void fetchUser(String userId)`
   - Variables → `final userName = 'John'`
   - Constants → `const defaultTimeout = 1000`

4. **Folders & Import Prefixes:** Use `snake_case`  
   → `import 'package:my_app/utils/api_helper.dart' as api_helper`

5. **File/Class Naming:** Ensure consistency across folder, file, and class names

### ⚙️ Method & Getter Guidelines

6. **Avoid `get` methods**:  
   Do not use `get` to define behavior-returning methods. Use regular methods with appropriate naming instead.

7. **Getters Must Be Pure**:  
   No side effects like mutations, logging, I/O, or async operations in getters.

8. **Method Names = Verb Phrases**:  
   Describe actions clearly.  
   → `uploadBook()`, `deleteAccount()`, `fetchData()`

9. **UI Builders:**  
   Prefix all widget-returning methods with `build`  
   → `Widget buildLoginButton() {}`

---

### 🔍 Readability & Style

10. **No underscore (`_`) in local variables**  
    Local variables are private by scope, no need for `_`

11. **Use concise and meaningful names**  
    Keep line lengths short and code clean  
    → Prefer `name` over `userNameInDatabaseForQuery`

12. **Avoid unnecessary type declarations for local variables**  
    → `var name = 'John';` instead of `String name = 'John';`

13. **Always define return types for functions**  
    → `String getUserName() { return 'John'; }`

14. **Use `Future<Type>` as return type for async methods**  
    → `Future<List<Book>> fetchBooks()`

---
