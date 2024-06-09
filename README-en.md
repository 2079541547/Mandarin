# Mandarin

* [中文版](https://github.com/2079541547/Mandarin/blob/main/README.md)
* A high-level scripting language based on C++, featuring multiple execution modes:
  
  1. Commented Execution
  2. Just-In-Time Compilation (JIT)
  3. Compiled Execution
  
  Advanced syntax example:
  
  ```Mandarin
  val 'a' = "Hello, World!"
  func 'print' [ 'a' ]{
   print{ 'a', 1.0 + 1, true; false }
  }
  func 'print' ["Hello, World!"]
  ```
* ## Performance
  
  | Operation Mode     | print Loop 100,000 Times | print 2MB String |
  | ------------------ | ------------------------ | ---------------- |
  | Commented Run      |                          |                  |
  | Just-In-Time (JIT) |                          |                  |
  | Compiled Run       |                          |                  |
  
  

