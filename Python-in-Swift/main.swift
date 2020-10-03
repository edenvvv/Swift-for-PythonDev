import Foundation
import PythonKit

// print(Python.version)

print("Basics:")

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


print("")
// Convert Python objects back to Swift.
let int = Int(pythonInt)!
let float = Float(pythonFloat)!
let string = String(pythonString)!
let range = Range<Int>(pythonRange)!
let array1: [Int] = Array(pythonArray)!
let dict: [String: [Int]] = Dictionary(pythonDict)!

// Perform standard operations.
// outputs are the same as Python!
print(Float(int) + float)
print(string.prefix(6))
print(range)
print(array1[2])
print(dict["bar"]!)

print("")

let one: PythonObject = 1
print(one == one)
print(one < one)
print(one + one)

let array2: PythonObject = [1, 2, 3]
for (i, x) in array2.enumerated() {
  print(i, x)
}

let pythonTuple = Python.tuple([1, 2, 3])
print("pythonTuple:", pythonTuple, "in len:", Python.len(pythonTuple))

// Convert to Swift.
let tuple = pythonTuple.tuple3
print("swift tuple:",tuple)
