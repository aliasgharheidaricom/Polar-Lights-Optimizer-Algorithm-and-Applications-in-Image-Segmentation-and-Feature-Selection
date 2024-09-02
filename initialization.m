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


% This function initialize the first population of search agents
function Positions=initialization(SearchAgents_no,dim,ub,lb)

Boundary_no= size(ub,2); % numnber of boundaries

% If the boundaries of all variables are equal and user enter a signle
% number for both ub and lb
if Boundary_no==1
    Positions=rand(SearchAgents_no,dim).*(ub-lb)+lb;
end

% If each variable has a different lb and ub
if Boundary_no>1
    for i=1:dim
        ub_i=ub(i);
        lb_i=lb(i);
        Positions(:,i)=rand(SearchAgents_no,1).*(ub_i-lb_i)+lb_i;
    end
end