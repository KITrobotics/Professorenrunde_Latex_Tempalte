function varargout = coltextread(fname, delim)

    % Initialize the variable output argument
    varargout = cell(nargout, 1);

    % Initialize elements of the cell array to nested cell arrays
    % This syntax is due to {:} producing a comma-separated 
    [varargout{:}] = deal(cell());

    fid = fopen(fname, 'r');

    while true
        % Get the current line
        ln = fgetl(fid);

        % Stop if EOF
        if ln == -1
            break;
        endif

        % Split the line string into components and parse numbers
        elems = strsplit(ln, delim, "collapsedelimiters", false);
 
        for i = 1:nargout
            varargout{i}{end+1} = elems{i};
        endfor
    endwhile

endfunction