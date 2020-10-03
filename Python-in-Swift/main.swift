import Foundation
import PythonKit

// print(Python.version)

print("Basics")

// Convert standard Swift types to Python (as PythonObject)
let pythonInt: PythonObject = 1
let pythonFloat: PythonObject = 3.0
let pythonString: PythonObject = "Hello Python!"
let pythonRange: PythonObject = PythonObject(5..<10)
let pythonArray: PythonObject = [1, 2, 3, 4]
let pythonDict: PythonObject = ["foo": [0], "bar": [1, 2, 3]]

// Perform standard operations on Python objects.
print("pythonInt + pythonFloat = ",pythonInt + pythonFloat)
print("pythonString is: ",pythonString[0..<6])
print("pythonRange is: ",pythonRange)
print("pythonArray[2] is: ",pythonArray[2])
print("pythonDict['bar'] is: ",pythonDict["bar"])
