% Establishes glider calibration constants.

% This file is an example as well as documentation.
% Lines prefixed with %PARAM are parameters - remove "%PARAM " to enable
% Note - this file MUST be changed apprpriately for your vehicle and mission

% REQUIRED
id_str = '266';

% REQUIRED
mission_title ='TH Line Mar 2025';

% REQUIRED
mass = 72.999 ; % (kg) scale weight

% NOTE:
% FlightModel will supply
%
%  volmax, vbdbias, hd_a, hd_b, hd_c, hd_s, rho0, abs_compress, therm_expan, temp_ref
%
% ignoring any settings here and issue a warning, unless
% --skip_flight_model is set, in which case processing will use these
% variables. To suppress warnings about these variables, insert FM_ignore anywhere in a comment on the same
% line as the variable
% 


%
% Legato CTD
%

% Required
sg_ct_type = 4;  % Indicates a legato CTD

calibcomm = 'Legato s/n 233483, calibration 20 Dec 2023';

% Required for Legato as logdev or on the truck
legato_sealevel = 10106;

% Set to 1 to use the Seaglider pressure sensor for CTD corrections
legato_use_truck_pressure = 0;

% Set to 0 to disable the basestation conductivity pressure correction, in favor of the on in the instrument
% On board correction is applied when X2, X3 and X4 are non-zero (see metadata capture from a selftest)
% See RBR document "0013279revA Conductivity pressure correction for RBRlegato3 with RBR#0007155 top.pdf"
legato_cond_press_correction = 0;

% Misc legato settings

% ignore any legato columns from the truck
%PARAM ignore_truck_legato = 1; 

% Optode
calibcomm_optode = 'Optode 4831 SN: 1152  Foil ID: 2310M calibrated 11/26/2023';
optode_PhaseCoef0 = -2.454;
optode_PhaseCoef1 = 1;
optode_PhaseCoef2 = 0;
optode_PhaseCoef3 = 0;
optode_ConcCoef0 = 0;
optode_ConcCoef1 = 1;


optode_FoilCoefA0 = -4.42947e-06;
optode_FoilCoefA1 = -9.93412e-06;
optode_FoilCoefA2 = 0.0025393;
optode_FoilCoefA3 = -0.262388;
optode_FoilCoefA4 = 0.000949566;
optode_FoilCoefA5 = -1.38517e-06;
optode_FoilCoefA6 = 13.8451;
optode_FoilCoefA7 = -0.0782011;
optode_FoilCoefA8 = 0.000207783;
optode_FoilCoefA9 = 1.95174e-07;
optode_FoilCoefA10 = -381.523;
optode_FoilCoefA11 = 2.96871;
optode_FoilCoefA12 = -0.00455169;
optode_FoilCoefA13 = -0.000344976;

optode_FoilCoefB0 = 5.20005e-06;
optode_FoilCoefB1 = 4547.3;
optode_FoilCoefB2 = -44.533;
optode_FoilCoefB3 = -0.193677;
optode_FoilCoefB4 = 0.0223095;
optode_FoilCoefB5 = -0.000413419;
optode_FoilCoefB6 = 1.49735e-06;
optode_FoilCoefB7 = 0;
optode_FoilCoefB8 = 0;
optode_FoilCoefB9 = 0;
optode_FoilCoefB10 = 0;
optode_FoilCoefB11 = 0;
optode_FoilCoefB12 = 0;
optode_FoilCoefB13 = 0;

optode_SVU_enabled = 1;

optode_SVUCoef0 = 0.00280962;
optode_SVUCoef1 = 0.000120868;
optode_SVUCoef2 = 2.27689e-06;
optode_SVUCoef3 = 148.003;
optode_SVUCoef4 = -0.214331;
optode_SVUCoef5 = -30.5561;
optode_SVUCoef6 = 2.94579;

%
% Wetlabs
%


% If present, the basestation will add additional columns to apply the "standard" correction to
% the wetlabs data per the cal sheet. Format for these entries is:
%
% <instrument>_<channelname>_dark_counts = <dark_counts>;
% <instrument>_<channelname>_max_counts = <max_counts>;
% <instrument>_<channelname>_resolution_counts = <resolution_counts>;
% <instrument>_<channelname>_scale_factor = <scale_factor>;

wlbbfl2_sig700nm_dark_counts = 48.0; % For red scattering channel
wlbbfl2_sig700nm_scale_factor = 3.071e-06; % For red scattering channel
wlbbfl2_sig700nm_resolution_counts = 1.0; % For red scattering channel
wlbbfl2_sig700nm_max_counts = 9999.0; % For red scattering channel
wlbbfl2_sig460nm_dark_counts = 49.0; % For CDOM fluorescence channel
wlbbfl2_sig460nm_scale_factor = 0.0909; % For CDOM fluorescence channel
wlbbfl2_sig460nm_resolution_counts = 1.0; % For CDOM fluorescence channel
wlbbfl2_sig460nm_max_counts = 4130.0; % For CDOM fluorescence channel
wlbbfl2_sig695nm_dark_counts = 49.0; % For chlorophyll fluorescence channel
wlbbfl2_sig695nm_scale_factor = 0.0121; % For chlorophyll fluorescence channel
wlbbfl2_sig695nm_resolution_counts = 1.0; % For chlorophyll fluorescence channel
wlbbfl2_sig695nm_max_counts = 4130.0; % For chlorophyll fluorescence channel

