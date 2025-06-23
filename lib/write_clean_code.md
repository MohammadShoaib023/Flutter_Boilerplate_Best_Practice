### Write Clean Flutter code

## Must

1. Name Callback : on + "verb"
2. Classes use UpperCamelCase
3. Don't user "get" methods
4. Avoid using a "Type" for local variables
5. Folders use snake_case

6. Import prefixed use snake_case
   <!-- Ex :  import 'flutter:widget' as widget -->

7. Class and Enums : UpperCamelCase
   <!-- Ex : ButtonWidget -->

8. Class member user lowerCamelCase  
   lowerCamelCase :
   8.1. Named Constructors <!-- Ex : ButtonWidget() -->
   8.2. Methods / Functions <!-- Ex : ButtonWidget.longStretched() -->
   8.3. Parameters / Named Parameters <!-- Ex : method(String countryName){} -->
   8.4. Variables <!-- Ex :  String myVariable = "Hello" -->
   8.5. Constants <!-- Ex : const defaultTimeout = 1000 -->

9. Do not use underscores for local variables inside methods
       Local variables are already scoped privately within the method,
   so using an underscore is unnecessary and against Dart naming conventions.

10. Use concise names and keep lines short
        Prefer short, meaningful names for local variables and aim to keep your code lines brief for better readability and maintainability.
    <!--  Example: Use var name = 'John'; -->

    instead of a long or overly descriptive variable name unless necessary.

11. Use Consistent Folder, File, Class Names

12. Use Consistent Names

13. Don't use "get" methods and make the name of method lower case

    // method returns value

    get book {
    return 'value';
    }

    // Getters are field-like for computations
    // Method

    // method returns value
    // 1. noun phrase (what is returned)
    String book (String title ) {} //parameters
    get book {} // NO parameters

    // 2. verb phrase (how is returned)
    List<String> fetchBooks() {}
    Future<List<String>> fetchBooks() {}
    Future<List<String>> downloadBooks(){}
