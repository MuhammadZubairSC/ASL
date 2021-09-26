%Author:Muhammad Zubair SC
%Title: American Sign Language

function varargout = Asl(varargin)
% Asl MATLAB code for Asl.fig
%      ASL, by itself, creates a new ASL or raises the existing
%      singleton*.
%
%      H = ASL returns the handle to a new ASL or the handle to
%      the existing singleton*.
%
%      ASL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ASL.M with the given input arguments.
%
%      ASL('Property','Value',...) creates a new ASL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Asl_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Asl_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Asl

% Last Modified by GUIDE v2.5 12-Jul-2017 12:22:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Asl_OpeningFcn, ...
                   'gui_OutputFcn',  @Asl_OutputFcn, ...
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


% --- Executes just before Asl is made visible.
function Asl_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Asl (see VARARGIN)

% Choose default command line output for Asl
handles.output = hObject;

% UIWAIT makes Asl wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Asl_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in start1.
function start1_Callback(hObject, eventdata, handles)
% hObject    handle to start1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

cla(handles.axes1);
load('AD53.mat');
a= arduino('COM5','nano');
pt=0;
q=0;
r=0;
s=0;
t=0;
axes(handles.axes1);
line1 = line(0, 0, 'color', 'red');
line2 =line(0, 0, 'color', 'blue');
line3 = line(0, 0, 'color', 'black');
line4 =line(0, 0, 'color', 'cyan');
line5 = line(0, 0, 'color', 'magenta');
line6 =line(0, 0, 'color', 'yellow');
line7 = line(0, 0, 'color', 'green');
line8 =line(0, 0, 'color', 'green');
i=0;
k=0;
 channelID=300433;
 writeAPIKey='Z93DYG1VVPEQ0FL6';
 thingSpeakAuthenticate(300433, 'ReadKey', 'ETVA9ZN8HRRNLH9G', 'WriteKey', 'Z93DYG1VVPEQ0FL6');
while 1
    Thumb= readVoltage(a, 'A0');
    Pointer= readVoltage(a, 'A1');
    Tallman= readVoltage(a, 'A2');
    Ringman= readVoltage(a, 'A3');
    Pinky= readVoltage(a, 'A4');
    X= readVoltage(a, 'A5');
    Y= readVoltage(a, 'A6');
    Z= readVoltage(a, 'A7');
    pause(0.5);
    
    x11= get(line1, 'xData');
    y11= get(line1, 'yData');
    x12= get(line2, 'xData');
    y12= get(line2, 'yData');
    x13= get(line3, 'xData');
    y13= get(line3, 'yData');
    x14= get(line4, 'xData');
    y14= get(line4, 'yData');
    x15= get(line5, 'xData');
    y15= get(line5, 'yData');
    x16= get(line6, 'xData');
    y16= get(line6, 'yData');
    x17= get(line7, 'xData');
    y17= get(line7, 'yData');
    x18= get(line8, 'xData');
    y18= get(line8, 'yData');
    
    x11=[x11 i];
    y11=[y11 Thumb];
    x12=[x12 i];
    y12=[y12 Pointer];
    x13=[x13 i];
    y13=[y13 Tallman];
    x14=[x14 i];
    y14=[y14 Ringman];
    x15=[x15 i];
    y15=[y15 Pinky];
    x16=[x16 i];
    y16=[y16 X];
    x17=[x17 i];
    y17=[y17 Y];
    x18=[x18 i];
    y18=[y18 Z];
    
    set(line1, 'xData', x11, 'yData', y11);
    set(line2, 'xData', x12, 'yData', y12);
    set(line3, 'xData', x13, 'yData', y13);
    set(line4, 'xData', x14, 'yData', y14);
    set(line5, 'xData', x15, 'yData', y15);
    set(line6, 'xData', x16, 'yData', y16);
    set(line7, 'xData', x17, 'yData', y17);
    set(line8, 'xData', x18, 'yData', y18);
    xlabel('Iterations');
    ylabel('Sensor Values (V)');
    legend('Thumb','Pointer','Tallman','Ringman','Pinky','X','Y','Z');
    if(i>0)
    
    anys= [y11(i) y12(i) y13(i) y14(i) y15(i) y16(i) y17(i) y18(i)];
    thingSpeakWrite(channelID, anys, 'WriteKey', writeAPIKey);
    predct = predictOneVsAll(all_theta, anys);
    if(y16(i)==y16(i+1)&& y17(i)==y17(i+1)&& y18(i)==y18(i+1))
        if(predct==26 ||(predct>=37 && predct<=45)||(predct>=47))
            predct=0;
        end
    end
    switch(predct)
        case 1
       set(handles.text2,'String','A');
        case 2
        set(handles.text2,'String','B');
        case 3
         set(handles.text2,'String','C');
        case 4
         set(handles.text2,'String','D');
        case 5
          set(handles.text2,'String','E');
        case 6
         set(handles.text2,'String','F');
        case 7
         set(handles.text2,'String','G');
        case 8
         set(handles.text2,'String','H');
        case 9
         set(handles.text2,'String','I');
        case 10
         set(handles.text2,'String','J');
        case 11
         set(handles.text2,'String','K');
        case 12
         set(handles.text2,'String','L');
        case 13
         set(handles.text2,'String','M');
        case 14
         set(handles.text2,'String','N');
        case 15
         set(handles.text2,'String','O');
        case 16
         set(handles.text2,'String','P');
        case 17
         set(handles.text2,'String','Q');
        case 18
         set(handles.text2,'String','R');
        case 19
         set(handles.text2,'String','S');
        case 20
         set(handles.text2,'String','T');
        case 21
         set(handles.text2,'String','U');
        case 22
         set(handles.text2,'String','V');
        case 23
         set(handles.text2,'String','W');
        case 24
         set(handles.text2,'String','X');
        case 25
         set(handles.text2,'String','Y');
        case 26
         set(handles.text2,'String','Z');
        case 27
         set(handles.text2,'String','1');
        case 28
         set(handles.text2,'String','2');
        case 29
         set(handles.text2,'String','3');
        case 30
         set(handles.text2,'String','4');
        case 31
         set(handles.text2,'String','5');
        case 32
         set(handles.text2,'String','6');
        case 33
         set(handles.text2,'String','7');
        case 34
         set(handles.text2,'String','8');
        case 35
         set(handles.text2,'String','9');
        case 36
         set(handles.text2,'String','0');
        case 37
         set(handles.text2,'String','Goodbye');
        case 38
         set(handles.text2,'String','Eat');
        case 39
         set(handles.text2,'String','Good');
        case 40
         set(handles.text2,'String','Hello');
         case 41
         set(handles.text2,'String','Help');
         case 42
         set(handles.text2,'String','How are you?');
         case 43
         set(handles.text2,'String','I am');
         case 44
         set(handles.text2,'String','Name');
         case 45
         set(handles.text2,'String','No');
         case 46
         set(handles.text2,'String','Standby');
         case 47
         set(handles.text2,'String','Thankyou');
         case 48
         set(handles.text2,'String','Water');
         case 49
         set(handles.text2,'String','What');
         case 50
         set(handles.text2,'String','Where');
         case 51
         set(handles.text2,'String','Whats up?');
         case 52
         set(handles.text2,'String','Yes');
         case 53
         set(handles.text2,'String','Yours');
        otherwise
    end
      pause(1/3); 
    if(predct==41)
        [t1,t2]=web('https://api.thingspeak.com/apps/thinghttp/send_request?api_key=UZBWBLDTQAHHC24Z');
        pause(5);
        close(t2);
    end
    pause(15);
    end

    i=i+1;
end


    

% --- Executes on button press in quit1.
function quit1_Callback(hObject, eventdata, handles)
% hObject    handle to quit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
clear;
close('all');


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

