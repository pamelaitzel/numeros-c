from sklearn.model_selection import cross_val_score

scores = cross_val_score(clf, X, y, cv=5)
print("Precisión media de cross-validation:", scores.mean())
