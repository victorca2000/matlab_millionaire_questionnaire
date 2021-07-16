function varargout = mainpage(varargin)
%MAINPAGE MATLAB code file for mainpage.fig
%      MAINPAGE, by itself, creates a new MAINPAGE or raises the existing
%      singleton*.
%
%      H = MAINPAGE returns the handle to a new MAINPAGE or the handle to
%      the existing singleton*.
%
%      MAINPAGE('Property','Value',...) creates a new MAINPAGE using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to mainpage_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      MAINPAGE('CALLBACK') and MAINPAGE('CALLBACK',hObject,...) call the
%      local function named CALLBACK in MAINPAGE.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help mainpage

% Last Modified by GUIDE v2.5 13-Jan-2020 19:15:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @mainpage_OpeningFcn, ...
                   'gui_OutputFcn',  @mainpage_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before mainpage is made visible.
function mainpage_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for mainpage
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes mainpage wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = mainpage_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes during object creation, after setting all properties.
function axes3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes3
axes(hObject) % Adds the main menu background by using the command imshow right after the axes are created
imshow('mainbackground.jpg')

theme_tune % Runs theme_tune function that plays the main menu song right after the axes are created


% --- Executes on button press in start_button.
function start_button_Callback(hObject, eventdata, handles)
% hObject    handle to start_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

delete(mainpage) % When the start button is clicked, the main menu will be deleted and the game_screen app will start running
clear sound
game_screen
