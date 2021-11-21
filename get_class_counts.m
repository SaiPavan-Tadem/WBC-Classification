function [N, M, E, L] = get_class_counts(img_dir,mean_features)
    srcDir = img_dir;
    srcFiles = dir(fullfile(srcDir,'*.jpeg'));
    for k=1:numel(srcFiles)
        filename = fullfile(srcDir,srcFiles(k).name)
        I = imread(filename);
        pred = predict_class(I,mean_features)
        N=0;M=0;E=0;L=0;
        if pred == 1
            N=N+1;
        elseif pred == 2
            M=M+1;
        elseif pred == 3
            E=E+1;
        elseif pred == 4
            L=L+1;
       end
    end
    return;
end