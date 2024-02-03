function resultVector = leave(a, b)
    lenA = length(a);
    lenB = length(b);

    lenResult = lenA + lenB;

    resultVector = zeros(1, lenResult);

    for i = 1:lenResult
        if i <= lenA
            resultVector(2*i-1) = a(i);
        end
        if i <= lenB
            resultVector(2*i) = b(i);
        end
    end
end

