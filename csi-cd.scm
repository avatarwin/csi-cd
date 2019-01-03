(module csi-cd ()
	(import scheme
		chicken.base
		chicken.process-context
		chicken.csi
		chicken.io
		srfi-13)




  (define (cwd p)
    (change-directory p))

  (define (gwd)
    (current-directory))

  (define (trim string)
    (string-trim-both string))

  (define (cwd-toplevel-command)
    (let* [(rest (string-trim-both (read-line)))]
      (cwd rest)
      (print (gwd))))

  (define (pwd-toplevel-command)
    (print (gwd)))
    
    (toplevel-command 'cd
		      cwd-toplevel-command
		      ",cd DIRECTORY     Change working directory for csi")
    
    (toplevel-command 'pwd
		      pwd-toplevel-command
		      ",pwd              Display current working directory")
)
