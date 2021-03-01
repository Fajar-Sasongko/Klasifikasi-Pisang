function [output] = homogenity(glcm)
% glcm = [0 0.075 0.025 0 0.05 0.05;
%         0.075 0.05 0.05 0 0.075 0;
%         0.025 0.05 0 0.075 0.025 0;
%         0 0 0.075 0 0.025 0.025;
%         0.05 0.075 0.025 0.025 0 0;
%         0.05 0 0 0.025 0 0;];
glcm = glcm ./sum(glcm(:)); %Normalized matrix Co-occurence
[baris, kolom] = size(glcm);
Homogenitas = zeros(baris,kolom);
for i=0:baris-1
        for j=0:kolom-1
            temp = glcm(i+1,j+1);
            if(temp==0)
                Homogenitas(i+1,j+1)= 0;
            else
                temp1 =temp./(1+abs(i-j));
                Homogenitas(i+1,j+1)=temp1;
            end
        end
end
output = sum(sum(Homogenitas));
end

