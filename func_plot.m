% 📜 Polar Lights Optimizer (PLO) Optimization source codes (version 1.0)
% 🌐 Website and codes of PLO: Polar Lights Optimizer: Algorithm and Applications in Image Segmentation and Feature Selection:
 
% 🔗 http://www.aliasgharheidari.com/PLO.html

% 👥 Chong Yuan, Dong Zhao, Ali Asghar Heidari, Lei Liu, Yi Chen, Huiling Chen

% 📅 Last update: 8 18 2024

% 📧 E-Mail: yc18338414794@163.com, zd-hy@163.com, aliasghar68@gmail.com, chenhuiling.jlu@gmail.com
  

% 📜 After use of code, please users cite to the main paper on PLO: 
% Polar Lights Optimizer: Algorithm and Applications in Image Segmentation and Feature Selection:
% Chong Yuan, Dong Zhao, Ali Asghar Heidari, Lei Liu, Yi Chen, Huiling Chen
% Neurocomputing - 2024

%----------------------------------------------------------------------------------------------------------------------------------------------------%

% 📊 You can use and compare with other optimization methods developed recently:
%     - (PLO) 2024: 🔗 http://www.aliasgharheidari.com/PLO.html
%     - (FATA) 2024: 🔗 http://www.aliasgharheidari.com/FATA.html
%     - (ECO) 2024: 🔗 http://www.aliasgharheidari.com/ECO.html
%     - (AO) 2024: 🔗 http://www.aliasgharheidari.com/AO.html
%     - (PO) 2024: 🔗 http://www.aliasgharheidari.com/PO.html
%     - (RIME) 2023: 🔗 http://www.aliasgharheidari.com/RIME.html
%     - (INFO) 2022: 🔗 http://www.aliasgharheidari.com/INFO.html
%     - (RUN) 2021: 🔗 http://www.aliasgharheidari.com/RUN.html
%     - (HGS) 2021: 🔗 http://www.aliasgharheidari.com/HGS.html
%     - (SMA) 2020: 🔗 http://www.aliasgharheidari.com/SMA.html
%     - (HHO) 2019: 🔗 http://www.aliasgharheidari.com/HHO.html
%____________________________________________________________________________________________________________________________________________________%


% This function draw the benchmark functions

function func_plot(func_name)

[lb,ub,dim,fobj]=Get_Functions_details(func_name);

switch func_name 
    case 'F1' 
        x=-100:2:100; y=x; %[-100,100]
        
    case 'F2' 
        x=-100:2:100; y=x; %[-10,10]
        
    case 'F3' 
        x=-100:2:100; y=x; %[-100,100]
        
    case 'F4' 
        x=-100:2:100; y=x; %[-100,100]
    case 'F5' 
        x=-200:2:200; y=x; %[-5,5]
    case 'F6' 
        x=-100:2:100; y=x; %[-100,100]
    case 'F7' 
        x=-1:0.03:1;  y=x  %[-1,1]
    case 'F8' 
        x=-500:10:500;y=x; %[-500,500]
    case 'F9' 
        x=-5:0.1:5;   y=x; %[-5,5]    
    case 'F10' 
        x=-20:0.5:20; y=x;%[-500,500]
    case 'F11' 
        x=-500:10:500; y=x;%[-0.5,0.5]
    case 'F12' 
        x=-10:0.1:10; y=x;%[-pi,pi]
    case 'F13' 
        x=-5:0.08:5; y=x;%[-3,1]
    case 'F14' 
        x=-100:2:100; y=x;%[-100,100]
    case 'F15' 
        x=-5:0.1:5; y=x;%[-5,5]
    case 'F16' 
        x=-1:0.01:1; y=x;%[-5,5]
    case 'F17' 
        x=-5:0.1:5; y=x;%[-5,5]
    case 'F18' 
        x=-5:0.06:5; y=x;%[-5,5]
    case 'F19' 
        x=-5:0.1:5; y=x;%[-5,5]
    case 'F20' 
        x=-5:0.1:5; y=x;%[-5,5]        
    case 'F21' 
        x=-5:0.1:5; y=x;%[-5,5]
    case 'F22' 
        x=-5:0.1:5; y=x;%[-5,5]     
    case 'F23' 
        x=-5:0.1:5; y=x;%[-5,5]  
end    

    

L=length(x);
f=[];

for i=1:L
    for j=1:L
        if strcmp(func_name,'F15')==0 && strcmp(func_name,'F19')==0 && strcmp(func_name,'F20')==0 && strcmp(func_name,'F21')==0 && strcmp(func_name,'F22')==0 && strcmp(func_name,'F23')==0
            f(i,j)=fobj([x(i),y(j)]);
        end
        if strcmp(func_name,'F15')==1
            f(i,j)=fobj([x(i),y(j),0,0]);
        end
        if strcmp(func_name,'F19')==1
            f(i,j)=fobj([x(i),y(j),0]);
        end
        if strcmp(func_name,'F20')==1
            f(i,j)=fobj([x(i),y(j),0,0,0,0]);
        end       
        if strcmp(func_name,'F21')==1 || strcmp(func_name,'F22')==1 ||strcmp(func_name,'F23')==1
            f(i,j)=fobj([x(i),y(j),0,0]);
        end          
    end
end

surfc(x,y,f,'LineStyle','none');

end

