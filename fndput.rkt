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
(provide mk-put)
(define  (mk-put  str)  (map  (lambda (x) (string-append str  (path->string x) "/")) (directory-list  str )))
;; lst1 - spisok putej  ; proverka -papka? esli da - mk-put; esli net - otpravit put v vyhodnoj spisok putej
;;(directory-exists? path) (write-to-file	 lst  path) 
