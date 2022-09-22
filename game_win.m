function varargout = game_win(varargin)
% GAME_WIN MATLAB code for game_win.fig
%      GAME_WIN, by itself, creates a new GAME_WIN or raises the existing
%      singleton*.
%
%      H = GAME_WIN returns the handle to a new GAME_WIN or the handle to
%      the existing singleton*.
%
%      GAME_WIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GAME_WIN.M with the given input arguments.
%
%      GAME_WIN('Property','Value',...) creates a new GAME_WIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before game_win_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to game_win_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help game_win

% Last Modified by GUIDE v2.5 04-Jun-2019 01:26:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @game_win_OpeningFcn, ...
                   'gui_OutputFcn',  @game_win_OutputFcn, ...
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


% --- Executes just before game_win is made visible.
function game_win_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to game_win (see VARARGIN)

% Choose default command line output for game_win
handles.output = hObject;
[yy, fss]=audioread('win.mp3'); % 讀取音訊檔
sound(yy, fss);% 播放音訊
a=imread('飛天小女警.png');
image(a);
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes game_win wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = game_win_OutputFcn(hObject, eventdata, handles) 
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
close(game_win);
clear sound;
midguide;
