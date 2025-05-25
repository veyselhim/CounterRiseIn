;; Kullanicinin sayacini tutan bir sabit deger
(define-constant MAX-COUNT u100)

;; Contractta gerceklesen tum islemlerin sayisini tutan degisken
(define-data-var total-ops uint u0)

;; Toplam islem sayisini getiren method
(define-read-only (get-total-operations) 
  (var-get total-ops)
)

;; Toplam islem sayisini artiran method
(define-private (update-total-ops) 
    (var-set total-ops (+ (var-get total-ops) u1 ))
)