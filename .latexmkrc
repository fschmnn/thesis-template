# latexmkrc for phd-thesis.tex
# this script enabules us to read the style files from setting, put 
# the auxiliary files in .auxiliary and store the result in build.

# define where certain files can be found
@default_files = ('my-thesis.tex');  # the main file
$ENV{'TEXINPUTS'} = ";settings/;.;";  # add to search path (on windows ; instead of :)
$ENV{'BIBINPUTS'} = ";settings/;.;";  # path to bib file
$aux_dir = '.auxiliary';              # store auxiliary file in this dictionary 
# $out_dir = 'build';                   # store pdf file in this dictionary

# define the type of output
$pdf_mode = 1;         # create a PDF version
$recorder = 0;         # don't create the .fls file used by latexmk
#$dvi_mode = 0;         # don't create postscript version
#$postscript_mode = 0;  # don't create dvi version

# tell latexmk how to compile the glossary
add_cus_dep('glo', 'gls', 0, 'makeglossaries');
sub makeglossaries {
   my ($base_name, $path) = fileparse( $_[0] );
   pushd $path;
   my $return = system "makeglossaries $base_name";
   popd;
   return $return;
}

# jump between pdf and tex file and make errors more readable
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -file-line-error';
