for i = 1:16
    figname = sprintf('Figure %d',i);
    
    picturename = fullfile(figname);
    saveas (gcf, picturename, 'png');
end
