s.boot

(
SynthDef(
	\voice,
	{
		| out = 0, root = 440, numerator = 1, denominator = 1, mul = 0.25 |
		var osc, freq;
		freq = root * (numerator/denominator);
		osc = LFTri.ar(freq: freq, mul: mul);
		Out.ar(out, osc);
	}
).add;
)

// root
Synth.new(\voice, [\root, 110, \numerator, 1, \denominator, 1]);

// septimal minor third
Synth.new(\voice, [\root, 110, \numerator, 7, \denominator, 6]);

// fifth
Synth.new(\voice, [\root, 110, \numerator, 3, \denominator, 2]);

// harmonic seventh
Synth.new(\voice, [\root, 110, \numerator, 7, \denominator, 4]);