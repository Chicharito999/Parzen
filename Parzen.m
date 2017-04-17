h=input('h=');%输入h的大小
u=2*h*h;
result=zeros(3,3);%存储结果，列代表样本集的每个点 行代表每一类
for i=1:3%迭代计算测试集的每个点
    for j=1:3%对每个点计算3个类别的结果
        temp=0;
        for k=1:10%迭代每一类中的所有点
            temp=temp+exp((test(i,:)-train(k,3*j-2:3*j))*(-(test(i,:)-train(k,3*j-2:3*j)).')/u);%代入窗函数计算
        end
        result(i,j)=temp;%保存结果
    end
end 
