import kNN

def datingClassTest():
    datingDataMat, datingLabels = kNN.file2matrix('datingTestSet2.txt')
    normMat, ranges, minVals = kNN.autoNorm(datingDataMat)
    m = normMat.shape[0]
    numTestVecs = int(m * 0.10)
    errorCount = 0.0
    for i in range(numTestVecs):
        result = kNN.classify0(normMat[i, :], normMat[numTestVecs:m, :],
                               datingLabels[numTestVecs:m], 3)
        print(f"预测: {result}, 实际: {datingLabels[i]}", end="")
        if result != datingLabels[i]:
            errorCount += 1.0
            print(" [X]")
        else:
            print("")
    print(f"\n错误率: {errorCount / float(numTestVecs):.2%}")
    print(f"准确率: {1 - errorCount / float(numTestVecs):.2%}")

if __name__ == '__main__':
    datingClassTest()
