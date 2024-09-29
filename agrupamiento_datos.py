from sklearn.cluster import KMeans

kmeans = KMeans(n_clusters=3)
clusters = kmeans.fit_predict(X)
df['Cluster'] = clusters
plt.scatter(X.iloc[:, 0], X.iloc[:, 1], c=clusters, cmap="viridis")
plt.show()
