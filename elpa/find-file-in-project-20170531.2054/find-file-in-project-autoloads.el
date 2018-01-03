;;; find-file-in-project-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (ffip-diff-apply-hunk ffip-show-diff-by-description
;;;;;;  ffip-show-diff ffip-diff-find-file ffip-diff-quit find-directory-in-project-by-selected
;;;;;;  find-relative-path find-file-in-current-directory-by-selected
;;;;;;  find-file-with-similar-name find-file-in-project-by-selected
;;;;;;  find-file-in-current-directory find-file-in-project ffip-current-full-filename-match-pattern-p
;;;;;;  ffip-create-project-file ffip-find-files ffip-project-search
;;;;;;  ffip-completing-read ffip-filename-dashes-to-camelcase ffip-filename-camelcase-to-dashes
;;;;;;  ffip-filename-identity ffip-ivy-resume ffip-get-project-root-directory
;;;;;;  ffip-save-ivy-last ffip-project-root ffip-copy-org-file-link
;;;;;;  ffip-copy-reactjs-import ffip-copy-without-change ffip-diff-backend-hg-show-commit
;;;;;;  ffip-diff-backend-git-show-commit) "find-file-in-project"
;;;;;;  "find-file-in-project.el" (22882 26900 309037 938000))
;;; Generated autoloads from find-file-in-project.el

(autoload 'ffip-diff-backend-git-show-commit "find-file-in-project" "\


\(fn)" nil nil)

(autoload 'ffip-diff-backend-hg-show-commit "find-file-in-project" "\


\(fn)" nil nil)

(autoload 'ffip-copy-without-change "find-file-in-project" "\


\(fn P)" nil nil)

(autoload 'ffip-copy-reactjs-import "find-file-in-project" "\


\(fn P)" nil nil)

(autoload 'ffip-copy-org-file-link "find-file-in-project" "\


\(fn P)" nil nil)

(defvar ffip-find-relative-path-callback 'ffip-copy-without-change)

(autoload 'ffip-project-root "find-file-in-project" "\
Return the root of the project.

\(fn)" nil nil)

(autoload 'ffip-save-ivy-last "find-file-in-project" "\
Save `ivy-last' into `ffip-ivy-last-saved'.  Requires `ivy-mode'.

\(fn)" t nil)

(autoload 'ffip-get-project-root-directory "find-file-in-project" "\
Get the full path of project root directory.

\(fn)" nil nil)

(autoload 'ffip-ivy-resume "find-file-in-project" "\
Wrapper of `ivy-resume'.  Resume the search saved at `ffip-ivy-last-saved'.

\(fn)" t nil)

(autoload 'ffip-filename-identity "find-file-in-project" "\
Return identical KEYWORD.

\(fn KEYWORD)" nil nil)

(autoload 'ffip-filename-camelcase-to-dashes "find-file-in-project" "\
Convert KEYWORD from camel cased to dash seperated.
If CHECK-ONLY is true, only do the check.

\(fn KEYWORD &optional CHECK-ONLY)" nil nil)

(autoload 'ffip-filename-dashes-to-camelcase "find-file-in-project" "\
Convert KEYWORD from dash seperated to camel cased.
If CHECK-ONLY is true, only do the check.

\(fn KEYWORD &optional CHECK-ONLY)" nil nil)

(autoload 'ffip-completing-read "find-file-in-project" "\


\(fn PROMPT COLLECTION ACTION)" nil nil)

(autoload 'ffip-project-search "find-file-in-project" "\
Return an alist of all filenames in the project and their path.

Files with duplicate filenames are suffixed with the name of the
directory they are found in so that they are unique.

If KEYWORD is string, it's the file name or file path to find file.
If KEYWORD is list, it's the list of file names.

\(fn KEYWORD FIND-DIRECTORY)" nil nil)

(autoload 'ffip-find-files "find-file-in-project" "\
The API to find files.

\(fn KEYWORD OPEN-ANOTHER-WINDOW &optional FIND-DIRECTORY FN)" nil nil)

(autoload 'ffip-create-project-file "find-file-in-project" "\
Create or Append .dir-locals.el to set up per directory.
You can move .dir-locals.el to root directory.
See (info \"(Emacs) Directory Variables\") for details.

\(fn)" t nil)

(autoload 'ffip-current-full-filename-match-pattern-p "find-file-in-project" "\
Is current full file name (including directory) match the REGEX?

\(fn REGEX)" nil nil)

(autoload 'find-file-in-project "find-file-in-project" "\
Prompt with a completing list of all files in the project to find one.

If OPEN-ANOTHER-WINDOW is not nil, the file will be opened in new window.

The project's scope is defined as the first directory containing
a `ffip-project-file' whose value is \".git\" by default.

You can override this by setting the variable `ffip-project-root'.

\(fn &optional OPEN-ANOTHER-WINDOW)" t nil)

(autoload 'find-file-in-current-directory "find-file-in-project" "\
Like `find-file-in-project'.  But search only in current directory.

\(fn &optional OPEN-ANOTHER-WINDOW)" t nil)

(autoload 'find-file-in-project-by-selected "find-file-in-project" "\
Similar to `find-file-in-project'.
But use string from selected region to search files in the project.
If no region is selected, you need provide keyword.

Keyword could be ANY part of the file's full path and support wildcard.
For example, to find /home/john/proj1/test.js, below keywords are valid:
- test.js
- roj1/tes
- john*test

If keyword contains line number like \"hello.txt:32\" or \"hello.txt:32:\",
we will move to that line in opened file.

If OPEN-ANOTHER-WINDOW is not nil, the file will be opened in new window.

\(fn &optional OPEN-ANOTHER-WINDOW)" t nil)

(autoload 'find-file-with-similar-name "find-file-in-project" "\
Use base name of current file as keyword which could be further stripped
by `ffip-strip-file-name-regex'.

If OPEN-ANOTHER-WINDOW is not nil, the file will be opened in new window.

\(fn &optional OPEN-ANOTHER-WINDOW)" t nil)

(autoload 'find-file-in-current-directory-by-selected "find-file-in-project" "\
Like `find-file-in-project-by-selected'.  But search only in current directory.

\(fn &optional OPEN-ANOTHER-WINDOW)" t nil)

(autoload 'find-relative-path "find-file-in-project" "\
Find file/directory and copy its relative path into `kill-ring'.
Optional prefix FIND-DIRECTORY copy the directory path; file path by default.

You can set `ffip-find-relative-path-callback' to format the string before copying,
  (setq ffip-find-relative-path-callback 'ffip-copy-reactjs-import)
  (setq ffip-find-relative-path-callback 'ffip-copy-org-file-link)

\(fn &optional FIND-DIRECTORY)" t nil)

(autoload 'find-directory-in-project-by-selected "find-file-in-project" "\
Similar to `find-file-in-project-by-selected'.
Use string from selected region to find directory in the project.
If no region is selected, you need provide keyword.

Keyword could be directory's base-name only or parent-directoy+base-name
For example, to find /home/john/proj1/test, below keywords are valid:
- test
- roj1/test
- john*test

If OPEN-ANOTHER-WINDOW is not nil, the file will be opened in new window.

\(fn &optional OPEN-ANOTHER-WINDOW)" t nil)

(defalias 'ffip 'find-file-in-project)

(autoload 'ffip-diff-quit "find-file-in-project" "\


\(fn)" t nil)

(autoload 'ffip-diff-find-file "find-file-in-project" "\
File file(s) in current hunk.

\(fn &optional OPEN-ANOTHER-WINDOW)" t nil)

(autoload 'ffip-show-diff "find-file-in-project" "\
Show the diff output by excuting selected `ffip-diff-backends'.
NUM is the index selected backend from `ffip-diff-backends'.
NUM is zero based whose default value is zero.

\(fn &optional NUM)" t nil)

(autoload 'ffip-show-diff-by-description "find-file-in-project" "\
Show the diff output by excuting selected `ffip-diff-backends. 

\(fn)" t nil)

(autoload 'ffip-diff-apply-hunk "find-file-in-project" "\
Apply current hunk in `diff-mode'. Try to locate the file to patch
from `recentf-list'. If nothing is found in `recentf-list', user need
specify the file path.
It's same as `diff-apply-hunk' except it can find file in `recentf-list'.
So `diff-apply-hunk' can be replaced by `ffip-diff-apply-hunk'.
Please read documenation of `diff-apply-hunk' to get more details.

\(fn &optional REVERSE)" t nil)

;;;***

;;;### (autoloads nil nil ("find-file-in-project-pkg.el") (22882
;;;;;;  26900 538687 624000))

;;;***

(provide 'find-file-in-project-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; find-file-in-project-autoloads.el ends here
