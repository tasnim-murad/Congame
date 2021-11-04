#lang info

(define collection "congame-identity")
(define deps '("base"
               "buid"
               "component-lib"
               "db-lib"
               ("deta-lib" #:version "0.9")
               "forms-lib"
               "gregor-lib"
               "http-easy"
               "koyo-lib"
               "koyo-north"
               "koyo-postmark"
               "libargon2"
               "smtp-server"
               "threading-lib"
               "web-server-lib"))
(define build-deps '())