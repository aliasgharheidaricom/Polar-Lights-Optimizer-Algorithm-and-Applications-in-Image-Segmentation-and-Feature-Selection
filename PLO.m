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




 
function [Best_pos,Bestscore,Convergence_curve]=PLO(N,MaxFEs,lb,ub,dim,fobj)
tic
%% Initialization
FEs = 0;
it = 1;
fitness=inf*ones(N,1);
fitness_new=inf*ones(N,1);

X=initialization(N,dim,ub,lb);
V=ones(N,dim);
X_new=zeros(N,dim);

for i=1:N
    fitness(i)=fobj(X(i,:));
    FEs=FEs+1;
end

[fitness, SortOrder]=sort(fitness);
X=X(SortOrder,:);
Bestpos=X(1,:);
Bestscore=fitness(1);

Convergence_curve=[];
Convergence_curve(it)=Bestscore;

%% Main loop
while FEs <= MaxFEs
    
    X_sum=sum(X,1);
    X_mean=X_sum/N;
    w1=tansig((FEs/MaxFEs)^4);
    w2=exp(-(2*FEs/MaxFEs)^3);
    
    for i=1:N
        
        a=rand()/2+1;
        V(i,:)=1*exp((1-a)/100*FEs);
        LS=V(i,:);

        GS=Levy(dim).*(X_mean-X(i,:)+(lb+rand(1,dim)*(ub-lb))/2);
        X_new(i,:)=X(i,:)+(w1*LS+w2*GS).*rand(1,dim);
    end
    
    E =sqrt(FEs/MaxFEs);
    A=randperm(N);
    for i=1:N
        for j=1:dim
            if (rand<0.05) && (rand<E)
                X_new(i,j)=X(i,j)+sin(rand*pi)*(X(i,j)-X(A(i),j));
            end
        end
        Flag4ub=X_new(i,:)>ub;
        Flag4lb=X_new(i,:)<lb;
        X_new(i,:)=(X_new(i,:).*(~(Flag4ub+Flag4lb)))+ub.*Flag4ub+lb.*Flag4lb;
        fitness_new(i)=fobj(X_new(i,:));
        FEs=FEs+1;
        if fitness_new(i)<fitness(i)
            X(i,:)=X_new(i,:);
            fitness(i)=fitness_new(i);
        end
    end
    [fitness, SortOrder]=sort(fitness);
    X=X(SortOrder,:);
    if fitness(1)<Bestscore
        Bestpos=X(1,:);
        Bestscore=fitness(1);
    end
    it = it + 1;
    Convergence_curve(it)=Bestscore;
    Best_pos=Bestpos;
end
toc
end

function o=Levy(d)
beta=1.5;
sigma=(gamma(1+beta)*sin(pi*beta/2)/(gamma((1+beta)/2)*beta*2^((beta-1)/2)))^(1/beta);
u=randn(1,d)*sigma;v=randn(1,d);
step=u./abs(v).^(1/beta);
o=step;
end