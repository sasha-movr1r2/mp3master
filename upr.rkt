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
(define lst1 (file->list  "upr.conf"))
(define  spisok  (car  lst1))
(define  lst  (file->list   spisok))
(define  lstr  (shuffle lst))
(printf  "vvedite : \n 1-regular \n 2-random  \n 3-poodnoj \n ")
(define a  (read))
;;(define  str2 (cond [(= 1 a)  (string-downcase  strng)  ] [(= 2  a) (string-upcase  strng) ]))
(cond [(= 1 a) (map (lambda (x) (system* "play.exe"  x) ) lst )]
           [(= 2 a) (map (lambda (x) (system* "play-rand.exe"  x) ) lstr )]
		    [(= 3 a) (map (lambda (x) (system* "play-uno.exe"  x) ) lstr )])