---
layout: post
title:  "VisualGDB 调试 Java 中 JNI JNA 调用 native C++ 程序"
category : 技术
tagline: "Windows 中远程调试 Linux 中 Java 调用的 C++ 函数"
tags : [VisualGDB, JNI, JNA]
---

坑：必需显示**先**使用 JNI 来加载 so 动态库，在 Visual Studio 中的断点才生效，在模块列表中才找到我们的 so。

源码：[java-http-jni-jna-src.zip][1]  [c++-jni-jna-src.zip][2]

JNI JNA 加载次序:
![JNI JNA 加载次序](/assets/archives/20161007-debug-jni-jna/img/so-loading-order.png "加载次序")

VisualGDB 调试效果：
![VisualGDB 调试效果](/assets/archives/20161007-debug-jni-jna/img/visualgdb-debug.png "调试效果")

[Yahoo][1] or [MSN][2].

[1]: /assets/archives/20161007-debug-jni-jna/java-http-jni-jna-src.zip  "Java 加载 native 动态库源码"
[2]: /assets/archives/20161007-debug-jni-jna/c++-jni-jna-src.zip   "JNI JNA C++ 源码 "
