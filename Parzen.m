h=input('h=');%����h�Ĵ�С
u=2*h*h;
result=zeros(3,3);%�洢������д�����������ÿ���� �д���ÿһ��
for i=1:3%����������Լ���ÿ����
    for j=1:3%��ÿ�������3�����Ľ��
        temp=0;
        for k=1:10%����ÿһ���е����е�
            temp=temp+exp((test(i,:)-train(k,3*j-2:3*j))*(-(test(i,:)-train(k,3*j-2:3*j)).')/u);%���봰��������
        end
        result(i,j)=temp;%������
    end
end 
