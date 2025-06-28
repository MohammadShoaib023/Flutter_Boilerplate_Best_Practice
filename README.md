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

25. **Use nouns for variable names**  
    Variable names should represent entities, not actions.

    ✅

    ```dart
    var user = User();
    var bookList = [];
    ```

    ❌

    ```dart
    var load = User(); // unclear noun/verb conflict
    ```

26. **Use short variable names in loops and small scopes**  
    Concise naming like `i`, `item`, `e` is acceptable in loops or closures.

    ✅

    ```dart
    for (var i = 0; i < users.length; i++) {
      print(users[i]);
    }

    users.forEach((e) => print(e.name));
    ```

    ❌

    ```dart
    for (var userItemInList = 0; userItemInList < users.length; userItemInList++) {
      print(users[userItemInList]);
    }
    ```

---

27. **Avoid using a "Type" for local variables**  
    Prefer type inference using `var` or `final` unless explicit type improves clarity or is required by context.

    ✅

    ```dart
    var user = User();
    final books = <Book>[];
    ```

    ❌

    ```dart
    User user = User();
    List<Book> books = [];
    ```

28. **Use `final` if the variable is not reassigned**  
    This signals intent clearly and enables better optimizations.

    ✅

    ```dart
    final user = User();
    final count = users.length;
    ```

    ❌

    ```dart
    var user = User();
    ```

29. **Use an explicit type if the variable is declared without an initial value**  
    Dart requires type annotations when no value is assigned at declaration.

    ✅

    ```dart
    String userName;
    int age;
    ```

    ❌

    ```dart
    var userName;
    ```

30. **Do not use a type for top-level fields with initial values**  
    Prefer `final` or `const` with type inference for global variables.

    ✅

    ```dart
    const appName = 'FlutterApp';
    final config = AppConfig();
    ```

    ❌

    ```dart
    const String appName = 'FlutterApp';
    final AppConfig config = AppConfig();
    ```

31. **Prefer using immutable classes**  
    Immutability improves predictability, thread safety, and debugging.  
    Use `final` for all fields and avoid setters.

    ✅

    ```dart
    class User {
      final String name;
      final int age;

      const User({required this.name, required this.age});
    }
    ```

    ❌

    ```dart
    class User {
      String name;
      int age;

      User({required this.name, required this.age});
    }
    ```

32. **Use `final` fields and `const` constructor for widgets**  
    This enables Flutter to cache and reuse widget instances efficiently.

    ✅

    ```dart
    class LoginButton extends StatelessWidget {
      final VoidCallback onPressed;

      const LoginButton({required this.onPressed, super.key});

      @override
      Widget build(BuildContext context) {
        return ElevatedButton(
          onPressed: onPressed,
          child: const Text('Login'),
        );
      }
    }
    ```

    ❌

    ```dart
    class LoginButton extends StatelessWidget {
      VoidCallback onPressed;

      LoginButton({required this.onPressed});

      @override
      Widget build(BuildContext context) {
        return ElevatedButton(
          onPressed: onPressed,
          child: Text('Login'),
        );
      }
    }
    ```

33. **Use named parameters for widget constructors**  
    Makes it easier to understand and manage widget properties.

    ✅

    ```dart
    class CustomCard extends StatelessWidget {
      final String title;
      final String subtitle;

      const CustomCard({
        required this.title,
        required this.subtitle,
        super.key,
      });

      @override
      Widget build(BuildContext context) {
        return Column(
          children: [
            Text(title),
            Text(subtitle),
          ],
        );
      }
    }
    ```

    ❌

    ```dart
    class CustomCard extends StatelessWidget {
      final String title;
      final String subtitle;

      const CustomCard(this.title, this.subtitle, {super.key});

      @override
      Widget build(BuildContext context) {
        return Column(
          children: [
            Text(title),
            Text(subtitle),
          ],
        );
      }
    }
    ```

34. **Prefer using `const` constructors whenever possible**  
    Using `const` enables Flutter to cache and reuse widget instances efficiently, minimizing rebuilds.

    ✅

    ```dart
    const CustomCard(title: 'Hello', subtitle: 'World');
    ```

    ❌

    ```dart
    CustomCard(title: 'Hello', subtitle: 'World');
    ```

    > Note: All fields in the class must be `final` to allow a `const` constructor.

35. **Use generics if the type cannot be inferred**  
    Always specify types explicitly when Dart cannot infer them, especially with collections or `Future`s.

    ✅

    ```dart
    final List<String> names = <String>[];
    Future<void> fetchData() async => <void>{};
    ```

    ❌

    ```dart
    final names = [];
    Future fetchData() async => {};
    ```

    > Use `<T>` to enforce consistency and avoid runtime type errors.

36. **Avoid repeating generics unnecessarily**  
    Don’t duplicate type parameters when Dart can infer them.

    ✅

    ```dart
    final List<String> names = [];
    final Map<String, dynamic> config = {};
    ```

    ❌

    ```dart
    final List<String> names = <String>[];
    final Map<String, dynamic> config = <String, dynamic>{};
    ```

    Dart infers the type from the declaration — keep it DRY.

37. **Use explicit generics in APIs, parameters, or return types if type cannot be inferred**

    When writing functions, classes, or exposing interfaces, use generics to maintain type safety and avoid `dynamic`.

    ✅

    ```dart
    Future<List<User>> fetchUsers();
    List<T> filter<T>(List<T> items, bool Function(T) predicate);
    ```

    ❌

    ```dart
    Future fetchUsers(); // returns dynamic
    List filter(items, predicate); // loses type safety
    ```

38. **Do not use incomplete or raw generic types**  
    Always specify the full type in generic classes like `List`, `Map`, `Future`, etc.

    ✅

    ```dart
    List<String> names = [];
    Map<String, int> scores = {};
    Future<void> loadData() async {}
    ```

    ❌

    ```dart
    List names = [];
    Map config = {};
    Future fetchData() {}
    ```

    > Leaving generics blank defaults to `dynamic`, which breaks type safety.
