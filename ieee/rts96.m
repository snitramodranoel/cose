% IEEE Reliability Test System 1996.
%
% As published by the IEEE PES Reliability Test System Task Force on
% IEEE Transactions on Power Systems, 14(3), pp. 1010-1020, August, 1999.
%
% Copyright (c) 2013 Universidade Estadual de Campinas
%
% Permission is hereby granted, free of charge, to any person obtaining a copy 
% of this software and associated documentation files (the "Software"), to deal
% in the Software without restriction, including without limitation the rights 
% to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
% copies of the Software, and to permit persons to whom the Software is 
% furnished to do so, subject to the following conditions:
% 
% The above copyright notice and this permission notice shall be included in all
% copies or substantial portions of the Software.
% 
% THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
% IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
% FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE 
% AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
% LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
% OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
% SOFTWARE.

% Bus data
%
% (1) Bus Id
% (2) Bus Type [1:load, 2:generator, 3:swing]
% (3) MW Load
% (4) MVAR Load
% (5) GL
% (6) BL
% (7) Sub-area
% (8) Base kV
% (9) Zone Number
buses = [
    101, 2, 108, 22, 0, 0   , 11, 138, 11;
    102, 2,  97, 20, 0, 0   , 11, 138, 12;
    103, 1, 180, 37, 0, 0   , 11, 138, 11;
    104, 1,  74, 15, 0, 0   , 11, 138, 11;
    105, 1,  71, 14, 0, 0   , 11, 138, 11;
    106, 1, 136, 28, 0, 1.00, 11, 138, 12;
    107, 2, 125, 25, 0, 0   , 11, 138, 12;
    108, 1, 171, 35, 0, 0   , 11, 138, 12;
    109, 1, 175, 36, 0, 0   , 11, 138, 13;
    110, 1, 195, 40, 0, 0   , 11, 138, 13;
    111, 1,   0,  0, 0, 0   , 11, 230, 13;
    112, 1,   0,  0, 0, 0   , 11, 230, 13;
    113, 3, 265, 54, 0, 0   , 12, 230, 14;
    114, 2, 194, 39, 0, 0   , 12, 230, 16;
    115, 2, 317, 64, 0, 0   , 12, 230, 16;
    116, 2, 100, 20, 0, 0   , 12, 230, 16;
    117, 1,   0,  0, 0, 0   , 12, 230, 17;
    118, 2, 333, 68, 0, 0   , 12, 230, 17;
    119, 1, 181, 37, 0, 0   , 12, 230, 15;
    120, 1, 128, 26, 0, 0   , 12, 230, 15;
    121, 2,   0,  0, 0, 0   , 12, 230, 17;
    122, 2,   0,  0, 0, 0   , 12, 230, 17;
    123, 2,   0,  0, 0, 0   , 12, 230, 15;
    124, 1,   0,  0, 0, 0   , 12, 230, 16;
    201, 2, 108, 22, 0, 0   , 21, 138, 21;
    202, 2,  97, 20, 0, 0   , 21, 138, 22;
    203, 1, 180, 37, 0, 0   , 21, 138, 21;
    204, 1,  74, 15, 0, 0   , 21, 138, 21;
    205, 1,  71, 14, 0, 0   , 21, 138, 21;
    206, 1, 136, 28, 0, 1.00, 21, 138, 22;
    207, 2, 125, 25, 0, 0   , 21, 138, 22;
    208, 1, 171, 35, 0, 0   , 21, 138, 22;
    209, 1, 175, 36, 0, 0   , 21, 138, 23;
    210, 1, 195, 40, 0, 0   , 21, 138, 23;
    211, 1,   0,  0, 0, 0   , 21, 230, 23;
    212, 1,   0,  0, 0, 0   , 21, 230, 23;
    213, 2, 265, 54, 0, 0   , 22, 230, 24;
    214, 2, 194, 39, 0, 0   , 22, 230, 26;
    215, 2, 317, 64, 0, 0   , 22, 230, 26;
    216, 2, 100, 20, 0, 0   , 22, 230, 26;
    217, 1,   0,  0, 0, 0   , 22, 230, 27;
    218, 2, 333, 68, 0, 0   , 22, 230, 27;
    219, 1, 181, 37, 0, 0   , 22, 230, 25;
    220, 1, 128, 26, 0, 0   , 22, 230, 25;
    221, 2,   0,  0, 0, 0   , 22, 230, 27;
    222, 2,   0,  0, 0, 0   , 22, 230, 27;
    223, 2,   0,  0, 0, 0   , 22, 230, 25;
    224, 1,   0,  0, 0, 0   , 22, 230, 26;
    301, 2, 108, 22, 0, 0   , 31, 138, 31;
    302, 2,  97, 20, 0, 0   , 31, 138, 32;
    303, 1, 180, 37, 0, 0   , 31, 138, 31;
    304, 1,  74, 15, 0, 0   , 31, 138, 31;
    305, 1,  71, 14, 0, 0   , 31, 138, 31;
    306, 1, 136, 28, 0, 1.00, 31, 138, 32;
    307, 2, 125, 25, 0, 0   , 31, 138, 32;
    308, 1, 171, 35, 0, 0   , 31, 138, 32;
    309, 1, 175, 36, 0, 0   , 31, 138, 33;
    310, 1, 195, 40, 0, 0   , 31, 138, 33;
    311, 1,   0,  0, 0, 0   , 31, 230, 33;
    312, 1,   0,  0, 0, 0   , 31, 230, 33;
    313, 2, 265, 54, 0, 0   , 32, 230, 34;
    314, 2, 194, 39, 0, 0   , 32, 230, 36;
    315, 2, 317, 64, 0, 0   , 32, 230, 36;
    316, 2, 100, 20, 0, 0   , 32, 230, 36;
    317, 1,   0,  0, 0, 0   , 32, 230, 37;
    318, 2, 333, 68, 0, 0   , 32, 230, 37;
    319, 1, 181, 37, 0, 0   , 32, 230, 35;
    320, 1, 128, 26, 0, 0   , 32, 230, 35;
    321, 2,   0,  0, 0, 0   , 32, 230, 37;
    322, 2,   0,  0, 0, 0   , 32, 230, 37;
    323, 2,   0,  0, 0, 0   , 32, 230, 35;
    324, 1,   0,  0, 0, 0   , 32, 230, 36;
    325, 1,   0,  0, 0, 0   , 32, 230, 35
    ];

% Branch data
%
%  (1) From Bus
%  (2) To Bus
%  (3) Length                                 (miles)
%  (4) Permanent outage rate           (outages/year)
%  (5) Permanent outage duration              (hours)
%  (6) Transient outage rate           (outages/year)
%  (7) R                                         (pu)
%  (8) X                                         (pu)
%  (9) B                                         (pu)
% (10) Continuous rating                        (MVA)
% (11) Long-Time Emergency rating [24-hour]     (MVA)
% (12) Short-Time Emergency rating [15-minute]  (MVA)
% (13) Transformer off-nominal ration.
%      Transformer branches are indicated by Tr <> 0
branches = [
101, 102,  3  , .24,  16, 0.0, 0.003, 0.014, 0.461, 175, 193, 200, 0;     %   1
101, 103, 55  , .51,  10, 2.9, 0.055, 0.211, 0.057, 175, 208, 220, 0;     %   2
101, 105, 22  , .33,  10, 1.2, 0.022, 0.085, 0.023, 175, 208, 220, 0;     %   3
102, 104, 33  , .39,  10, 1.7, 0.033, 0.127, 0.034, 175, 208, 220, 0;     %   4
102, 106, 50  , .48,  10, 2.6, 0.050, 0.192, 0.052, 175, 208, 220, 0;     %   5
103, 109, 31  , .38,  10, 1.6, 0.031, 0.119, 0.032, 175, 208, 220, 0;     %   6
103, 124,  0  , .02, 768, 0.0, 0.002, 0.084, 0    , 400, 510, 600, 1.015; %   7
104, 109, 27  , .36,  10, 1.4, 0.027, 0.104, 0.028, 175, 208, 220, 0;     %   8
105, 110, 23  , .34,  10, 1.2, 0.023, 0.088, 0.024, 175, 208, 220, 0;     %   9
106, 110, 16  , .33,  35, 0.0, 0.014, 0.061, 2.459, 175, 193, 200, 0;     %  10
107, 108, 16  , .30,  10, 0.8, 0.016, 0.061, 0.017, 175, 208, 220, 0;     %  11
107, 203, 42  , .44,  10, 2.2, 0.042, 0.161, 0.044, 175, 208, 220, 0;     %  12
108, 109, 43  , .44,  10, 2.3, 0.043, 0.165, 0.045, 175, 208, 220, 0;     %  13
108, 110, 43  , .44,  10, 2.3, 0.043, 0.165, 0.045, 175, 208, 220, 0;     %  14
109, 111,  0  , .02, 768, 0.0, 0.002, 0.084, 0    , 400, 510, 600, 1.030; %  15
109, 112,  0  , .02, 768, 0.0, 0.002, 0.084, 0    , 400, 510, 600, 1.030; %  16
110, 111,  0  , .02, 768, 0.0, 0.002, 0.084, 0    , 400, 510, 600, 1.015; %  17
110, 112,  0  , .02, 768, 0.0, 0.002, 0.084, 0    , 400, 510, 600, 1.015; %  18
111, 113, 33  , .40,  11, 0.8, 0.006, 0.048, 0.100, 500, 600, 625, 0;     %  19
111, 114, 29  , .39,  11, 0.7, 0.005, 0.042, 0.088, 500, 600, 625, 0;     %  20
112, 113, 33  , .40,  11, 0.8, 0.006, 0.048, 0.100, 500, 600, 625, 0;     %  21
112, 123, 67  , .52,  11, 1.6, 0.012, 0.097, 0.203, 500, 600, 625, 0;     %  22
113, 123, 60  , .49,  11, 1.5, 0.011, 0.087, 0.182, 500, 600, 625, 0;     %  23
113, 215, 52  , .47,  11, 1.3, 0.010, 0.075, 0.158, 500, 600, 625, 0;     %  24
114, 116, 27  , .38,  11, 0.7, 0.005, 0.059, 0.082, 500, 600, 625, 0;     %  25
115, 116, 12  , .33,  11, 0.3, 0.002, 0.017, 0.036, 500, 600, 625, 0;     %  26
115, 121, 34  , .41,  11, 0.8, 0.006, 0.049, 0.103, 500, 600, 625, 0;     %  27
115, 121, 34  , .41,  11, 0.8, 0.006, 0.049, 0.103, 500, 600, 625, 0;
115, 124, 36  , .41,  11, 0.9, 0.007, 0.052, 0.109, 500, 600, 625, 0;     %  28
116, 117, 18  , .35,  11, 0.4, 0.003, 0.026, 0.055, 500, 600, 625, 0;     %  29
116, 119, 16  , .34,  11, 0.4, 0.003, 0.023, 0.049, 500, 600, 625, 0;     %  30
117, 118, 10  , .32,  11, 0.2, 0.002, 0.014, 0.030, 500, 600, 625, 0;     %  31
117, 122, 73  , .54,  11, 1.8, 0.014, 0.105, 0.221, 500, 600, 625, 0;     %  32
118, 121, 18  , .35,  11, 0.4, 0.003, 0.026, 0.055, 500, 600, 625, 0;     %  33
118, 121, 18  , .35,  11, 0.4, 0.003, 0.026, 0.055, 500, 600, 625, 0;     %   
119, 120, 27.5, .38,  11, 0.7, 0.005, 0.040, 0.083, 500, 600, 625, 0;     %  34
119, 120, 27.5, .38,  11, 0.7, 0.005, 0.040, 0.083, 500, 600, 625, 0;
120, 123, 15  , .34,  11, 0.4, 0.003, 0.022, 0.046, 500, 600, 625, 0;     %  35
120, 123, 15  , .34,  11, 0.4, 0.003, 0.022, 0.046, 500, 600, 625, 0;
121, 122, 47  , .45,  11, 1.2, 0.009, 0.068, 0.142, 500, 600, 625, 0;     %  36
123, 217, 51  , .46,  11, 1.3, 0.010, 0.074, 0.155, 500, 600, 625, 0;     %  37
201, 202,  3  , .24,  16, 0.0, 0.003, 0.014, 0.461, 175, 193, 200, 0;     %  38
201, 203, 55  , .51,  10, 2.9, 0.055, 0.211, 0.057, 175, 208, 220, 0;     %  39
201, 205, 22  , .33,  10, 1.2, 0.022, 0.085, 0.023, 175, 208, 220, 0;     %  40
202, 204, 33  , .39,  10, 1.7, 0.033, 0.127, 0.034, 175, 208, 220, 0;     %  41
202, 206, 50  , .48,  10, 2.6, 0.050, 0.192, 0.052, 175, 208, 220, 0;     %  42
203, 209, 31  , .38,  10, 1.6, 0.031, 0.119, 0.032, 175, 208, 220, 0;     %  43
203, 224,  0  , .02, 768, 0.0, 0.002, 0.084, 0    , 400, 510, 600, 1.015; %  44
204, 209, 27  , .36,  10, 1.4, 0.027, 0.104, 0.028, 175, 208, 220, 0;     %  45
205, 210, 23  , .34,  10, 1.2, 0.023, 0.088, 0.024, 175, 208, 220, 0;     %  46
206, 210, 16  , .33,  35, 0.0, 0.014, 0.061, 2.459, 175, 193, 200, 0;     %  47
207, 208, 16  , .30,  10, 0.8, 0.016, 0.061, 0.017, 175, 208, 220, 0;     %  48
208, 209, 43  , .44,  10, 2.3, 0.043, 0.165, 0.045, 175, 208, 220, 0;     %  49
208, 210, 43  , .44,  10, 2.3, 0.043, 0.165, 0.045, 175, 208, 220, 0;     %  50
209, 211,  0  , .02, 768, 0.0, 0.002, 0.084, 0    , 400, 510, 600, 1.030; %  51
209, 212,  0  , .02, 768, 0.0, 0.002, 0.084, 0    , 400, 510, 600, 1.030; %  52
210, 211,  0  , .02, 768, 0.0, 0.002, 0.084, 0    , 400, 510, 600, 1.015; %  53
210, 212,  0  , .02, 768, 0.0, 0.002, 0.084, 0    , 400, 510, 600, 1.015; %  54
211, 213, 33  , .40,  11, 0.8, 0.006, 0.048, 0.100, 500, 600, 625, 0;     %  55
211, 214, 29  , .39,  11, 0.7, 0.005, 0.042, 0.088, 500, 600, 625, 0;     %  56
212, 213, 33  , .40,  11, 0.8, 0.006, 0.048, 0.100, 500, 600, 625, 0;     %  57
212, 223, 67  , .52,  11, 1.6, 0.012, 0.097, 0.203, 500, 600, 625, 0;     %  58
213, 223, 60  , .49,  11, 1.5, 0.011, 0.087, 0.182, 500, 600, 625, 0;     %  59
214, 216, 27  , .38,  11, 0.7, 0.005, 0.059, 0.082, 500, 600, 625, 0;     %  60
215, 216, 12  , .33,  11, 0.3, 0.002, 0.017, 0.036, 500, 600, 625, 0;     %  61
215, 221, 34  , .41,  11, 0.8, 0.006, 0.049, 0.103, 500, 600, 625, 0;     %  62
215, 221, 34  , .41,  11, 0.8, 0.006, 0.049, 0.103, 500, 600, 625, 0;
215, 224, 36  , .41,  11, 0.9, 0.007, 0.052, 0.109, 500, 600, 625, 0;     %  63
216, 217, 18  , .35,  11, 0.4, 0.003, 0.026, 0.055, 500, 600, 625, 0;     %  64
216, 219, 16  , .34,  11, 0.4, 0.003, 0.023, 0.049, 500, 600, 625, 0;     %  65
217, 218, 10  , .32,  11, 0.2, 0.002, 0.014, 0.030, 500, 600, 625, 0;     %  66
217, 222, 73  , .54,  11, 1.8, 0.014, 0.105, 0.221, 500, 600, 625, 0;     %  67
218, 221, 18  , .35,  11, 0.4, 0.003, 0.026, 0.055, 500, 600, 625, 0;     %  68
218, 221, 18  , .35,  11, 0.4, 0.003, 0.026, 0.055, 500, 600, 625, 0;
219, 220, 27.5, .38,  11, 0.7, 0.005, 0.040, 0.083, 500, 600, 625, 0;     %  69
219, 220, 27.5, .38,  11, 0.7, 0.005, 0.040, 0.083, 500, 600, 625, 0;
220, 223, 15  , .34,  11, 0.4, 0.003, 0.022, 0.046, 500, 600, 625, 0;     %  70
220, 223, 15  , .34,  11, 0.4, 0.003, 0.022, 0.046, 500, 600, 625, 0;
221, 222, 47  , .45,  11, 1.2, 0.009, 0.068, 0.142, 500, 600, 625, 0;     %  71
301, 302,  3  , .24,  16, 0.0, 0.003, 0.014, 0.461, 175, 193, 200, 0;     %  72
301, 303, 55  , .51,  10, 2.9, 0.055, 0.211, 0.057, 175, 208, 220, 0;     %  73
301, 305, 22  , .33,  10, 1.2, 0.022, 0.085, 0.023, 175, 208, 220, 0;     %  74
302, 304, 33  , .39,  10, 1.7, 0.033, 0.127, 0.034, 175, 208, 220, 0;     %  75
302, 306, 50  , .48,  10, 2.6, 0.050, 0.192, 0.052, 175, 208, 220, 0;     %  76
303, 309, 31  , .38,  10, 1.6, 0.031, 0.119, 0.032, 175, 208, 220, 0;     %  77
303, 324,  0  , .02, 768, 0.0, 0.002, 0.084, 0    , 400, 510, 600, 1.015; %  78
304, 309, 27  , .36,  10, 1.4, 0.027, 0.104, 0.028, 175, 208, 220, 0;     %  79
305, 310, 23  , .34,  10, 1.2, 0.023, 0.088, 0.024, 175, 208, 220, 0;     %  80
306, 310, 16  , .33,  35, 0.0, 0.014, 0.061, 2.459, 175, 193, 200, 0;     %  81
307, 308, 16  , .30,  10, 0.8, 0.016, 0.061, 0.017, 175, 208, 220, 0;     %  82
308, 309, 43  , .44,  10, 2.3, 0.043, 0.165, 0.045, 175, 208, 220, 0;     %  83
308, 310, 43  , .44,  10, 2.3, 0.043, 0.165, 0.045, 175, 208, 220, 0;     %  84
309, 311,  0  , .02, 768, 0.0, 0.002, 0.084, 0    , 400, 510, 600, 1.03;  %  85
309, 312,  0  , .02, 768, 0.0, 0.002, 0.084, 0    , 400, 510, 600, 1.03;  %  86
310, 311,  0  , .02, 768, 0.0, 0.002, 0.084, 0    , 400, 510, 600, 1.015; %  87
310, 312,  0  , .02, 768, 0.0, 0.002, 0.084, 0    , 400, 510, 600, 1.015; %  88
311, 313, 33  , .40,  11, 0.8, 0.006, 0.048, 0.100, 500, 600, 625, 0;     %  89
311, 314, 29  , .39,  11, 0.7, 0.005, 0.042, 0.088, 500, 600, 625, 0;     %  90
312, 313, 33  , .40,  11, 0.8, 0.006, 0.048, 0.100, 500, 600, 625, 0;     %  91
312, 323, 67  , .52,  11, 1.6, 0.012, 0.097, 0.203, 500, 600, 625, 0;     %  92
313, 323, 60  , .49,  11, 1.5, 0.011, 0.087, 0.182, 500, 600, 625, 0;     %  93
314, 316, 27  , .38,  11, 0.7, 0.005, 0.059, 0.082, 500, 600, 625, 0;     %  94
315, 316, 12  , .33,  11, 0.3, 0.002, 0.017, 0.036, 500, 600, 625, 0;     %  95
315, 321, 34  , .41,  11, 0.8, 0.006, 0.049, 0.103, 500, 600, 625, 0;     %  96
315, 321, 34  , .41,  11, 0.8, 0.006, 0.049, 0.103, 500, 600, 625, 0;
315, 324, 36  , .41,  11, 0.9, 0.007, 0.052, 0.109, 500, 600, 625, 0;     %  97
316, 317, 18  , .35,  11, 0.4, 0.003, 0.026, 0.055, 500, 600, 625, 0;     %  98
316, 319, 16  , .34,  11, 0.4, 0.003, 0.023, 0.049, 500, 600, 625, 0;     %  99
317, 318, 10  , .32,  11, 0.2, 0.002, 0.014, 0.030, 500, 600, 625, 0;     % 100
317, 322, 73  , .54,  11, 1.8, 0.014, 0.105, 0.221, 500, 600, 625, 0;     % 101
318, 321, 18  , .35,  11, 0.4, 0.003, 0.026, 0.055, 500, 600, 625, 0;     % 102
318, 321, 18  , .35,  11, 0.4, 0.003, 0.026, 0.055, 500, 600, 625, 0;
319, 320, 27.5, .38,  11, 0.7, 0.005, 0.040, 0.083, 500, 600, 625, 0;     % 103
319, 320, 27.5, .38,  11, 0.7, 0.005, 0.040, 0.083, 500, 600, 625, 0;
320, 323, 15  , .34,  11, 0.4, 0.003, 0.022, 0.046, 500, 600, 625, 0;     % 104
320, 323, 15  , .34,  11, 0.4, 0.003, 0.022, 0.046, 500, 600, 625, 0;
321, 322, 47  , .45,  11, 1.2, 0.009, 0.068, 0.142, 500, 600, 625, 0;     % 105
325, 121, 67  , .52,  11, 1.6, 0.012, 0.097, 0.203, 500, 600, 625, 0;     % 106
318, 223, 72  , .53,  11, 1.8, 0.013, 0.104, 0.218, 500, 600, 625, 0;     % 107
323, 325,  0  , .02, 768, 0.0, 0.000, 0.009, 0    , 722, 893, 893, 1.00   % 108
];

% Generator data
%
% (1) Bus
% (2) Generator Bus Index
% (3) PG                            (MW)
% (4) QG                          (MVAR)
% (5) Qmax                        (MVAR)
% (6) Qmin                        (MVAR)
% (7) Regulated Voltage Set Point   (pu)
generators = [
  101, 1,  10  ,   0   ,  10,   0, 1.035; % U20
  101, 2,  10  ,   0   ,  10,   0, 1.035; % U20
  101, 3,  76  ,  14.1 ,  30, -25, 1.035; % U76
  101, 4,  76  ,  14.1 ,  30, -25, 1.035; % U76
  102, 1,  10  ,   0   ,  10,   0, 1.035; % U20
  102, 2,  10  ,   0   ,  10,   0, 1.035; % U20
  102, 3,  76  ,   7.0 ,  30, -25, 1.035; % U76
  102, 4,  76  ,   7.0 ,  30, -25, 1.035; % U76
  107, 1,  80  ,  17.2 ,  60,   0, 1.025; % U100
  107, 2,  80  ,  17.2 ,  60,   0, 1.025; % U100
  107, 3,  80  ,  17.2 ,  60,   0, 1.025; % U100
  113, 1,  95.1,  40.7 ,  80,   0, 1.020; % U197
  113, 2,  95.1,  40.7 ,  80,   0, 1.020; % U197
  113, 3,  95.1,  40.7 ,  80,   0, 1.020; % U197
  114, 1,   0  ,  13.7 , 200, -50, 0.980; % Sync Cond
  115, 1,  12  ,   0   ,   6,   0, 1.014; % U12
  115, 2,  12  ,   0   ,   6,   0, 1.014; % U12
  115, 3,  12  ,   0   ,   6,   0, 1.014; % U12
  115, 4,  12  ,   0   ,   6,   0, 1.014; % U12
  115, 5,  12  ,   0   ,   6,   0, 1.014; % U12
  115, 6, 155  ,   0.05,  80, -50, 1.014; % U155
  116, 1, 155  ,  25.22,  80, -50, 1.017; % U155
  118, 1, 400  , 137.4 , 200, -50, 1.050; % U400
  121, 1, 400  , 108.2 , 200, -50, 1.050; % U400
  122, 1,  50  ,  -4.96,  16, -10, 1.050; % U50
  122, 2,  50  ,  -4.96,  16, -10, 1.050; % U50
  122, 3,  50  ,  -4.96,  16, -10, 1.050; % U50
  122, 4,  50  ,  -4.96,  16, -10, 1.050; % U50
  122, 5,  50  ,  -4.96,  16, -10, 1.050; % U50
  122, 6,  50  ,  -4.96,  16, -10, 1.050; % U50
  123, 1, 155  ,  31.79,  80, -50, 1.050; % U155
  123, 2, 155  ,  31.79,  80, -50, 1.050; % U155
  123, 3, 350  ,  71.78, 150, -25, 1.050; % U350
  201, 1,  10  ,   0   ,  10,   0, 1.035; % U20
  201, 2,  10  ,   0   ,  10,   0, 1.035; % U20
  201, 3,  76  ,  14.1 ,  30, -25, 1.035; % U76
  201, 4,  76  ,  14.1 ,  30, -25, 1.035; % U76
  202, 1,  10  ,   0   ,  10,   0, 1.035; % U20
  202, 2,  10  ,   0   ,  10,   0, 1.035; % U20
  202, 3,  76  ,   7.0 ,  30, -25, 1.035; % U76
  202, 4,  76  ,   7.0 ,  30, -25, 1.035; % U76
  207, 1,  80  ,  17.2 ,  60,   0, 1.025; % U100
  207, 2,  80  ,  17.2 ,  60,   0, 1.025; % U100
  207, 3,  80  ,  17.2 ,  60,   0, 1.025; % U100
  213, 1,  95.1,  40.7 ,  80,   0, 1.020; % U197
  213, 2,  95.1,  40.7 ,  80,   0, 1.020; % U197
  213, 3,  95.1,  40.7 ,  80,   0, 1.020; % U197
  214, 1,   0  ,  13.68, 200, -50, 0.980; % Sync Cond
  215, 1,  12  ,   0   ,   6,   0, 1.014; % U12
  215, 2,  12  ,   0   ,   6,   0, 1.014; % U12
  215, 3,  12  ,   0   ,   6,   0, 1.014; % U12
  215, 4,  12  ,   0   ,   6,   0, 1.014; % U12
  215, 5,  12  ,   0   ,   6,   0, 1.014; % U12
  215, 6, 155  ,   0.04,  80, -50, 1.014; % U155
  216, 1, 155  ,  25.22,  80, -50, 1.017; % U155
  218, 1, 400  , 137.4 , 200, -50, 1.050; % U400
  221, 1, 400  , 108.2 , 200, -50, 1.050; % U400
  222, 1,  50  ,  -4.96,  16, -10, 1.050; % U50
  222, 2,  50  ,  -4.96,  16, -10, 1.050; % U50
  222, 3,  50  ,  -4.96,  16, -10, 1.050; % U50
  222, 4,  50  ,  -4.96,  16, -10, 1.050; % U50
  222, 5,  50  ,  -4.96,  16, -10, 1.050; % U50
  222, 6,  50  ,  -4.96,  16, -10, 1.050; % U50
  223, 1, 155  ,  31.79,  80, -50, 1.050; % U155
  223, 2, 155  ,  31.79,  80, -50, 1.050; % U155
  223, 3, 350  ,  71.78, 150, -25, 1.050; % U350
  301, 1,  10  ,   0   ,  10,   0, 1.035; % U20
  301, 2,  10  ,   0   ,  10,   0, 1.035; % U20
  301, 3,  76  ,  14.1 ,  30, -25, 1.035; % U76
  301, 4,  76  ,  14.1 ,  30, -25, 1.035; % U76
  302, 1,  10  ,   0   ,  10,   0, 1.035; % U20
  302, 2,  10  ,   0   ,  10,   0, 1.035; % U20
  302, 3,  76  ,   7.0 ,  30, -25, 1.035; % U76
  302, 4,  76  ,   7.0 ,  30, -25, 1.035; % U76
  307, 1,  80  ,  17.2 ,  60,   0, 1.025; % U100
  307, 2,  80  ,  17.2 ,  60,   0, 1.025; % U100
  307, 3,  80  ,  17.2 ,  60,   0, 1.025; % U100
  313, 1,  95.1,  40.7 ,  80,   0, 1.02;  % U197
  313, 2,  95.1,  40.7 ,  80,   0, 1.02;  % U197
  313, 3,  95.1,  40.7 ,  80,   0, 1.02;  % U197
  314, 1,   0  ,  13.68, 200, -50, 0.98;  % Sync Cond
  315, 1,  12  ,   0   ,   6,   0, 1.014; % U12
  315, 2,  12  ,   0   ,   6,   0, 1.014; % U12
  315, 3,  12  ,   0   ,   6,   0, 1.014; % U12
  315, 4,  12  ,   0   ,   6,   0, 1.014; % U12
  315, 5,  12  ,   0   ,   6,   0, 1.014; % U12
  315, 6, 155  ,   0.04,  80, -50, 1.014; % U155
  316, 1, 155  ,  25.22,  80, -50, 1.017; % U155
  318, 1, 400  , 137.4 , 200, -50, 1.05;  % U400
  321, 1, 400  , 108.2 , 200, -50, 1.05;  % U400
  322, 1,  50  ,  -4.96,  16, -10, 1.05;  % U50
  322, 2,  50  ,  -4.96,  16, -10, 1.05;  % U50
  322, 3,  50  ,  -4.96,  16, -10, 1.05;  % U50
  322, 4,  50  ,  -4.96,  16, -10, 1.05;  % U50
  322, 5,  50  ,  -4.96,  16, -10, 1.05;  % U50
  322, 6,  50  ,  -4.96,  16, -10, 1.05;  % U50
  323, 1, 155  ,  31.79,  80, -50, 1.05;  % U155
  323, 2, 155  ,  31.79,  80, -50, 1.05;  % U155
  323, 3, 350  ,  71.78, 150, -25, 1.05   % U350
];

% Hourly peak load in percent of daily peak on winter weekdays
% in weeks 1-8 and 44-52
load_h_wntr_wkdy = [
    0.67; % 12-1am
    0.63; % 1-2
    0.60; % 2-3
    0.59; % 3-4
    0.59; % 4-5
    0.60; % 5-6
    0.74; % 6-7
    0.86; % 7-8
    0.95; % 8-9
    0.96; % 9-10
    0.96; % 10-11
    0.95; % 11-Noon
    0.95; % Noon-1pm
    0.95; % 1-2
    0.93; % 2-3
    0.94; % 3-4
    0.99; % 4-5
    1.00; % 5-6
    1.00; % 6-7
    0.96; % 7-8
    0.91; % 8-9
    0.83; % 9-10
    0.73; % 10-11
    0.63  % 11-12
    ];

% Hourly peak load in percent of daily peak on winter weekends
% in weeks 1-8 and 44-52
load_h_wntr_wknd = [
    0.78; % 12-1am
    0.72; % 1-2
    0.68; % 2-3
    0.66; % 3-4
    0.64; % 4-5
    0.65; % 5-6
    0.66; % 6-7
    0.70; % 7-8
    0.80; % 8-9
    0.88; % 9-10
    0.90; % 10-11
    0.91; % 11-Noon
    0.90; % Noon-1pm
    0.88; % 1-2
    0.87; % 2-3
    0.87; % 3-4
    0.91; % 4-5
    1.00; % 5-6
    0.99; % 6-7
    0.97; % 7-8
    0.94; % 8-9
    0.92; % 9-10
    0.87; % 10-11
    0.81  % 11-12
    ];

% Hourly peak load in percent of daily peak on summer weekdays
% in weeks 18-30
load_h_smmr_wkdy = [
    0.64; % 12-1am
    0.60; % 1-2
    0.58; % 2-3
    0.56; % 3-4
    0.56; % 4-5
    0.58; % 5-6
    0.64; % 6-7
    0.76; % 7-8
    0.87; % 8-9
    0.95; % 9-10
    0.99; % 10-11
    1.00; % 11-Noon
    0.99; % Noon-1pm
    1.00; % 1-2
    1.00; % 2-3
    0.97; % 3-4
    0.96; % 4-5
    0.96; % 5-6
    0.93; % 6-7
    0.92; % 7-8
    0.92; % 8-9
    0.93; % 9-10
    0.87; % 10-11
    0.72  % 11-12
    ];

% Hourly peak load in percent of daily peak on summer weekends
% in weeks 18-30
load_h_smmr_wknd = [
    0.74; % 12-1am
    0.70; % 1-2
    0.66; % 2-3
    0.65; % 3-4
    0.64; % 4-5
    0.62; % 5-6
    0.62; % 6-7
    0.66; % 7-8
    0.81; % 8-9
    0.86; % 9-10
    0.91; % 10-11
    0.93; % 11-Noon
    0.93; % Noon-1pm
    0.92; % 1-2
    0.91; % 2-3
    0.91; % 3-4
    0.92; % 4-5
    0.94; % 5-6
    0.95; % 6-7
    0.95; % 7-8
    1.00; % 8-9
    0.93; % 9-10
    0.88; % 10-11
    0.80  % 11-12
    ];

% Hourly peak load in percent of daily peak on spring/fall weekdays
% in weeks 9-17 and 31-43
load_h_fall_wkdy = [
    0.63; % 12-1am
    0.62; % 1-2
    0.60; % 2-3
    0.58; % 3-4
    0.59; % 4-5
    0.65; % 5-6
    0.72; % 6-7
    0.85; % 7-8
    0.95; % 8-9
    0.99; % 9-10
    1.00; % 10-11
    0.99; % 11-Noon
    0.93; % Noon-1pm
    0.92; % 1-2
    0.90; % 2-3
    0.88; % 3-4
    0.90; % 4-5
    0.92; % 5-6
    0.96; % 6-7
    0.98; % 7-8
    0.96; % 8-9
    0.90; % 9-10
    0.80; % 10-11
    0.70  % 11-12
    ];

% Hourly peak load in percent of daily peak on spring/fall weekends
% in weeks 9-17 and 31-43
load_h_fall_wknd = [
    0.75; % 12-1am
    0.73; % 1-2
    0.69; % 2-3
    0.66; % 3-4
    0.65; % 4-5
    0.65; % 5-6
    0.68; % 6-7
    0.74; % 7-8
    0.83; % 8-9
    0.89; % 9-10
    0.92; % 10-11
    0.94; % 11-Noon
    0.91; % Noon-1pm
    0.90; % 1-2
    0.90; % 2-3
    0.86; % 3-4
    0.85; % 4-5
    0.88; % 5-6
    0.92; % 6-7
    1.00; % 7-8
    0.97; % 8-9
    0.95; % 9-10
    0.90; % 10-11
    0.85  % 11-12
    ];

% Daily load in percent of weekly peak
load_d = [
    0.93; % Monday
    1.00; % Tuesday
    0.98; % Wednesday
    0.96; % Thursday
    0.94; % Friday
    0.77; % Saturday
    0.75  % Sunday
    ];

% Weekly peak load in percent of annual peak
load_w = [
    0.862; % Week  1
    0.900; % Week  2
    0.878; % Week  3
    0.834; % Week  4
    0.880; % Week  5
    0.841; % Week  6
    0.832; % Week  7
    0.806; % Week  8
    0.740; % Week  9
    0.737; % Week 10
    0.715; % Week 11
    0.727; % Week 12
    0.704; % Week 13
    0.750; % Week 14
    0.721; % Week 15
    0.800; % Week 16
    0.754; % Week 17
    0.837; % Week 18
    0.870; % Week 19
    0.880; % Week 20
    0.856; % Week 21
    0.811; % Week 22
    0.900; % Week 23
    0.887; % Week 24
    0.896; % Week 25
    0.861; % Week 26
    0.755; % Week 27
    0.816; % Week 28
    0.801; % Week 29
    0.880; % Week 30
    0.722; % Week 31
    0.776; % Week 32
    0.800; % Week 33
    0.729; % Week 34
    0.726; % Week 35
    0.705; % Week 36
    0.780; % Week 37
    0.695; % Week 38
    0.724; % Week 39
    0.724; % Week 40
    0.743; % Week 41
    0.744; % Week 42
    0.800; % Week 43
    0.881; % Week 44
    0.885; % Week 45
    0.909; % Week 46
    0.940; % Week 47
    0.890; % Week 48
    0.942; % Week 49
    0.970; % Week 50
    1.000; % Week 51
    0.952  % Week 52
    ];