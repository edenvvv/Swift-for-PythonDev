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


print("----------------------------------------------")
print("Python builtins")

// `Python.builtins` is a dictionary of all Python builtins.
_ = Python.builtins

// some of Python builtins.
print(Python.type(1))
print(Python.len([1, 2, 3]))
print(Python.sum([1, 2, 3]))


print("----------------------------------------------")
print("Importing Python modules")

let np = Python.import("numpy")
print(np)
let zeros = np.zeros([2, 3])
print(zeros)


print("----------------------------------------------")
print("Conversion with numpy.ndarray")

import TensorFlow

let numpyArray = np.ones([4], dtype: np.float32)
print("Swift type:", type(of: numpyArray))
print("Python type:", Python.type(numpyArray))
print("numpyArray shape:",numpyArray.shape)
print("")

// Examples of converting 'numpy.ndarray' to Swift types.
let array: [Float] = Array(numpy: numpyArray)!
let shapedArray = ShapedArray<Float>(numpy: numpyArray)!
let tensor = Tensor<Float>(numpy: numpyArray)!

// Examples of converting Swift types to 'numpy.ndarray'.
print("array:",array.makeNumpyArray())
print("shapedArray:",shapedArray.makeNumpyArray())
print("tensor:",tensor.makeNumpyArray())

// Examples with different dtypes.
let doubleArray: [Double] = Array(numpy: np.ones([3], dtype: np.float))!
let intTensor = Tensor<Int32>(numpy: np.ones([2, 3], dtype: np.int32))!
