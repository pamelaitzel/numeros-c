from sklearn.neighbors import KNeighborsClassifier

knn = KNeighborsClassifier(n_neighbors=5)
knn.fit(X_train, y_train)
print("Precisión del modelo KNN:", knn.score(X_test, y_test))
