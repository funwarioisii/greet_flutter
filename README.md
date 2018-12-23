# Purpose
This is a sample project to utilize Java or Kotlin(Android) program on Flutter Project.


## About
- GreetPlugin#onMethodCall will return "Hello World" (at android/src/main/kotlin/me/funwarioisii/greet/GreetPlugin.kt)
- SwiftGreetPlugin#handle will return "Hello World" (at ios/Classes/SwiftGreetPlugin.swift )
- Greet#hello may call GreetPlugin#onMethodCall and SwiftGreetPlugin#handle

## Problem
In example, this application is working well, but in test, Greet#hello dose not work well.

  
