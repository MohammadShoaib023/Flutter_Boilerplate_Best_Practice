# 🚀 Flutter Boilerplate – Best Practices

This repository contains a clean and scalable Flutter boilerplate that follows strict conventions to ensure consistent, maintainable, and testable code.

# 🧼 Write Clean Flutter Code – Best Practices

A consistent, scalable, and clean coding standard for building robust Flutter applications.

---

## ✅ Must & Good Practices

### 📛 Naming Conventions

1. **Callbacks:** Use `on` + verb  
   → `onPressed`, `onTap`

2. **Classes & Enums:** Use `UpperCamelCase`  
   → `LoginScreen`, `UserType`

3. **Avoid `get` keyword for methods**  
   Do not name behavior-returning methods with `get`.

4. **Avoid explicit types for local variables**  
   Let Dart infer the type for cleaner code.  
   ✅ `var name = 'John';`

5. **Use `snake_case` for folders**

6. **Prefix imports using `snake_case`**  
   → `import 'utils/helper.dart' as helper_utils;`

---

### 🏗 Class & Member Style

7. **Class & Enum Names:** Use `UpperCamelCase`  
   → `LoginForm`, `ApiResponseType`

8. **Members:** Use `lowerCamelCase`

   - 8.1 Named constructors → `MyWidget.large()`
   - 8.2 Methods / functions → `handleTap()`
   - 8.3 Parameters → `fetchUser(String userId)`
   - 8.4 Variables → `final userName = ''`
   - 8.5 Constants → `const apiUrl = '...'`

9. **Do not use `_` for local variables**  
   Local variables are private by scope — no need for underscores.

10. **Use short and meaningful names**  
    → `var name = 'John';`  
    Avoid long descriptive names unless essential.

11. **Maintain consistency in folder, file, and class names**

12. **Maintain consistent naming across the codebase**

---

### 💡 Method & Getter Usage

13. **Avoid using `get` methods for logic**  
    Use function names instead, with lowercase method names.

    ✅

    ```dart
    Future<List<String>> fetchBooks() {}
    ```

    ❌

    ```dart
    get books => ...
    ```

14. **Getters must be pure**  
    No side effects like I/O, logging, or state mutations.

15. **Use verb phrases for method names**  
    → `showBooks()`, `uploadFile()`, `deleteUser()`

16. **Use `build...` prefix for widget-returning methods**  
    Improves clarity and code readability.

    ✅

    ```dart
    Widget buildLoginButton() {
      return ElevatedButton(
        onPressed: onLogin,
        child: const Text('Login'),
      );
    }
    ```

17. **Getters must not cause side effects**  
    Getters should only return computed values, never mutate state.

---

### 🔁 Async & Return Types

18. **Always declare return types for functions**  
    ✅ `String getUserName() => 'John';`

19. **Use `Future<Type>` for async return values**  
    ✅ `Future<List<Book>> fetchBooks()`

20. **Use `Future<void>` for async functions with no return**  
    ✅ `Future<void> saveUser() async { ... }`

---

### 🧾 Function Signatures

21. **Always annotate parameter types**  
    ✅ `void fetchUser(String userId)`

22. **Avoid type annotations in constructors**  
    Constructors infer type from class fields.

    ✅

    ```dart
    class Book {
      final String title;
      Book(this.title);
    }
    ```

    ❌

    ```dart
    class Book {
      final String title;
      Book(String title) {
        this.title = title;
      }
    }
    ```

23. **Use named parameters for readability**  
    ✅ `void createUser({required String name, required int age})`

24. **Do not describe parameter meaning in method name**  
    ✅ `void fetchUser({required String userId})`  
    ❌ `void fetchUserByUserId(String userId)`

---
