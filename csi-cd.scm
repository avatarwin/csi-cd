(module csi-cd
  ()
  (import chicken scheme
          (only csi toplevel-command))


  (use (only extras read-line)
       (only srfi-13 string-trim-both)
       (only posix change-directory current-directory))


  (define (cwd p)
    (change-directory p))

  (define (gwd)
    (current-directory))

  (define (trim string)
    (string-trim-both string))
  
(toplevel-command 'cd
   (lambda ()
     (let* [(rest (string-trim-both (read-line)))]
       (cwd rest)
       (print (gwd))))
   ",cd DIRECTORY     Change working directory for csi")

(toplevel-command 'pwd
   (lambda ()
     (print (gwd))
     )
   ",pwd              Display current working directory")
)
