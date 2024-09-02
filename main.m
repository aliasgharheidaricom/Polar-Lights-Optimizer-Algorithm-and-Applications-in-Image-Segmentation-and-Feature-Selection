
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


%%
% fobj = @YourCostFunction    
% dim = number of your variables   
% MaxFEs = Maximum numbef of fitness evaluations
% lb=[lb1,lb2,...,lbn] where lbn is the lower bound of variable n  
% ub=[ub1,ub2,...,ubn] where ubn is the upper bound of variable n  
% If all the variables have equal lower bound you can just
% define lb and ub as two single number numbers

%%
clear all 
clc
rng('default')
Function_name='F1'; % Name of the test function that can be from F1 to F23



% Load details of the selected benchmark function
[lb,ub,dim,fobj]=Get_Functions_details(Function_name);
MaxFEs=10000*dim;
N = 30; %popultaion size

[Best_pos,Best_score,Convergence_curve] = PLO(N,MaxFEs,lb,ub,dim,fobj);

figure('Position',[269   240   660   290])
%Draw search space
subplot(1,2,1);
func_plot(Function_name);
title('Parameter space')
xlabel('x_1');
ylabel('x_2');
zlabel([Function_name,'( x_1 , x_2 )'])

%Draw objective space
subplot(1,2,2);
plot(Convergence_curve,'Color','r')
title('Objective space')
xlabel('Iteration');
ylabel('Best score obtained so far');

axis tight
grid on
box on
legend('PLO')

display(['The best solution obtained by ,PLO is : ', num2str(Best_pos)]);
display(['The best optimal value of the objective funciton found by ,PLO is : ', num2str(Best_score)]);



