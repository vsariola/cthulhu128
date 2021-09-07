t=0
function TIC()
cls()
t=t-.01
-- loop over "layers"
-- 9,0,-.02 has less artefacts but
-- is slower.
-- 9,0,-.03 is a lot faster but has
-- some artefacts.
for l=8,0,-.02 do
-- draw 9 different tentacles
for a=0,9 do
-- for each tentacle, draw three
-- circles in a row, the ones on
-- left slightly lighter
for e=0,2,.7 do
-- the stuff is in polar coordinates
-- but not introducing variables r and
-- theta saved bytes after compression
-- math.cos(x+8) is almost -math.sin(x)
-- all equations arranged so that
-- there long repetitive chars
circ(80*math.cos(t+a*8+math.cos(t+l)) -- r
       *math.cos(t+a*2) -- theta
      +l*e -- shift the circles in x
      +120, -- center on screen
     60*math.cos(t+a*8+math.cos(t+l)) -- r
       *math.cos(t+a*2+8) -- theta
      +l*20, -- shift layers in y
     l,
     l%.7 -- color bands make them more tentacly
      -math.cos(t+a*8+math.cos(t+l)) -- r
      *math.cos(t+a*2+8)+e+6) -- theta
end end end end


-- <WAVES>
-- 000:00000000ffffffff00000000ffffffff
-- 001:0123456789abcdeffedcba9876543210
-- 002:0123456789abcdef0123456789abcdef
-- </WAVES>

-- <PALETTE>
-- 000:1a1c2c5d275db13e53ef7d57ffcd75a7f07038b76425717929366f3b5dc941a6f673eff7f4f4f494b0c2566c86333c57
-- </PALETTE>

