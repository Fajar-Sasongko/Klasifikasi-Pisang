seg_folder = 'G:\Sistem_Klasifikasi\segmented_images';
image_folder = dir(seg_folder);
cd(seg_folder);
num = length(image_folder);
train_fitur_glcm = zeros(1,20);
train_fitur_mean_glcm = zeros(1,5);
train_fitur_hsv = zeros(1,3);
train_labels = zeros(1,1);
label = 1;
for folders = 3:num
    images = dir(image_folder(folders).name);
    num_images = length(images);
    cd(image_folder(folders).name);
    fprintf('Evaluating features for %s\n' ,  image_folder(folders).name);
    for idx = 3:num_images
        seg_img = imread(images(idx).name);
        img_gray = rgb2gray(seg_img);
        image = GLCM(img_gray);
        data_glcm = [image(1,1) image(1,2) image(1,3) image(1,4) image(1,6) image(1,7) image(1,8) image(1,9) image(1,11) image(1,12) image(1,13) image(1,14) image(1,16) image(1,17) image(1,18) image(1,19) image(1,21) image(1,22) image(1,23) image(1,24)];
        mean_glcm = [ image(1,5)  image(1,10)  image(1,15)  image(1,20) image(1,25)];
        
        hsvImage = rgb2hsv(seg_img);
        meanHue = mean2(hsvImage(:,:,1));
        meanSat = mean2(hsvImage(:,:,2));
        meanValue = mean2(hsvImage(:,:,3));
        data_hsv = [meanHue meanSat meanValue];

        train_fitur_glcm = [train_fitur_glcm; data_glcm];
        train_fitur_mean_glcm = [train_fitur_mean_glcm; mean_glcm];
        train_fitur_hsv = [train_fitur_hsv; data_hsv];
        train_labels = [train_labels; label];
    end
    cd ../;
    label = label + 1;
end
train_fitur_glcm(1,:) = [];
train_fitur_mean_glcm(1,:) = [];
train_fitur_hsv(1,:) = [];
train_labels(1,:) = [];

glcm = train_fitur_glcm;
% train_glcm = [glcm train_labels];

mean_glcm = train_fitur_mean_glcm;
% train_mean_glcm = [mean_glcm train_labels];

hsv = train_fitur_hsv;
% train_hsv = [train_fitur_hsv train_labels];

hsv_meanglcm = [hsv mean_glcm];
hsv_glcm = [hsv glcm];

% train_hsv_glcm = [hsv glcm train_labels];
% train_hsv_meanglcm = [hsv mean_glcm train_labels];

% save ../training_data.mat glcm mean_glcm hsv hsv_glcm hsv_meanglcm train_glcm train_mean_glcm train_hsv train_glcm_hsv train_meanglcm_hsv train_labels;
save ../training_data.mat glcm mean_glcm hsv hsv_glcm hsv_meanglcm train_labels;