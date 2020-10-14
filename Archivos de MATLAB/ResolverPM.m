function varargout = ResolverPM(varargin)
% RESOLVERPM MATLAB code for ResolverPM.fig
%      RESOLVERPM, by itself, creates a new RESOLVERPM or raises the existing
%      singleton*.
%
%      H = RESOLVERPM returns the handle to a new RESOLVERPM or the handle to
%      the existing singleton*.
%
%      RESOLVERPM('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RESOLVERPM.M with the given input arguments.
%
%      RESOLVERPM('Property','Value',...) creates a new RESOLVERPM or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ResolverPM_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ResolverPM_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ResolverPM

% Last Modified by GUIDE v2.5 21-Aug-2020 18:20:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ResolverPM_OpeningFcn, ...
                   'gui_OutputFcn',  @ResolverPM_OutputFcn, ...
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


% --- Executes just before ResolverPM is made visible.
function ResolverPM_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ResolverPM (see VARARGIN)

% Choose default command line output for ResolverPM
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ResolverPM wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ResolverPM_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function filaB_Callback(hObject, eventdata, handles)
% hObject    handle to filaB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of filaB as text
%        str2double(get(hObject,'String')) returns contents of filaB as a double


% --- Executes during object creation, after setting all properties.
function filaB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filaB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function columnaB_Callback(hObject, eventdata, handles)
% hObject    handle to columnaB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of columnaB as text
%        str2double(get(hObject,'String')) returns contents of columnaB as a double


% --- Executes during object creation, after setting all properties.
function columnaB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to columnaB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%%............Estableciendo las filas y columnas para la MatrizB..........
filas=str2double(get(handles.filaB,'String'));
columnas=str2double(get(handles.columnaB,'String'));
if isnan(filas) || isnan(columnas)
    warndlg('Los cuadros deben de tener valores númericos.','Advertencia');
else
    tamano=cell(filas,columnas);
    tamano(:,:)={''};
    set(handles.MatrizB,'Data',tamano);
    set(handles.MatrizB,'ColumnEditable',true(1,columnas));
end


function filaA_Callback(hObject, eventdata, handles)
% hObject    handle to filaA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of filaA as text
%        str2double(get(hObject,'String')) returns contents of filaA as a double


% --- Executes during object creation, after setting all properties.
function filaA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to filaA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function columnaA_Callback(hObject, eventdata, handles)
% hObject    handle to columnaA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of columnaA as text
%        str2double(get(hObject,'String')) returns contents of columnaA as a double


% --- Executes during object creation, after setting all properties.
function columnaA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to columnaA (see GCBO)
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

%%..........Estableciendo las filas y columnas para la Matriz A............
filas=str2double(get(handles.filaA,'String'));
columnas=str2double(get(handles.columnaA,'String'));
if isnan(filas) || isnan(columnas)
    warndlg('Los cuadros deben de tener valores númericos.','Advertencia');
else
    tamano=cell(filas,columnas);
    tamano(:,:)={''};
    set(handles.MatrizA,'Data',tamano);
    set(handles.MatrizA,'ColumnEditable',true(1,columnas));
end

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

 %%...........Calculando el producto de Matrices...............
 columA = str2double(get(handles.columnaA,'String'));
 filA = str2double(get(handles.filaA,'String'));
 filB = str2double(get(handles.filaB,'String'));
 columB = str2double(get(handles.columnaB,'String'));

 if isnan(filA) || isnan(columA) || isnan(filB) || isnan(columB)
    warndlg('Los cuadros en la insercción de filas y columnas deben de tener valores numéricos.','Advertencia');
 else
    if columA ~= filB %%Si el valor de columA es diferente de filB
        warndlg('No se puede efectuar la operación de matrices. Por favor, revise el orden interno.','Advertencia');
     else
         A = get(handles.MatrizA,'data');
         A = str2double(A);
         B = get(handles.MatrizB,'data');
         B = str2double(B);
         respuesta = A*B
         set(handles.resultado,'String',num2str(respuesta));
    end
 end

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%%............Limpiando elementos......................
set(handles.filaA,'String','');
set(handles.columnaA,'String','');
set(handles.filaB,'String','');
set(handles.resultado,'String','');
set(handles.columnaB,'String','');
set(handles.MatrizA, 'Data', {})
set(handles.MatrizB, 'Data', {})




% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%%*--------------Regresamos a la ventana principal-----------------------
close(ResolverPM);
ProyectoAL;


function resultado_Callback(hObject, eventdata, handles)
% hObject    handle to resultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of resultado as text
%        str2double(get(hObject,'String')) returns contents of resultado as a double


% --- Executes during object creation, after setting all properties.
function resultado_CreateFcn(hObject, eventdata, handles)
% hObject    handle to resultado (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
