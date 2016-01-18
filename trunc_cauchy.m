%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Function:         rand_cauch = trunc_cauchy(location,scale,llim,ulim)
%                    
% Author:           Srikiran Chandrasekaran
% Description:      Generates a truncated Cauchy distributed random 
%                   variable given the location and scale parameters as 
%                   well as the upper and lower limits of truncation.
%
% Parameters:       location     (I)    Location of Cauchy distribution. 
%                   scale        (I)    Scale of Cauchy distribution.
%                   llim         (I)    Lower limit of Cauchy distribution.
%                   ulim         (I)    Upper limit of Cauchy distribution.
% Return value:     rand_cauch       (O)    Cauchy distributed variable
%
% Note:
% This program is free software; you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation; either version 1, or (at your option)
% any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details. A copy of the GNU 
% General Public License can be obtained from the 
% Free Software Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function rand_cauch = trunc_cauchy(location,scale,llim,ulim)

rand_cauch = 0;
while rand_cauch<=llim || rand_cauch>ulim
   rand_cauch = scale * tan(pi*(rand-0.5)) + location; 
end