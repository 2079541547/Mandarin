# Mandarin

* [👉️ English]()
* 一门基于C++的高级脚步语言, 拥有多种运行模式:
  
  > 1. 注释运行
  > 2. 即时编译(JIT)
  > 3. 编译运行
  
  高级的语法:
  
  ```Mandarin
  val 'a' = "Hello, World!"
  func 'print' [ 'a' ]{
   print{ 'a', 1.0 + 1, true; false }
  }
  func 'print' ["Hello, World!"]
  ```
* ## 性能
  
  | 运行模式 | print循环10万次 | print 2MB大小字符串 |
  | -------- | --------------- | ------------------- |
  | 注释运行 |                 |                     |
  | 即时编译(JIT) |                 |                     |
  | 编译运行 |                 |                     |
  
  

