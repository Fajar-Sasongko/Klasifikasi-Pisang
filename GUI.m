function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 18-Oct-2020 02:37:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
% --- Executes on button press in rdb_GLCM.
function rdb_GLCM_Callback(hObject, eventdata, handles)
% hObject    handle to rdb_GLCM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of rdb_GLCM

% --- Executes on button press in rdb_MeanGLCM.
function rdb_MeanGLCM_Callback(hObject, eventdata, handles)
% hObject    handle to rdb_MeanGLCM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of rdb_MeanGLCM

% --- Executes on button press in rdb_HSV.
function rdb_HSV_Callback(hObject, eventdata, handles)
% hObject    handle to rdb_HSV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of rdb_HSV

% --- Executes on button press in rdb_HSV_GLCM.
function rdb_HSV_GLCM_Callback(hObject, eventdata, handles)
% hObject    handle to rdb_HSV_GLCM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of rdb_HSV_GLCM

% --- Executes on button press in rdb_HSV_MeanGLCM.
function rdb_HSV_MeanGLCM_Callback(hObject, eventdata, handles)
% hObject    handle to rdb_HSV_MeanGLCM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of rdb_HSV_MeanGLCM
function edit_H_Callback(hObject, eventdata, handles)
% hObject    handle to edit_H (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_H as text
%        str2double(get(hObject,'String')) returns contents of edit_H as a double

% --- Executes during object creation, after setting all properties.
function edit_H_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_H (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit_S_Callback(hObject, eventdata, handles)
% hObject    handle to edit_S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_S as text
%        str2double(get(hObject,'String')) returns contents of edit_S as a double

% --- Executes during object creation, after setting all properties.
function edit_S_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_S (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit_V_Callback(hObject, eventdata, handles)
% hObject    handle to edit_V (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_V as text
%        str2double(get(hObject,'String')) returns contents of edit_V as a double

% --- Executes during object creation, after setting all properties.
function edit_V_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_V (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit_kelas_Callback(hObject, eventdata, handles)
% hObject    handle to edit_kelas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_kelas as text
%        str2double(get(hObject,'String')) returns contents of edit_kelas as a double

% --- Executes during object creation, after setting all properties.
function edit_kelas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_kelas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clc
[filename, pathname] = uigetfile({'*.*';'*.bmp';'*.jpg';'*.gif'}, 'Pilih gambar query');
I = imread([pathname,filename]);
I = imresize(I,[255,500]);
handles.sliderValue = 3;
seg_img = SegmentImage(I,handles.sliderValue);
axes(handles.axes1);
imshow(seg_img);title('Gambar Query');
handles.imageData = seg_img;
guidata(hObject,handles);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.sliderValue = 3;
seg_img = SegmentImage(handles.imageData,handles.sliderValue);

gray_img = rgb2gray(seg_img);
hsv_img = rgb2hsv(seg_img);

I = imresize(hsv_img,[255,500]);
J = imresize(gray_img,[255,500]);

axes(handles.axes2); imshow(I);
title('Gambar HSV');
axes(handles.axes3); imshow(J);
title('Gambar greylevel');

handles.seg_img = seg_img;

image = GLCM(gray_img);
tab(:,1)= [image(1,1) image(1,2) image(1,3) image(1,4) image(1,5)]';
tab(:,2)= [image(1,6) image(1,7) image(1,8) image(1,9) image(1,10)]';
tab(:,3)= [image(1,11) image(1,12) image(1,13) image(1,14) image(1,15)]';
tab(:,4)= [image(1,16) image(1,17) image(1,18) image(1,19) image(1,20)]';
tab(:,5)= [image(1,21) image(1,22) image(1,23) image(1,24) image(1,25)]';
set(handles.uitable1, 'Data', tab);
guidata(hObject,handles);

hsv_img = rgb2hsv(seg_img);
H = mean2(hsv_img(:,:,1));
S = mean2(hsv_img(:,:,2));
V = mean2(hsv_img(:,:,3));

handles.test_glcm = [image(1,1) image(1,2) image(1,3) image(1,4) image(1,6) image(1,7) image(1,8) image(1,9) image(1,11) image(1,12) image(1,13) image(1,14) image(1,16) image(1,17) image(1,18) image(1,19) image(1,21) image(1,22) image(1,23) image(1,24)];
handles.test_meanglcm = [image(1,5) image(1,10) image(1,15) image(1,20) image(1,25)];
handles.test_hsv = [H S V];
handles.test_hsv_glcm = [H S V image(1,1) image(1,2) image(1,3) image(1,4) image(1,6) image(1,7) image(1,8) image(1,9) image(1,11) image(1,12) image(1,13) image(1,14) image(1,16) image(1,17) image(1,18) image(1,19) image(1,21) image(1,22) image(1,23) image(1,24)];
handles.test_hsv_meanglcm = [H S V image(1,5) image(1,10) image(1,15) image(1,20) image(1,25)];
guidata(hObject,handles);

set(handles.edit_H,'string', H);
set(handles.edit_S,'string', S);
set(handles.edit_V,'string', V);

function uibuttongroup1_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uibuttongroup1 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
radio_btn = get(handles.uibuttongroup1,'SelectedObject');
classifier = get(radio_btn, 'String');


% --- Executes on button press in pushbutton_klasifikasi.
function pushbutton_klasifikasi_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_klasifikasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

radio_btn = get(handles.uibuttongroup1,'SelectedObject');
fitur = get(radio_btn, 'String');

labels = load('Training_Data.mat','train_labels');
mapObj = load('MAP.mat','mapObj');
labels = struct2array(labels);
mapObj = struct2array(mapObj);

if(strcmp(fitur,'GLCM'))
    data = load('Training_Data.mat','glcm');
    data = struct2array(data);
    model = fitcknn(data,labels,'NumNeighbors',3,'Standardize',1,'distance','euclidean');
    hasil = predict(model,handles.test_glcm);
elseif(strcmp(fitur,'Mean GLCM'))
    data = load('Training_Data.mat','mean_glcm');
    data = struct2array(data);
    model = fitcknn(data,labels,'NumNeighbors',3,'Standardize',1,'distance','euclidean');
    hasil = predict(model,handles.test_meanglcm);
elseif(strcmp(fitur,'HSV'))
    data = load('Training_Data.mat','hsv');
    data = struct2array(data);
    model = fitcknn(data,labels,'NumNeighbors',1,'Standardize',1, 'distance','euclidean');
    hasil = predict(model,handles.test_hsv);
elseif(strcmp(fitur,'HSV + GLCM'))
    data = load('Training_Data.mat','hsv_glcm');
    data = struct2array(data);
    model = fitcknn(data,labels,'NumNeighbors',1,'Standardize',1,'distance','euclidean');
    hasil = predict(model,handles.test_hsv_glcm);
elseif(strcmp(fitur,'HSV + Mean GLCM'))
    data = load('Training_Data.mat','hsv_meanglcm');
    data = struct2array(data);
    model = fitcknn(data,labels,'NumNeighbors',1,'Standardize',1,'distance','euclidean');
    hasil = predict(model,handles.test_hsv_meanglcm);
end
nama = mapObj(hasil);
set(handles.edit_kelas,'string', nama);
