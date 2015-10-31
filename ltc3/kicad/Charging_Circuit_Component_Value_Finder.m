% Andy Rusinek working on PSAS LTC3 code for the LT8490 for our circuit

clc
fprintf('\n')
disp('---------------------------------------------------------------------------')
fprintf('Welcome to Andy''s Awesome program!  I hope you enjoy your time here!\n');
disp('---------------------------------------------------------------------------')

%The settings we want for our current design of the LTC3 are:

%21.7 maximum panel voltage
%33.6 Stage 2 constange voltage
%2.4 maximum current input from panel
%Maximum chargin current 11.4A
%Maximum trickle current 3A
%Rfbout = whatever (doing 7k right now)
%Switching freqeuncy of whatever (doing 250k Hz right now)



% CLKOUT on the LT8490 sent to ground
% No temperature compensation - the cell protection chip will take care of that
% Need intial conditions first - All of the different variables for determining our 
% The maximum voltage of our solar panel is 21.7V

tilda = input('fku');
Vmax = input('What is maximum voltage that the solar panel will give?: ');
Vstage2 = input('What is the stage 2 constant voltage you want for the batteries?: ');
Imax = input('What is the maximum input current from the solar panel?: ');
Ichargemax = input('What is the maximum charging current?: ');
IchargemaxS0 = input('What is the maximum trickle current value?: ');
Rfbout2 = input('What would you like Rfbout2 to be? (choose between 4.99k - 49.9k ohms): ');
SwFreq = input('What would ou like the switching frequency to be?:  ');

%----------------------------------------------|
% Input Feedback Resistor Network calculations-|
%----------------------------------------------|

Rfbin1 = 100000*((1+(4.47/(Vmax - 6)))/(1+(5.593/(Vmax-6))));
Rdaci2 = 2.75 * (Rfbin1/(Vmax-6));
Rfbin2 = 1/(1/(100000-Rfbin1)-1/(Rdaci2));
Rdaci1 = .2 * Rdaci2;
Cdaci = 1/(1000*Rdaci1);

%-----------------------------------------------|
% Ouput Feed Back Resistor Network Calculations-|
%-----------------------------------------------|

Rfbout1 = Rfbout2 * (Vstage2 * (1.241/1.211 -.128) - 1);
Rdac02 = (Rfbout1 * Rfbout2 * .833)/((Rfbout2*Vstage2*1.241/1.211) - Rfbout2 - Rfbout1);
Rdac01 = .2*Rdac02;
Cdac0 = 1/(500*Rdac01);

%-------------------------------------|
% Charging Current Limit Calculations-|
%-------------------------------------|

Rsense2 = .0497/(Ichargemax);
Rimonout = 1208/(IchargemaxS0*Rsense2);
Riow = 24300 * Rimonout/(Rimonout-24300);
Rior = 3010;

%------------------------------------------|
%-Calculations for the Switching Regulator-|
%------------------------------------------|

%----------------------------------|
% Input Current Limit Calculations-|
%----------------------------------|

Rsense1 = .0505/(Imax);

fprintf('\n\n---------------------------------------------------------------------------------------------------------');
fprintf('\nBased on the specifications, the exact values you want should be: \n');
fprintf('Rfbin1 = %f\n', Rfbin1)
fprintf('Rfbin2 = %f\n', Rfbin2)
fprintf('Rdaci1 = %f\n', Rdaci1)
fprintf('Rdaci2 = %f\n', Rdaci2)
fprintf('Cdaci = %E\n', Cdaci)
fprintf('Rfbout1 = %f\n', Rfbout1)
fprintf('Rfbout2 = %f\n', Rfbout2)
fprintf('Rdac01 = %f\n', Rdac01)
fprintf('Rdac02 = %f\n', Rdac02)
fprintf('Cdac0 = %E\n', Cdac0)
fprintf('Rsense1 = %f\n', Rsense1)
fprintf('Rsense2 = %f\n', Rsense2)
fprintf('Rimonout = %f\n', Rimonout)
fprintf('Riow = %f\n', Riow)
fprintf('Rior = %f\n', Rior)
fprintf('---------------------------------------------------------------------------------------------------------');

%-----------------------------------------------------------|
%--Find the closest real resistor values to these resistors-|
%--defining standard resistors with a 1% tolerance----------|
%-----------------------------------------------------------|

stdr = [10 10.2 10.5 10.7 11.0 11.3 11.5 11.8 12.1 12.4 12.7 13.0 13.3 13.7 14.0 14.3 14.7 15.0 15.4 15.8 16.2 16.5 16.9 17.4 17.8 18.2 18.7 19.1 20.0 20.5 21 21.5 22.1 22.6 23.2 23.7 24.3 24.9 25.5 26.1 26.7 27.4 28.0 28.7 29.4 30.1 30.9 31.6 32.4 33.2 34 34.8 35.7 36.5 37.4 38.3 39.2 40.2 41.2 42.2 43.2 44.4 45.2 46.4 47.5 48.7 49.9 51.1 52.3 53.6 54.9 56.2 57.6 59 60.4 61.9 63.4 64.9 66.5 68.1 69.8 71.5 73.2 75 76.8 78.7 80.5 82.5 86.6 88.7 90.9 93.1 95.3 97.6];
stdrmilli = 1e-3 * stdr;
stdrmilli2 = 1e-2 * stdr;
stdrmilli3 = 1e-1 * stdr;
stdrmilli4 = 1e-4 * stdr;
stdrh = 1e2 * stdr;
stdrk = 1e3 * stdr;
stdrk1 = 1e4 * stdr;
stdrk2 = 1e5 * stdr;
stdrALL = [stdr stdrmilli stdrmilli2 stdrmilli3 stdrmilli4 stdrh stdrk stdrk1 stdrk2 ];

%--------------------------------------|
%-defining standard capacitor values---|
%--------------------------------------|

stdc = [10 12 15 18 22 27 33 39 47 56 68 82];
stdc1 = 10e-12*stdc;
stdc2 = 10e-11*stdc;
stdc3 = 10e-10*stdc;
stdc4 = 10e-9*stdc;
stdc5 = 10e-8*stdc;
stdc6 = 10e-7*stdc;
stdc7 = 10e-6*stdc;
stdc8 = 10e-5*stdc;
stdc9 = 10e-4*stdc;
stdc10 = 10e-3*stdc;
stdc11 = 10e-2*stdc;
stdc12 = 10e-1*stdc;
stdcALL = [stdc1 stdc2 stdc3 stdc4 stdc5 stdc6 stdc7 stdc8 stdc9 stdc10 stdc11 stdc12];


%--------------------------------------------------------------------------------------------|
%-In this next section, there is a small algorithm to find the second closest real resistor--|
%-value for some of the determined values.  This is done by finding the first closest index,-|
%-setting it to infinity, and then finding the closest index of the new matrix.--------------|
%--------------------------------------------------------------------------------------------|
%-This is done because the datasheet calls for multiple iterations for some voltages on------|
%-the pins.  For example we want the input resistor network to be as close as possible to----|
%-6 volts, so we run multiple iterations to find out which real resistor values will give----|
%-this to us.--------------------------------------------------------------------------------|
%--------------------------------------------------------------------------------------------|

[y, n] = min(abs(stdrALL - Rfbin1));
Rfbin1REAL = stdrALL(n);
stdrALL(n) = inf;
[y, n] = min(abs(stdrALL - Rfbin1));
Rfbin1REAL1 = stdrALL(n);
stdrALL(n) = Rfbin1REAL;

[y, n] = min(abs(stdrALL - Rfbin2));
Rfbin2REAL = stdrALL(n);
stdrALL(n) = inf;
[y, n] = min(abs(stdrALL - Rfbin2));
Rfbin2REAL1 = stdrALL(n);
stdrALL(n) = Rfbin2REAL;

[y, n] = min(abs(stdrALL - Rdaci1));
Rdaci1REAL = stdrALL(n);
stdrALL(n) = inf;
[y, n] = min(abs(stdrALL - Rdaci1));
Rdaci1REAL1 = stdrALL(n);
stdrALL(n) = Rdaci1REAL;

[y, n] = min(abs(stdrALL - Rdaci2));
Rdaci2REAL = stdrALL(n);
stdrALL(n) = inf;
[y, n] = min(abs(stdrALL - Rdaci2));
Rdaci2REAL1 = stdrALL(n);
stdrALL(n) = Rdaci2REAL;

%------------------------------------------------------------------------------|
%-For the output voltage divider, we need to do the same thing as we do above--|
%------------------------------------------------------------------------------|

[y, n] = min(abs(stdrALL - Rfbout1));
Rfbout1REAL = stdrALL(n);
stdrALL(n) = inf;
[y, n] = min(abs(stdrALL - Rfbout1));
Rfbout1REAL1 = stdrALL(n);
stdrALL(n) = Rfbout1REAL;

[y, n] = min(abs(stdrALL - Rfbout2));
Rfbout2REAL = stdrALL(n);
stdrALL(n) = inf;
[y, n] = min(abs(stdrALL - Rfbout2));
Rfbout2REAL1 = stdrALL(n);
stdrALL(n) = Rfbout2REAL;

[y, n] = min(abs(stdrALL - Rdac01));
Rdac01REAL = stdrALL(n);
stdrALL(n) = inf;
[y, n] = min(abs(stdrALL - Rdac01));
Rdaco1REAL1 = stdrALL(n);
stdrALL(n) = Rdac01REAL;

[y, n] = min(abs(stdrALL - Rdac02));
Rdac02REAL = stdrALL(n);
stdrALL(n) = inf;
[y, n] = min(abs(stdrALL - Rdac02));
Rdac02REAL1 = stdrALL(n);
stdrALL(n) = Rdac02REAL;

%--------------------------------------------------------------------|
%-For the rest of the resistors we just find the closest real value--|
%--------------------------------------------------------------------|

[y, n] = min(abs(stdrALL - Rfbout1));
Rfbout1REAL = stdrALL(n);
[y, n] = min(abs(stdrALL - Rfbout2));
Rfbout2REAL = stdrALL(n);
[y, n] = min(abs(stdrALL - Rdac01));
Rdac01REAL = stdrALL(n);
[y, n] = min(abs(stdrALL - Rdac02));
Rdac02REAL = stdrALL(n);
[y, n] = min(abs(stdrALL - Rsense1));
Rsense1REAL = stdrALL(n);
[y, n] = min(abs(stdrALL - Rsense2));
Rsense2REAL = stdrALL(n);
[y, n] = min(abs(stdrALL - Rimonout));
RimonoutREAL = stdrALL(n);
[y, n] = min(abs(stdrALL - Riow));
RiowREAL = stdrALL(n);
[y, n] = min(abs(stdrALL - Rior));
RiorREAL = stdrALL(n);
[y, n] = min(abs(stdcALL - Cdaci));
CdaciREAL = stdcALL(n);
[y, n] = min(abs(stdcALL - Cdac0));
Cdac0REAL = stdcALL(n);


%Displaying closest resistor values
fprintf('\n\n\nBased on the specifications, here are the closest real resistor values you can use: \n');
fprintf('Rfbin1REAL = %g\n', Rfbin1REAL)
%fprintf('2nd closest Rfbin1REAL1 = %g\n', Rfbin1REAL1)
fprintf('Rfbin2REAL = %g\n', Rfbin2REAL)
%fprintf('2nd closest Rfbin2REAL1 = %g\n', Rfbin2REAL1)
fprintf('Rdaci1REAL = %g\n', Rdaci1REAL)
%fprintf('2nd closest Rdaci1REAL1 = %g\n', Rdaci1REAL1)
fprintf('Rdaci2REAL = %g\n', Rdaci2REAL)
%fprintf('2nd closest Rdaci2REAL1 = %g\n', Rdaci2REAL1)
fprintf('CdaciREAL= %G\n', CdaciREAL)
fprintf('Rfbout1REAL = %g\n', Rfbout1REAL)
fprintf('Rfbout2REAL = %g\n', Rfbout2REAL)
fprintf('Rdac01REAL = %g\n', Rdac01REAL)
fprintf('Rdac02REAL = %g\n', Rdac02REAL)
fprintf('Cdac0REAL = %G\n', Cdac0REAL)
fprintf('Rsense1REAL = %g\n', Rsense1REAL)
fprintf('Rsense2REAL = %g\n', Rsense2REAL)
fprintf('RimonoutREAL = %g\n', RimonoutREAL)
fprintf('RiowREAL = %g\n', RiowREAL)
fprintf('RiorREAL = %g\n', RiorREAL)
fprintf('---------------------------------------------------------------------------------------------------------\n');


%---------------------------------------------------------------------------------------------------------------|
%Now that we have both of the closest values we need to iterate and find which values of the two we want to use-|
%For the input resistor network, we need the node to be as close to 6v as possible------------------------------|
%---------------------------------------------------------------------------------------------------------------|
%For the outpur resistor network, there's two nodes to define.  One as close to 1.22 as possible, and other as--|
%close to .805 as possible.  The equation for these nodes can be found below.-----------------------------------|
%---------------------------------------------------------------------------------------------------------------|

Rfbin1POSS = [Rfbin1REAL Rfbin1REAL1];
Rfbin2POSS = [Rfbin2REAL Rfbin2REAL1];
Rdaci1POSS = [Rdaci1REAL Rdaci1REAL1];
Rdaci2POSS = [Rdaci2REAL Rdaci2REAL1];

%----------------------------------------------------------------------------------------------------------------|
%-This next secition is where the multiple iterations occur.  This is done with a few nested for loops, each one-|
%-representing a different bit.  It runs trough the 16 possible combinations with 4 nested for loops, installing-|
%-each solution into a different index in the matrix.  When the 16 combinations are done, it looks through the---|
%-created matrix and finds the index that has the closest value.  It then takes the binary representation of the-|
%-index and from that determines which values you should use.----------------------------------------------------|
%----------------------------------------------------------------------------------------------------------------|

n=1;

%------------------------------------|
%-Input feedback resistor iterations-|
%------------------------------------|

for a=1:2
    for b=1:2
        for c=1:2
            for d=1:2
                Vx2 = 1.205*((Rfbin1POSS(a))/(Rdaci1POSS(c) + Rdaci2POSS(d))+(Rfbin1POSS(a)/Rfbin2POSS(b)) + 1);
                Vx1 =  Vx2 - 3.3*(Rfbin1POSS(a)/(Rdaci1POSS(c)+Rdaci2POSS(d)));
                PossibleVx1(n) = Vx1;
                n=n+1;
            end
        end
    end
end

PossibleVx1

%-----------------------------------------------------------------------------|
%-Equations for minimum inductor value.  Choose one bigger than this minimum--|
%-----------------------------------------------------------------------------|

Lmin = [];
Dcmax = (1 - 6/Vmax);
Lmin(1) = (6 * (Dcmax))/(2*SwFreq*(100e-3/Rsense1 - Imax*Vmax/6));
Lmin(2) = (Vmax - (6*Vmax/(Vmax-6)))*Rsense2/(.08*SwFreq);
Lmin(3) = 6*(1-Vmax/(6-Vmax))*Rsense2/(.08*SwFreq);
LminFinal = max(Lmin);

Rsensemax(1) = (2*93*10e-3*6)/(2*Imax*6+6/(SwFreq*.5*Lmin));
Rsensemax(2) = (2*86*10e-3)/(2*Imax-6/(SwFreq*.5*Lmin));
RsenseFinal =  min(Rsensemax);


[y,m] =  min(abs(PossibleVx1 - 6))
PossibleVx1Min = PossibleVx1(m)
binarystring = dec2bin(m-1,4)
x1 = str2num(binarystring(1)) + 1
x2 = str2num(binarystring(2)) + 1
x3 = str2num(binarystring(3)) + 1
x4 = str2num(binarystring(4)) + 1

fprintf('\n\n\nFor the most accurate readings - you should use these values for Rfbin1, Rfbin2, Rdaci1, and Rdaci2:\n');
fprintf('Rfbin1 = %g\n', Rfbin1POSS(x1));
fprintf('Rfbin2 = %g\n', Rfbin2POSS(x2));
fprintf('Rdaci1 = %g\n', Rdaci1POSS(x3));
fprintf('Rdaci2 = %g\n', Rdaci2POSS(x4));
fprintf('Choose an inductor greater than %g H\n',LminFinal);
fprintf('Choose a Resistor for Rsense smaller than %g ohms',RsenseFinal);
fprintf('\n---------------------------------------------------------------------------------------------------------\n');

