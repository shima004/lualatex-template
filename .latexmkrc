#!/usr/bin/env perl

$lualatex    = 'lualatex -shell-escape -synctex=1 -interaction=nonstopmode';
$pdflualatex = $lualatex;
$biber       = 'biber --bblencoding=utf8 -u -U --output_safechars %O %S';
$bibtex      = 'upbibtex %O %S';
$makeindex   = 'upmendex %O -o %D %S -s jpbase -g';
$max_repeat  = 5;
$pdf_mode    = 4;

$pvc_view_file_via_temporary = 0;
if ($^O eq 'linux') {
    $pdf_previewer = "xdg-open %S";
} elsif ($^O eq 'darwin') {
    $pdf_previewer = "open %S";
} else {
    $pdf_previewer = "start %S";
}
