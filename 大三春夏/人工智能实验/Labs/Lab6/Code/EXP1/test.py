import kNN

group, labels = kNN.createDataSet()

# 测试点 [0, 0] 和 [0.8, 0.7]
test_points = [[0, 0], [0.8, 0.7]]
k_values = [1, 2, 3]

for pt in test_points:
    for kv in k_values:
        result = kNN.classify0(pt, group, labels, kv)
        print(f"输入点: {pt}, k: {kv}, 分类结果: {result}")