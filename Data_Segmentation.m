str = readlines('ds2.csv');
idx = startsWith(str,digitsPattern);%digitsPattern. Extract numeric digits from the string.
writelines(str(idx),'data_Test2_Part1_ds2.csv')
type data.csv