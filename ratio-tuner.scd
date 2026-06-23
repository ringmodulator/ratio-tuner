s.boot

(
SynthDef(
	\voice,
	{
		| out = 0, root = 440, numerator = 1, denominator = 1, mul = 0.5 |
		var osc, freq;
		freq = root * (numerator/denominator);
		osc = LFTri.ar(freq: freq, mul: mul);
		Out.ar(out, osc);
	}
).add;
)