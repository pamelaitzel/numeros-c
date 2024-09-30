from sklearn.tree import DecisionTreeClassifier

tree = DecisionTreeClassifier()
tree.fit(X_train, y_train)
print("Precisión en el conjunto de prueba:", tree.score(X_test, y_test))
