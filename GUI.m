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
%      GUI('Property','Value',...) creates a new GUI or raises
%      the existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 06-Jun-2021 21:32:35

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

initialize_gui(hObject, handles, false);

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


% --- Executes during object creation, after setting all properties.
function func_CreateFcn(hObject, eventdata, handles)
% hObject    handle to func (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function func_Callback(hObject, eventdata, handles)
% hObject    handle to func (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of func as text
%        str2double(get(hObject,'String')) returns contents of func as a double
a=get(hObject,'String');
if isnan(a)
    set(hObject, 'String', 0);
    errordlg('Function must be entered','Error');
end
    
% f=inline(a);
% if((isempty(regexp( a, '^[A-Za-z]\w*$', 'once' ))) && true)
%     set(hObject, 'String', 0);
%     errordlg('Function must be valid','Error');
% end 
% disp(f);
% if isnan(f)
%     set(hObject, 'String', 0);
%     errordlg('Function must be valid','Error');
% end

guidata(hObject,handles)


function itr_Callback(hObject, eventdata, handles)
% hObject    handle to itr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of itr as text
%        str2double(get(hObject,'String')) returns contents of itr as a double

a=str2double(get(hObject,'String'));
if isnan(a)
    set(hObject, 'String', 0);
    errordlg('Iterations limit must be entered and valid number','Error');
end



% --- Executes during object creation, after setting all properties.
function itr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to itr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tol_Callback(hObject, eventdata, handles)
% hObject    handle to tol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tol as text
%        str2double(get(hObject,'String')) returns contents of tol as a double
a=str2double(get(hObject,'String'));
if isnan(a)
    set(hObject, 'String', 0);
    errordlg('Tolerance must be entered and valid number','Error');
end


% --- Executes during object creation, after setting all properties.
function tol_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes during object creation, after setting all properties.
function interval_CreateFcn(hObject, eventdata, handles)
% hObject    handle to interval (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function interval_Callback(hObject, eventdata, handles)
% hObject    handle to interval (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of interval as text
%        str2double(get(hObject,'String')) returns contents of interval as a double

int=get(handles.interval,'String');
if (get(handles.bisection, 'Value') == 1) || (get(handles.falsepos, 'Value') == 1)
    int=strsplit(int);
    if length(int) < 2
        set(hObject, 'String', 0);
        errordlg('Interval must be valid','Error');
    end
elseif (get(handles.newt, 'Value') == 1)
    if isnan(str2double(int))
        set(hObject, 'String', 0);
        errordlg('Xo must be valid','Error');
    end
end

guidata(hObject,handles)

% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Function
a=get(handles.func,'String');
f=inline(a);

% Interval
int=get(handles.interval,'String');

% Tolerance
tol=str2double(get(handles.tol,'String'));

% Iteration
itr=str2double(get(handles.itr,'String'));

% Bisection
 if(get(handles.bisection,'Value') == 1)
    int=strsplit(int);
    
    if length(int) < 2
        set(handles.interval, 'String', 0);
        errordlg('Interval must be valid','Error');
    end
    
    xl=str2double(int(1));
    xu=str2double(int(2));
    
    if f(xu)*f(xl)<0
        ans = bisection(f, xl, xu, tol, itr);
        set(handles.ans, 'String', ans);
    else
        errordlg('f(xu)*f(xl) must be <0','Error');
    end
% False-Position
 elseif(get(handles.falsepos,'Value') == 1)
    int=strsplit(int);
    
    if length(int) < 2
        set(handles.interval, 'String', 0);
        errordlg('Interval must be valid','Error');
    end
    
    xl=str2double(int(1));
    xu=str2double(int(2));
    
    if f(xu)*f(xl)<0
        ans = false_pos(f, xl, xu, tol, itr);
        set(handles.ans, 'String', ans);
    else
        errordlg('f(xu)*f(xl) must be <0','Error');
    end
 % Newton-Raphson
 elseif(get(handles.newt,'Value') == 1)
    xo = str2double(int);
    if isnan(xo)
        set(handles.interval, 'String', 0);
        errordlg('Xo must be valid','Error');
    end
     
     syms x;
     f1=inline2sym(f);
     

     
     ans = newton(f1, xo, tol, itr);
     set(handles.ans, 'String', ans);
 end
     
% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

initialize_gui(gcbf, handles, true);

% --- Executes when selected object changed in unitgroup.
function unitgroup_SelectionChangedFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in unitgroup 
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.interval,  'String', 0);
if (hObject == handles.bisection) || (hObject == handles.falsepos)
    set(handles.interval, 'enable', 'on');  
    set(handles.interval_name, 'String', 'Interval');  
elseif (hObject == handles.newt)
    set(handles.interval, 'enable', 'on');  
    set(handles.interval_name, 'String', 'Xo');  
else
    set(handles.interval, 'enable', 'off');
end

% --------------------------------------------------------------------
function initialize_gui(fig_handle, handles, isreset)
% If the metricdata field is present and the reset flag is false, it means
% we are we are just re-initializing a GUI by calling it from the cmd line
% while it is up. So, bail out as we dont want to reset the data.

set(handles.func, 'String', 0);
set(handles.interval,  'String', 0);
set(handles.itr, 'String', 50);
set(handles.tol,  'String', 0.00001);
set(handles.ans, 'String', 0);

set(handles.unitgroup, 'SelectedObject', handles.bisection);
set(handles.interval_name, 'String', 'Interval');

% Update handles structure
guidata(handles.figure1, handles);
