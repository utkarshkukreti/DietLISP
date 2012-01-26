module Origin(origin) where

origin = "\
\  (fn not (x)                          \
\    (== x false))                      \
\                                       \
\  (fn zerop (x)                        \
\    (== x 0))                          \
\                                       \
\  (fn nullp (x)                        \
\    (== x null))                       \
\                                       \
\  (fn map (f list)                     \
\    (if (nullp list)                   \
\        null                           \
\      (cons (f (head list))            \
\            (map f (tail list)))))     \
\                                       \
\  (fn fold (f a list)                  \
\    (if (nullp list)                   \
\        a                              \
\      (fold f (f a (head list))        \
\            (tail list))))             \
\                                       \
\  (fn range (begin end)                \
\    (if (>= begin end)                 \
\        null                           \
\      (cons begin (range (+ 1 begin)   \
\                         end))))       \
\"
