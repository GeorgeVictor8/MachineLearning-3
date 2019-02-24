function [all_theta] = oneVsAll(X, y, num_labels, lambda)

m=size(X, 1);

n=size(X, 2);

all_theta=zeros(num_labels, n + 1);

X=[ones(m, 1) X];

FirstTheta = zeros(n,1);

option=optimset('GradObj', 'on', 'MaxIter', 50);
     
for c = 1:num_labels
    
    TEMP1=(y == c);
    
    TEMPtheta(:,c) =  fmincg(@(t)(lrCostFunction(t,X,TEMP1,lambda)),FirstTheta,option);
    
    all_theta(c,:)=TEMPtheta(:,c)';
end

end
