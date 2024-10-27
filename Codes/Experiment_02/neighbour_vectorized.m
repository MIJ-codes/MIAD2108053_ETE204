function resultVector = neighbour_vectorized(inputArray)
    resultVector = inputArray([true diff(inputArray) ~= 0]);
end
