require './lts'
`mkdir -p gen`
`rm -rf gen/*`
switch_lts = LTS.new
switch_lts.parse_json("switch.json")
switch_lts.to_tex("switch")
`pdflatex --output-directory gen/ gen/switch.tex`
light_lts = LTS.new
light_lts.parse_json("light.json")
light_lts.to_tex("light")
`pdflatex --output-directory gen/ gen/light.tex`
lightCompSwitch = light_lts.compose(switch_lts, ["press", "hold"])
lightCompSwitch.to_tex("comp")
`pdflatex --output-directory gen/ gen/comp.tex`

tl1 = LTS.new
tl1.parse_json("TL1.json")
tl1.to_tex("TL1")
`pdflatex --output-directory gen/ gen/TL1.tex`
tl2 = LTS.new
tl2.parse_json("TL2.json")
tl2.to_tex("TL2")
TL1u2 = tl1.compose(tl2, [])
TL1u2.to_tex("TL1u2")
`pdflatex --output-directory gen/ gen/TL1u2.tex`