function varargout = game2_in_2_3(varargin)
% GAME2_IN_2_3 MATLAB code for game2_in_2_3.fig
%      GAME2_IN_2_3, by itself, creates a new GAME2_IN_2_3 or raises the existing
%      singleton*.
%
%      H = GAME2_IN_2_3 returns the handle to a new GAME2_IN_2_3 or the handle to
%      the existing singleton*.
%
%      GAME2_IN_2_3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GAME2_IN_2_3.M with the given input arguments.
%
%      GAME2_IN_2_3('Property','Value',...) creates a new GAME2_IN_2_3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before game2_in_2_3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to game2_in_2_3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help game2_in_2_3

% Last Modified by GUIDE v2.5 05-Jun-2019 01:31:35

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @game2_in_2_3_OpeningFcn, ...
                   'gui_OutputFcn',  @game2_in_2_3_OutputFcn, ...
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


% --- Executes just before game2_in_2_3 is made visible.
function game2_in_2_3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to game2_in_2_3 (see VARARGIN)

% Choose default command line output for game2_in_2_3
handles.output = hObject;
a=imread('星星集團2.png');
image(a);
global counter;
counter = 0;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes game2_in_2_3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = game2_in_2_3_OutputFcn(hObject, eventdata, handles) 
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
global counter;
counter = counter+1;
if counter==1
    close
    ball2_2
end
