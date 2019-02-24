function p = predict(Theta1,Theta2,X)

m=size(X, 1);

num_labels=size(Theta2, 1);

p=zeros(size(X, 1), 1);

V1=[ones(m,1) X];

V2=sigmoid(V1*Theta1');

V2=[ones(m,1) V2];

V3=sigmoid(V2*Theta2');

[~,p]=max(V3,[],2);

end
