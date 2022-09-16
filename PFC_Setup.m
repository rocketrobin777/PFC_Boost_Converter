clear all;
%% System Parameter
L = 0.0004;             % Inductance
R_L = 150e-3;           % Internal inductivity resistance         
R_DS   = 50e-3;         % Drain-Source resistance
R_Load = 126;           % Load resistance
C = 0.0012;             % Capacity
%% Boundaries 
f = 50;                 % Net frequency
U0 = 230*sqrt(2);       % Source voltage
UD = 400;               % Demand voltage
U_ref = 2.5;            % Reference voltage
UC_Init = UD;           % Init Outout voltage
%% Control Parameter
fs     = 1e4;           % Switching vrequency
u_gain = U_ref/460;     % Voltage signal gain
i_gain = U_ref;         % Current signal gain
R_Shunt = sqrt(2)*U_ref/40; % Current measure resistance
t_sim = 50e-3;          % Simulation time
t_step = 0.01/fs;       % Simulation time step;
VC_i = 100;             % Voltage control I-Parameter
VC_p = 0;               % Voltage control P-Parameter
CC_p = 12.5;            % Current control P-Parameter
CC_i = 250;             % Current control I-Parameter
%% Simulation
sim('PFC_Model',t_sim);