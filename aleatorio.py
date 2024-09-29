clf = RandomForestClassifier()
clf.fit(X_train, y_train)
importances = clf.feature_importances_
print("Importancia de características:\n", importances)
