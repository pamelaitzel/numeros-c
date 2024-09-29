correlation = df.corr()
sns.heatmap(correlation, annot=True, cmap="coolwarm")
plt.title("Matriz de Correlación")
plt.show()
