function r = evalOperation(left, operator, right)
%This function should expect "doubles or "character arrays 
% for the both the left and right operand parameters
% and a "character array" for the operator parameter. 
%It calculates using the following operators:
%"+ or "plus" adds doubles, and combines together char arrays.
%"-","minus" subtracts doubles, and calls the strMinus function 
% for char arrays.
%Any other input for the operands returns NaN

if (isfloat(left) && isfloat(right))
    if (strcmp(operator, 'plus') || strcmp(operator, '+' ))
        r = left + right;
    elseif (strcmp(operator, 'minus') || strcmp(operator, '-' ))
        r = left-right;
    else
        r = NaN;
    end
elseif (ischar(left) && ischar(right))
    if (strcmp(operator, 'plus') || strcmp(operator, '+' ))
        r = [left right];
    elseif(strcmp(operator, 'minus') || strcmp(operator, '-' ))
        r = strMinus(left, right);
    else
        r = NaN;
    end
else
    r = NaN;

end

end


%Byron Wong
%NetID: bw540
%RUID: 232001450