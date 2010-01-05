;; Auto-generated part of tex-site.el

;;;### (autoloads (turn-on-bib-cite bib-cite-minor-mode) "bib-cite"
;;;;;;  "bib-cite.el" (17603 42500))
;;; Generated autoloads from bib-cite.el

(autoload (quote bib-cite-minor-mode) "bib-cite" "\
Toggle bib-cite mode.
When bib-cite mode is enabled, citations, labels and refs are highlighted
when the mouse is over them.  Clicking on these highlights with [mouse-2]
runs bib-find, and [mouse-3] runs bib-display." t nil)

(autoload (quote turn-on-bib-cite) "bib-cite" "\
Unconditionally turn on Bib Cite mode." nil nil)

;;;***

;;;### (autoloads (context-mode) "context" "context.el" (17783 2620))
;;; Generated autoloads from context.el

(defalias (quote ConTeXt-mode) (quote context-mode))

(autoload (quote context-mode) "context" "\
Major mode in AUCTeX for editing ConTeXt files.

Special commands:
\\{ConTeXt-mode-map}

Entering `context-mode' calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of context-mode-hook." t nil)

;;;***

;;;### (autoloads (context-en-mode) "context-en" "context-en.el"
;;;;;;  (17783 2626))
;;; Generated autoloads from context-en.el

(autoload (quote context-en-mode) "context-en" "\
Major mode for editing files for ConTeXt using its english interface.

Special commands:
\\{ConTeXt-mode-map}

Entering `context-mode' calls the value of `text-mode-hook',
then the value of TeX-mode-hook, and then the value
of context-mode-hook." t nil)

;;;***

;;;### (autoloads (context-nl-mode) "context-nl" "context-nl.el"
;;;;;;  (17783 2634))
;;; Generated autoloads from context-nl.el

(autoload (quote context-nl-mode) "context-nl" "\
Major mode for editing files for ConTeXt using its dutch interface.

Special commands:
\\{ConTeXt-mode-map}

Entering `context-mode' calls the value of `text-mode-hook',
then the value of TeX-mode-hook, and then the value
of context-mode-hook." t nil)

;;;***

;;;### (autoloads (font-latex-setup) "font-latex" "font-latex.el"
;;;;;;  (17606 21819))
;;; Generated autoloads from font-latex.el

(autoload (quote font-latex-setup) "font-latex" "\
Setup this buffer for LaTeX font-lock.  Usually called from a hook." nil nil)

;;;***

;;;### (autoloads (docTeX-mode TeX-latex-mode BibTeX-auto-store)
;;;;;;  "latex" "latex.el" (17813 6880))
;;; Generated autoloads from latex.el

(autoload (quote BibTeX-auto-store) "latex" "\
This function should be called from `bibtex-mode-hook'.
It will setup BibTeX to store keys in an auto file." nil nil)

(add-to-list (quote auto-mode-alist) (quote ("\\.drv\\'" . latex-mode)))

(autoload (quote TeX-latex-mode) "latex" "\
Major mode in AUCTeX for editing LaTeX files.
See info under AUCTeX for full documentation.

Special commands:
\\{LaTeX-mode-map}

Entering LaTeX mode calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of `LaTeX-mode-hook'." t nil)

(add-to-list (quote auto-mode-alist) (quote ("\\.dtx\\'" . doctex-mode)))

(autoload (quote docTeX-mode) "latex" "\
Major mode in AUCTeX for editing .dtx files derived from `LaTeX-mode'.
Runs `LaTeX-mode', sets a few variables and
runs the hooks in `docTeX-mode-hook'." t nil)

(defalias (quote TeX-doctex-mode) (quote docTeX-mode))

;;;***

;;;### (autoloads (multi-prompt) "multi-prompt" "multi-prompt.el"
;;;;;;  (17007 47846))
;;; Generated autoloads from multi-prompt.el

(autoload (quote multi-prompt) "multi-prompt" "\
Completing prompt for a list of strings.  
The first argument SEPARATOR should be the string (of length 1) to
separate the elements in the list.  The second argument UNIQUE should
be non-nil, if each element must be unique.  The remaining elements
are the arguments to `completing-read'.  See that." nil nil)

;;;***

;;;### (autoloads (TeX-submit-bug-report ams-tex-mode TeX-auto-generate-global
;;;;;;  TeX-auto-generate TeX-plain-tex-mode TeX-tex-mode) "tex"
;;;;;;  "tex.el" (17826 48620))
;;; Generated autoloads from tex.el

(autoload (quote TeX-tex-mode) "tex" "\
Major mode in AUCTeX for editing TeX or LaTeX files.
Tries to guess whether this file is for plain TeX or LaTeX.

The algorithm is as follows:

   1) if the file is empty or `TeX-force-default-mode' is not set to nil,
      `TeX-default-mode' is chosen
   2) If \\documentstyle or \\begin{, \\section{, \\part{ or \\chapter{ is
      found, `latex-mode' is selected.
   3) Otherwise, use `plain-tex-mode'" t nil)

(autoload (quote TeX-plain-tex-mode) "tex" "\
Major mode in AUCTeX for editing plain TeX files.
See info under AUCTeX for documentation.

Special commands:
\\{plain-TeX-mode-map}

Entering `plain-tex-mode' calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of plain-TeX-mode-hook." t nil)

(autoload (quote TeX-auto-generate) "tex" "\
Generate style file for TEX and store it in AUTO.
If TEX is a directory, generate style files for all files in the directory." t nil)

(autoload (quote TeX-auto-generate-global) "tex" "\
Create global auto directory for global TeX macro definitions." t nil)

(autoload (quote ams-tex-mode) "tex" "\
Major mode in AUCTeX for editing AmS-TeX files.
See info under AUCTeX for documentation.

Special commands:
\\{AmSTeX-mode-map}

Entering AmS-tex-mode calls the value of `text-mode-hook',
then the value of `TeX-mode-hook', and then the value
of `AmS-TeX-mode-hook'." t nil)

(autoload (quote TeX-submit-bug-report) "tex" "\
Submit a bug report on AUCTeX via mail.

Don't hesitate to report any problems or inaccurate documentation.

If you don't have setup sending mail from (X)Emacs, please copy the
output buffer into your mail program, as it gives us important
information about your AUCTeX version and AUCTeX configuration." t nil)

;;;***

;;;### (autoloads (LaTeX-install-toolbar TeX-install-toolbar) "tex-bar"
;;;;;;  "tex-bar.el" (17784 30838))
;;; Generated autoloads from tex-bar.el

(autoload (quote TeX-install-toolbar) "tex-bar" "\
Install toolbar buttons for TeX mode." t nil)

(autoload (quote LaTeX-install-toolbar) "tex-bar" "\
Install toolbar buttons for LaTeX mode." t nil)

;;;***

;;;### (autoloads nil "tex-fold" "tex-fold.el" (17813 6851))
;;; Generated autoloads from tex-fold.el
 (autoload 'TeX-fold-mode "tex-fold" "Minor mode for hiding and revealing macros and environments." t)

(defalias (quote tex-fold-mode) (quote TeX-fold-mode))

;;;***

;;;### (autoloads (tex-font-setup) "tex-font" "tex-font.el" (17525
;;;;;;  25057))
;;; Generated autoloads from tex-font.el

(autoload (quote tex-font-setup) "tex-font" "\
Setup font lock support for TeX." nil nil)

;;;***

;;;### (autoloads (TeX-texinfo-mode) "tex-info" "tex-info.el" (17813
;;;;;;  6832))
;;; Generated autoloads from tex-info.el

(defalias (quote Texinfo-mode) (quote texinfo-mode))

(autoload (quote TeX-texinfo-mode) "tex-info" "\
Major mode in AUCTeX for editing Texinfo files.

Special commands:
\\{Texinfo-mode-map}

Entering Texinfo mode calls the value of `text-mode-hook'  and then the
value of `Texinfo-mode-hook'." t nil)

;;;***

;;;### (autoloads (japanese-latex-mode japanese-plain-tex-mode) "tex-jp"
;;;;;;  "tex-jp.el" (17543 13963))
;;; Generated autoloads from tex-jp.el

(autoload (quote japanese-plain-tex-mode) "tex-jp" "\
Major mode in AUCTeX for editing Japanese plain TeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-plain-tex-mode'." t nil)

(autoload (quote japanese-latex-mode) "tex-jp" "\
Major mode in AUCTeX for editing Japanese LaTeX files.
Set `japanese-TeX-mode' to t, and enter `TeX-latex-mode'." t nil)

;;;***

;;;### (autoloads (texmathp-match-switch texmathp) "texmathp" "texmathp.el"
;;;;;;  (17293 49353))
;;; Generated autoloads from texmathp.el

(autoload (quote texmathp) "texmathp" "\
Determine if point is inside (La)TeX math mode.
Returns t or nil.  Additional info is placed into `texmathp-why'.
The functions assumes that you have (almost) syntactically correct (La)TeX in
the buffer.
See the variable `texmathp-tex-commands' about which commands are checked." t nil)

(autoload (quote texmathp-match-switch) "texmathp" "\
Search backward for any of the math switches.
Limit searched to BOUND." nil nil)

;;;***

;;;### (autoloads nil "toolbar-x" "toolbar-x.el" (17780 34283))
;;; Generated autoloads from toolbar-x.el
 (autoload 'toolbarx-install-toolbar "toolbar-x")

;;;***

