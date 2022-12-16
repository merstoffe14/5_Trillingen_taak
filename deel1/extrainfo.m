% Een verzameling van notities van tijdens de les.


% Voor een fft is het ook belangerijk dat f0 = 1/T0
% We moeten kunnen motiveren waarom we een bepaalde simulatie tijd gaan
% kiezen

% In ons voorbeeld is f0 = 1/10 = 0.1 hz

% db = 20log(abs(x)) maar is ingebouwd in matlab
% ipv van db kan je ook gewoon abs() gebruiken maar dan is de schaal
% linear, dit is onhandiger voor deze opdracht.

% Voor FWHM neem je de waarde bij de piek, en dan de waardes bij ongeveer 3
% db lager. want de helft van de amplitude is 6 db maar de helft van de
% power is 3 db lager en we doen full width at half maximum (power).
% We gaan matlab gebruiken om het te plotten, maar niet om alles te
% berekenen, want dat is een cursus apart.


% De nauwkeurigheid van fwhm is lager, maar werkt wel met 2 modes.
% Dit is te zien in de plot.
% Je zal 2 curves zien (2 massas) in elk van die 2 zal je 2 resonantie
% frequenties zien. In theorie zouden deze verschillende curves hun res
% frequenties exact overeen komen, in de praktijk komt dit niet uit.

% Om te checken of je in de buurt zit met je resonantie (bij 2 DOF) frequentie (via eig)
% kan je checken aan de hand met de res freq van een 1 DOF, dit is
% gemakelijker want omega=sqrt(k/m) ipv eig op papier is heel moeilijk.
% als M gebruik je de som van je 2 massas, als K gebruik je de grootste van
% de twee. Hier kom je een omega [in rad/s] met zelfde grootte orde uit.

% Je moet je eig freq al weten want dan kan je bij je simulaties de chirp
% bv door de eig freq laten gaan.

% De sample frequentie moet ook een paar keer groter zijn dan de hoogste
% freq waar je geintresseerd in bent, dus bv omega is 5hz, sample = 100hz

% Sample frequentie en simulatietijd moeten we verklaren in het verslag

% Waaarom is simulatie tijd belangerijk? 
% Bij de vrije trilling: je wilt zien dat het systeem uitdempt
% Bij de fft: de frequentie resolutie is gelijk aan 1/T_sim, dus 10s
% simullatie tijd dan krijg je om de 0,1 hz een stap, dus als je meer
% accuraatheid wilt moet je de simulatie tijd verlengen.

% Bij de solver: je moet de solver op fixed step zetten, en de stepsize kan
% je ook instellen, zet die bv op 1e-3, dan heb je een sample freq van
% 1000hz

% We nemen altijd een vaste grootte tijdstap, want anders kunnen we geen
% fft toepassen (ctrl+r voor comments)

% Nu gaan we onze Omega_n uit de data halen uit de logaritmishe decrement
% methode (zie slides van deze les voor herhaling methode).
% Dit reken je op papier uit met waardes uit de gegenereerde plot.

% Op dit gaan we geen logaritmishe decrement methode toepassen
% Want dat gaat niet, je ziet in deze response 2 resonanties. dit is een
% combinatie van de 2 trillingsmodes, het is heel moeilijk om die twee van
% elkaar te scheiden. In de opdracht zal dit gevraagd worden. Oftewel is
% het de moeilijk oftewel is de fout tov de juiste methode (eig methode)
% heel groot.


