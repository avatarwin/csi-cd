(module csi-cd
  ()
  (import chicken scheme extras
          (only csi toplevel-command)
          (only srfi-13 string-trim-both)
          (only posix change-directory current-directory))

(toplevel-command 'cd
   (lambda ()
     (let* [(rest (string-trim-both (read-line)))]
       (change-directory rest)
       (print (current-directory))))
   ",cd DIRECTORY     Change working directory for csi")

(toplevel-command 'pwd
   (lambda ()
     (print (current-directory))
     )
   ",pwd              Display current working directory")
)
