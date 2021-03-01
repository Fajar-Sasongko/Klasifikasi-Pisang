train_folder = 'G:\FAJAR SKRIPSI\Sistem_Klasifikasi\Fayoum_University_Banana _Classes';
image_folder = dir(train_folder);
% mkdir segmented_images;
cd(train_folder);
num = length(image_folder);
classes = [];
names = cell(num-3,1);
for folders = 3:num
    images = dir(image_folder(folders).name);
    num_images = length(images);
    fprintf('Segmentasi citra pada kelas %s\n' ,  image_folder(folders).name);
    mkdir(strcat('../segmented_images/',image_folder(folders).name));
    classes(folders-2) = folders-2;
    names{folders-2} = image_folder(folders).name;
    cd(image_folder(folders).name);
    for idx = 3:num_images
        img = imread(images(idx).name);
        try
            img = imresize(img,[255,500]);
            seg_img = SegmentImage(img,3);
            fprintf('Segmentasi citra pada citra %s\n' ,images(idx).name);
            imwrite(seg_img,strcat('../../segmented_images/',image_folder(folders).name,'/',images(idx).name),'jpg');
        catch
            idx = idx - 1;
            continue
        end
    end
    cd ../;
end
mapObj = containers.Map(classes,names);
save ../MAP.mat mapObj;