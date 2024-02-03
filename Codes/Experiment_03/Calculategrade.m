function honorsGrade = Calculategrade(data)
    GWAM = sum(data(:,1) .* data(:,2) .* data(:,3)) / sum(data(:,2) .* data(:,3));
    if GWAM >= 75
        honorsGrade = 'H1';
    elseif GWAM >= 70
        honorsGrade = 'H2(1)';
    elseif GWAM >= 65
        honorsGrade = 'H2(2)';
    else
        honorsGrade = 'No Honours';
    end
end
