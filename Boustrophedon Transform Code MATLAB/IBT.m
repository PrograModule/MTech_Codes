function p = IBT(t)
%UNTITLED2 Summary of this function goes here
%Detailed explanation goes here
p(1,1)=t(1,1);
p(1,2)=t(1,2)-t(1,1);
p(1,3)=t(1,1)-(2*t(1,2))+t(1,3);

end

