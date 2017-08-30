#lang racket
;;*****************************************
;;Copyright 2015 Sasha <movr1r2@gmail.com>

;;THE SOFTWARE IS PROVIDED "AS IS", WITHOUT
;;WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, 
;;INCLUDING BUT NOT LIMITED TO THE WARRANTIES
;;OF MERCHANTABILITY,FITNESS FOR A PARTICULAR
;;PURPOSE AND NONINFRINGEMENT. IN NO EVENT 
;;SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE 
;;LIABLE FOR ANY CLAIM, DAMAGES OR OTHER 
;;LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
;;TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
;;CONNECTION WITH THE SOFTWARE OR THE USE OR 
;;OTHER DEALINGS IN THE SOFTWARE.
;;*******************************************
(require  "fndput.rkt"
        racket/cmdline)
(define a  (current-command-line-arguments))
(display a)
(define  pap  (vector-ref a 0)  )
(define  lst2  (mk-put pap))
;(display lst2)
(length lst2)
(write-to-file  lst2  "index.txt" #:exists 'replace)
;; dalshe idet sposob zapisi v fajl bez pobochnyh effektov
;;(define p (open-output-string))
;;(define in (open-input-file  "index.txt"))
;;(copy-port in p)
;;(define str (get-output-string p))
;;(close-input-port in)
;;(display str)
;;(define str (file->string  "index.txt"))
;;udalenie skobok i povtornaja zapis v fajl
;;(define str1 (string-replace str  "(" ""))
;;define str2 (string-replace str1  ")" ""))
;;(display str2 )
;;(write-to-file  str2 "index22.txt"  #:exists 'replace)
;;(display-to-file  str2 	"index22.txt" #:exists 'replace)
;(display-lines-to-file	  lst2  "index3.txt" #:separator #"\n"  #:exists 'replace)
;;(define  str2 (cond [(= 1 a)  (string-downcase  strng)  ] [(= 2  a) (string-upcase  strng) ]))
