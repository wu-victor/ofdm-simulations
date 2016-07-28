function out = vdec_sft(in, n) % length(in) should be n+2.

p3mtr = 0;
p2mtr = 0;
p1mtr = 0;
p0mtr = 0;
p3bts = 0;
p2bts = 0;
p1bts = 0;
p0bts = 0;

% Update the paths and path metrics for time = 1.
rxbts = in(1:3);

% s0 -> s1.
p1mtr = sqrt(sum((rxbts - [1 1 1]).^2));
p1bts = [1];

% s0 -> s0.
p0mtr = sqrt(sum((rxbts - [0 0 0]).^2));;
p0bts = [0];

p3mtr_old = p3mtr;
p2mtr_old = p2mtr;
p1mtr_old = p1mtr;
p0mtr_old = p0mtr;
p3bts_old = p3bts;
p2bts_old = p2bts;
p1bts_old = p1bts;
p0bts_old = p0bts;

% Update the paths and path metrics for time = 2.
rxbts = in(4:6);

% s1 -> s3.
p3mtr = p1mtr_old + sqrt(sum((rxbts - [0 0 0]).^2));
p3bts = [1 1];

% s1 -> s2.
p2mtr = p1mtr_old + sqrt(sum((rxbts - [1 1 1]).^2));
p2bts = [1 0];

% s0 -> s1.
p1mtr = p0mtr_old + sqrt(sum((rxbts - [1 1 1]).^2));
p1bts = [0 1];

% s0 -> s0.
p0mtr = p0mtr_old + sqrt(sum((rxbts - [0 0 0]).^2));
p0bts = [0 0];

p3mtr_old = p3mtr;
p2mtr_old = p2mtr;
p1mtr_old = p1mtr;
p0mtr_old = p0mtr;
p3bts_old = p3bts;
p2bts_old = p2bts;
p1bts_old = p1bts;
p0bts_old = p0bts;

% Update the paths and path metrics for time = 3 to time = n.
for ti = 3 : n
    
    rxbts = in( (ti-1)*3+1 : ti*3 ); 
    
    % s3 -> s3.
    mtr1 = sqrt(sum((rxbts - [1 1 0]).^2));
    % s1 -> s3.
    mtr2 = sqrt(sum((rxbts - [0 0 0]).^2));
    % Find the new p3mtr and p3bts.
    if ( (p3mtr_old+mtr1) < (p1mtr_old+mtr2) )
        p3mtr = p3mtr_old + mtr1;
        p3bts = p3bts_old;
    else
        p3mtr = p1mtr_old + mtr2;
        p3bts = p1bts_old;
    end
    p3bts(length(p3bts)+1) = 1;
        
    % s3 -> s2.
    mtr1 = sqrt(sum((rxbts - [0 0 1]).^2));
    % s1 -> s2.
    mtr2 = sqrt(sum((rxbts - [1 1 1]).^2));
    % Find the new p2mtr and p2bts.
    if ( (p3mtr_old+mtr1) < (p1mtr_old+mtr2) )
        p2mtr = p3mtr_old + mtr1;
        p2bts = p3bts_old;
    else
        p2mtr = p1mtr_old + mtr2;
        p2bts = p1bts_old;
    end
    p2bts(length(p2bts)+1) = 0;
    
    % s2 -> s1.
    mtr1 = sqrt(sum((rxbts - [0 0 1]).^2));
    % s0 -> s1.
    mtr2 = sqrt(sum((rxbts - [1 1 1]).^2));
    % Find the new p1mtr and p1bts.
    if ( (p2mtr_old+mtr1) < (p0mtr_old+mtr2) )
        p1mtr = p2mtr_old + mtr1;
        p1bts = p2bts_old;
    else
        p1mtr = p0mtr_old + mtr2;
        p1bts = p0bts_old;
    end
    p1bts(length(p1bts)+1) = 1;
    
    % s2 -> s0.    
    mtr1 = sqrt(sum((rxbts - [1 1 0]).^2));
    % s0 -> s0.    
    mtr2 = sqrt(sum((rxbts - [0 0 0]).^2));
    % Find the new p0mtr and p0bts.
    if ( (p2mtr_old+mtr1) < (p0mtr_old+mtr2) )
        p0mtr = p2mtr_old + mtr1;
        p0bts = p2bts_old;
    else
        p0mtr = p0mtr_old + mtr2;
        p0bts = p0bts_old;
    end
    p0bts(length(p0bts)+1) = 0;
    
    p3mtr_old = p3mtr;
    p2mtr_old = p2mtr;
    p1mtr_old = p1mtr;
    p0mtr_old = p0mtr;
    p3bts_old = p3bts;
    p2bts_old = p2bts;
    p1bts_old = p1bts;
    p0bts_old = p0bts;
end

% Update the paths and path metrics for time = n + 1.
rxbts = in( n*3+1 : (n+1)*3 ); 

% s3 -> s2.
mtr1 = sqrt(sum((rxbts - [0 0 1]).^2));
% s1 -> s2.
mtr2 = sqrt(sum((rxbts - [1 1 1]).^2));
% Find the new p2mtr and p2bts.
if ( (p3mtr_old+mtr1) < (p1mtr_old+mtr2) )
    p2mtr = p3mtr_old + mtr1;
    p2bts = p3bts_old;
else
    p2mtr = p1mtr_old + mtr2;
    p2bts = p1bts_old;
end
p2bts(length(p2bts)+1) = 0;

% s2 -> s0.
mtr1 = sqrt(sum((rxbts - [1 1 0]).^2));
% s0 -> s0.
mtr2 = sqrt(sum((rxbts - [0 0 0]).^2));
% Find the new p0mtr and p0bts.
if ( (p2mtr_old+mtr1) < (p0mtr_old+mtr2) )
    p0mtr = p2mtr_old + mtr1;
    p0bts = p2bts_old;
else
    p0mtr = p0mtr_old + mtr2;
    p0bts = p0bts_old;
end
p0bts(length(p0bts)+1) = 0;

p3mtr_old = p3mtr;
p2mtr_old = p2mtr;
p1mtr_old = p1mtr;
p0mtr_old = p0mtr;
p3bts_old = p3bts;
p2bts_old = p2bts;
p1bts_old = p1bts;
p0bts_old = p0bts;

% Update the paths and path metrics for time = n + 2.
rxbts = in( (n+1)*3+1 : (n+2)*3 );

% s2 -> s0.
mtr1 = sqrt(sum((rxbts - [1 1 0]).^2));
% s0 -> s0.
mtr2 = sqrt(sum((rxbts - [0 0 0]).^2));
if ( (p2mtr_old+mtr1) < (p0mtr_old+mtr2) )
    p0mtr = p2mtr_old + mtr1;
    p0bts = p2bts_old;
else
    p0mtr = p0mtr_old + mtr2;
    p0bts = p0bts_old;
end
p0bts(length(p0bts)+1) = 0;

out = p0bts;

