function [ fiturGLCM ] = GLCM(gray_img)
if(min(min(gray_img)) == 0)
    gray_img = gray_img + 1;
end

imageGLCM = gray_img;

imageGLCM0 = padarray(imageGLCM, [1 0],1, 'post');
imageGLCM90 = padarray(imageGLCM, [0 1],1, 'post');

[baris, kolom] = size(imageGLCM);
[baris1, kolom1] = size(imageGLCM0);
[baris2, kolom2] = size(imageGLCM90);
maxGrey = max(max(imageGLCM));

G0 = zeros(maxGrey,maxGrey);
G45 = zeros(maxGrey,maxGrey);
G90 = zeros(maxGrey,maxGrey);
G135 = zeros(maxGrey,maxGrey);

for k =1:baris1-1
    for l=1:kolom1-1
        temp0 = imageGLCM0(k:k+1,l:l+1);
        G0(temp0(1,1),temp0(1,2))=G0(temp0(1,1),temp0(1,2))+1;
    end
end

for m =1:baris2-1
    for n=1:kolom2-1
        temp90 = imageGLCM90(m:m+1,n:n+1);
        G90(temp90(2,1),temp90(1,1))=G90(temp90(2,1),temp90(1,1))+1;
    end
end
for i =1:baris-1
    for j=1:kolom-1
        temp1 = imageGLCM(i:i+1,j:j+1);
        G45(temp1(2,1),temp1(1,2))=G45(temp1(2,1),temp1(1,2))+1;
        G135(temp1(2,2),temp1(1,1))=G135(temp1(2,2),temp1(1,1))+1;
    end
end

fiturGLCM = zeros(1,25);


GOtranspose = transpose(G0);
G45transpose = transpose(G45);
G90transpose = transpose(G90);
G135transpose = transpose(G135);

G0simetris = G0 + GOtranspose;
G45simetris = G45 + G45transpose;
G90simetris = G90 + G90transpose;
G135simetris = G135 + G135transpose;

    fiturGLCM(1,1) = Contras(G0simetris);
    fiturGLCM(1,2) = Contras(G45simetris);
    fiturGLCM(1,3) = Contras(G90simetris);
    fiturGLCM(1,4) = Contras(G135simetris);  
    fiturGLCM(1,5) = (Contras(G0simetris)+Contras(G45simetris)+Contras(G90simetris)+Contras(G135simetris))/4;
    
    fiturGLCM(1,6) = entropy(G0simetris);
    fiturGLCM(1,7) = entropy(G45simetris);
    fiturGLCM(1,8) = entropy(G90simetris);
    fiturGLCM(1,9) = entropy(G135simetris);
    fiturGLCM(1,10) = (entropy(G0simetris)+entropy(G45simetris)+entropy(G90simetris)+entropy(G135simetris))/4;
    
    fiturGLCM(1,11) = energy(G0simetris);
    fiturGLCM(1,12)= energy(G45simetris);
    fiturGLCM(1,13)= energy(G90simetris);
    fiturGLCM(1,14)= energy(G135simetris);
    fiturGLCM(1,15) = (energy(G0simetris)+energy(G45simetris)+energy(G90simetris)+energy(G135simetris))/4;

    fiturGLCM(1,16)= Correlation(G0simetris);
    fiturGLCM(1,17)= Correlation(G45simetris);
    fiturGLCM(1,18)= Correlation(G90simetris);
    fiturGLCM(1,19)= Correlation(G135simetris);
    fiturGLCM(1,20) = (Correlation(G0simetris)+Correlation(G45simetris)+Correlation(G90simetris)+Correlation(G135simetris))/4;
    
    fiturGLCM(1,21)= homogenity(G0simetris);
    fiturGLCM(1,22)= homogenity(G45simetris);
    fiturGLCM(1,23)= homogenity(G90simetris);
    fiturGLCM(1,24)= homogenity(G135simetris);
    fiturGLCM(1,25) = (homogenity(G0simetris)+homogenity(G45simetris)+homogenity(G90simetris)+homogenity(G135simetris))/4;
    
    
% end
