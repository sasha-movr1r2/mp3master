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
(provide glob-exe
              glob-mp3
			  glob-txt
			  glob-html)
;(filter   (lambda (x)  (regexp-match   #rx".exe"  x))  all-file) 
(define  (glob-exe   lst)  (filter  (lambda (x)  (regexp-match   #rx".exe" x))  lst)) 
(define  (glob-mp3  lst)  (filter  (lambda (x)  (regexp-match   #rx".mp3" x))  lst)) 
(define  (glob-txt  lst)  (filter  (lambda (x)  (regexp-match   #rx".txt" x))  lst)) 
(define  (glob-html   lst)  (filter  (lambda (x)  (regexp-match   #rx".html" x))  lst)) 