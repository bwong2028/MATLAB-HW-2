function r = strMinus (originalText, pattern)
%[r] = strMinus(originalText, pattern)
%the strMinus function will delete the "pattern"
%from the end of "originalText" as long as it exists there.
%If it doesn't exist, will just return originalText
%"originaltext", "pattern", and "r" are all character arrays
patLength = length(pattern);
textLength = length(originalText);

v = textLength-patLength;

if (v < 0)
    r = originalText;
elseif strcmp(originalText, pattern)
    r = '';
else
    if strcmp(originalText(v+1:textLength), pattern)
        r = originalText( 1 : v );
    else
        r = originalText;
    end
end

end


%Byron Wong
%NetID: bw540
%RUID: 232001450