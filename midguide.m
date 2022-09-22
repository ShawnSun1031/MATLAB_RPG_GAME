function varargout = midguide(varargin)
% MIDGUIDE MATLAB code for midguide.fig
%      MIDGUIDE, by itself, creates a new MIDGUIDE or raises the existing
%      singleton*.
%
%      H = MIDGUIDE returns the handle to a new MIDGUIDE or the handle to
%      the existing singleton*.
%
%      MIDGUIDE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MIDGUIDE.M with the given input arguments.
%
%      MIDGUIDE('Property','Value',...) creates a new MIDGUIDE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before midguide_OpeningFcn gets called.  An
%      unrecognized property name or invalid  value makes property application
%      stop.  All inputs are passed to midguide_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help midguide

% Last Modified by GUIDE v2.5 12-Jun-2019 14:01:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @midguide_OpeningFcn, ...
                   'gui_OutputFcn',  @midguide_OutputFcn, ...
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


% --- Executes just before midguide is made visible.
function midguide_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to midguide (see VARARGIN)

% Choose default command line output for midguide
handles.output = hObject;
[y, fs]=audioread('東京.mp3'); % 讀取音訊檔
sound(y, fs); % 播放音訊
global t;
t=0;
ha=axes('units','normalized','pos',[0 0 1 1]);

 uistack(ha,'down');
 Background=imread('泳池.jpg');
 image(Background);
 colormap gray
 set(ha,'handlevisibility','off','visible','off');

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes midguide wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = midguide_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t;
if t==0
clear all;    
close(midguide);
clear sound;  
test;
elseif t==1
    clear all;
    close;
    clear sound;  
    test2;
end







% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t;
if t==0  
clear all;   
close(midguide);
clear sound;  
game_in_2;
elseif t==1
    clear all;
    close;
    clear sound;  
    game2_in_2;
end
 
    


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
game_description


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t;
t=0;
set(handles.Untitled_2,'text','ˇ單人模式');
set(handles.Untitled_3,'text','雙人模式');

% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t;
t=1;
set(handles.Untitled_2,'text','單人模式');
set(handles.Untitled_3,'text','ˇ雙人模式');


% --------------------------------------------------------------------
function Untitled_5_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close;
clear sound;
ball3;
