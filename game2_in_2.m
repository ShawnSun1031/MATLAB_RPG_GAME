function varargout = game2_in_2(varargin)
% GAME2_IN_2 MATLAB code for game2_in_2.fig
%      GAME2_IN_2, by itself, creates a new GAME2_IN_2 or raises the existing
%      singleton*.
%
%      H = GAME2_IN_2 returns the handle to a new GAME2_IN_2 or the handle to
%      the existing singleton*.
%
%      GAME2_IN_2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GAME2_IN_2.M with the given input arguments.
%
%      GAME2_IN_2('Property','Value',...) creates a new GAME2_IN_2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before game2_in_2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to game2_in_2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help game2_in_2

% Last Modified by GUIDE v2.5 13-Jun-2019 00:20:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @game2_in_2_OpeningFcn, ...
                   'gui_OutputFcn',  @game2_in_2_OutputFcn, ...
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


% --- Executes just before game2_in_2 is made visible.
function game2_in_2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to game2_in_2 (see VARARGIN)

% Choose default command line output for game2_in_2
handles.output = hObject;
[y, fs]=audioread('故事2.mp3'); % 讀取音訊檔
 sound(y, fs); % 播放音訊

a=imread('丞凱1.jpg');
b=imread('丞凱2.jpg');
c=imread('丞凱3.png');
e=imread('丞凱4.jpg');
h=imread('丞凱5.jpg');
i=imread('丞凱6.png');
f=imread('限制級.PNG');
g=imread('警告.png');
image(0,0,f)

global counter;
counter = 0;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes game2_in_2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = game2_in_2_OutputFcn(hObject, eventdata, handles) 
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
a=imread('丞凱1.jpg');
b=imread('丞凱2.jpg');
c=imread('丞凱3.png');
e=imread('丞凱4.jpg');
h=imread('丞凱5.jpg');
i=imread('丞凱6.png');
f=imread('限制級.PNG');
g=imread('警告.png');
global counter 
counter = counter+1;

if counter==1
    image(g);
end
if counter==2
    image(a);
end
if counter==3
    image(b);
end
if counter==4
    clear sound;
    image(c);
     [y, fs]=audioread('光頭.mp3'); % 讀取音訊檔
    y=y(1874250:2028600,:);
    sound(y, fs); % 播放音訊
end

if counter==5
    clear sound;
    image(e);
    [y, fs]=audioread('故事3.mp3'); % 讀取音訊檔
    sound(y, fs); % 播放音訊
end
if counter==6
   
    image(h);
    
end
if counter==7
    clear sound;
    image(i);
    [y, fs]=audioread('神奇寶貝.mp3'); % 讀取音訊檔
    sound(y, fs); % 播放音訊
end

if counter==8
    
    close
    clear sound;
    ball2_1;
end
