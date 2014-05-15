@echo off
chcp 65001

set ruby_path=D:\apps\Ruby200-x64\bin
set python_path=D:\apps\Python27_x64

set path_old=%path%
set path=%ruby_path%;%python_path%;%python_path%\Scripts;%path%;
@echo on

jekyll serve
