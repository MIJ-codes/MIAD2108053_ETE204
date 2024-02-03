function resultArray = neighbour(inputArray)
    resultArray = [];
    for i = 1:length(inputArray)
        if i == 1 || inputArray(i) ~= inputArray(i-1)
            resultArray = [resultArray, inputArray(i)];
        end
    end
end

