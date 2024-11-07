import numpy as np
from sklearn.linear_model import LinearRegression

X = np.array([[1], [2], [3], [4]])
y = np.array([1, 2, 3, 4])

model = LinearRegression()
model.fit(X, y)
predicciones = model.predict([[5]])
print(predicciones)
