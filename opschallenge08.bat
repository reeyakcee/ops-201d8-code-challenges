#Script Name :                         Challenge-08
#Author:                               Reeya Karki
#Date of latest revision:              05/06/2023
#Purpose:                              Create a Batch File

@echo off

robocopy "C:\Users\j.thompson\Desktop" "C:\Users\j.thompson\Documents\Nightly Data" /E /PURGE /MIR /R:3 /w:10 /LOG+:C:\robocopy.log