# compile thesis.tex with latexmk
#
# the original `make.bat` file:
#
# pdflatex -aux-directory=auxiliary thesis.tex
# biber ./auxiliary/thesis
# makeglossaries -d auxiliary thesis
# pdflatex -aux-directory=auxiliary thesis.tex
# pdflatex -aux-directory=auxiliary thesis.tex
#

# define the main file
@default_files = ( 'my-thesis.tex' );
# only create a PDF
$pdf_mode = 1; $dvi_mode = $postscript_mode = 0;
# put auxiliary files in an extra folder
$aux_dir = 'auxiliary';
# don't create the .fls file used by latexmk
$recorder = 0;

# tell latexmk how to compile the glossary
add_cus_dep('glo', 'gls', 0, 'makeglossaries');
sub makeglossaries {
   my ($base_name, $path) = fileparse( $_[0] );
   pushd $path;
   my $return = system "makeglossaries $base_name";
   popd;
   return $return;
}

# end of file