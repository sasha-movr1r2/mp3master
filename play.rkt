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
(require "glob.rkt"
 racket/cmdline)
(define a  (current-command-line-arguments))
(display a)
(define  pap  (vector-ref a 0)  )
(display  pap )
(define lst1 (file->list  "upr.conf"))
(define player  (second  lst1))
(define  vse (directory-list  pap))
(define  mp3  (glob-mp3  vse))
(current-directory  pap)
(map  (lambda (x) (system*  player  x))  mp3)
;************************************************
;;(define (play  pap)  ((current-directory pap) 
;;(map (lambda (x)  (system* player  x)) 
;;(glob-mp3 (directory-list pap)) ))
;;uproshennaja********************************
;;(define (play  pap) ( (current-directory pap)  (map (lambda (x)  (system* player  x))  (directory-list pap)) ))

;;"e:/Free/mpg123/bin/mpg123.exe " -player
;;"d:/m1/" -pap