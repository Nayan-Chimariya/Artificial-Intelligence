import numpy as np

def activation_function(v):
  if v <= 0:
    return 0
  else:
    return 1

def perceptronModel(x, w, b):
  v = np.dot(w, x) + b
  y = activation_function(v)
  return y

# w1 = 1, w2 = 1, b = -0.5
def logicFunction(logic,x):
  if logic == "OR":
    b = -0.5
    w = np.array([1, 1])
  elif logic == "AND":
    b = -1.5
    w = np.array([1, 1])
  elif logic == "NOT":
    b = 1
    w= np.array([-1])
      
  return perceptronModel(x, w, b)

test1 = np.array([1, 1])
test2 = np.array([1, 0])
test3 = np.array([0, 1])
test4 = np.array([0, 0])

test5 = np.array([0])
test6 = np.array([1])

print("For OR logic")
print("OR({}, {}) = {}".format(1, 1, logicFunction("OR",test1)))
print("OR({}, {}) = {}".format(1, 0, logicFunction("OR",test2)))
print("OR({}, {}) = {}".format(0, 1, logicFunction("OR",test3)))
print("OR({}, {}) = {}".format(0, 0, logicFunction("OR",test4)))

print("\nFor AND logic")
print("AND({}, {}) = {}".format(1, 1, logicFunction("AND",test1)))
print("AND({}, {}) = {}".format(1, 0, logicFunction("AND",test2)))
print("AND({}, {}) = {}".format(0, 1, logicFunction("AND",test3)))
print("AND({}, {}) = {}".format(0, 0, logicFunction("AND",test4)))

print("\nFor NOT logic")
print("NOT({}) = {}".format(0, logicFunction("NOT",test5)))
print("NOT({}) = {}".format(1, logicFunction("NOT",test6)))