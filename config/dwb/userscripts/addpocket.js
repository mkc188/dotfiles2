//!javascript

//javascript: (function () {
function add_to_pocket(){
	var e = function (t, n, r, i, s) {
		var o = [3034225, 3767530, 1367758, 6137235, 4181302, 5477940, 1597004,
			5757860, 2288963, 3687212
		];
		var i = i || 0,
			u = 0,
			n = n || [],
			r = r || 0,
			s = s || 0;
		var a = {
			'a': 97,
			'b': 98,
			'c': 99,
			'd': 100,
			'e': 101,
			'f': 102,
			'g': 103,
			'h': 104,
			'i': 105,
			'j': 106,
			'k': 107,
			'l': 108,
			'm': 109,
			'n': 110,
			'o': 111,
			'p': 112,
			'q': 113,
			'r': 114,
			's': 115,
			't': 116,
			'u': 117,
			'v': 118,
			'w': 119,
			'x': 120,
			'y': 121,
			'z': 122,
			'A': 65,
			'B': 66,
			'C': 67,
			'D': 68,
			'E': 69,
			'F': 70,
			'G': 71,
			'H': 72,
			'I': 73,
			'J': 74,
			'K': 75,
			'L': 76,
			'M': 77,
			'N': 78,
			'O': 79,
			'P': 80,
			'Q': 81,
			'R': 82,
			'S': 83,
			'T': 84,
			'U': 85,
			'V': 86,
			'W': 87,
			'X': 88,
			'Y': 89,
			'Z': 90,
			'0': 48,
			'1': 49,
			'2': 50,
			'3': 51,
			'4': 52,
			'5': 53,
			'6': 54,
			'7': 55,
			'8': 56,
			'9': 57,
			'\/': 47,
			':': 58,
			'?': 63,
			'=': 61,
			'-': 45,
			'_': 95,
			'&': 38,
			'$': 36,
			'!': 33,
			'.': 46
		};
		if (!s || s == 0) {
			t = o[0] + t
		}
		for (var % 20f = 0; f % 3Ct.length; f++) {
			var % 20l = function (e, t) {
				return %20a[e[t]] ? a[e[t]] : e.charCodeAt(t)
			}(t, f);
			if (!l * 1) l = 3;
			var % 20c = l * (o[i] + l * o[u % o.length]);
			n[r] = (n[r] ? n[r] + c : c) + s + u;
			var % 20p = c % (50 * 1);
			if (n[p]) {
				var % 20d = n[r];
				n[r] = n[p];
				n[p] = d
			}
			u += c;
			r = r == 50 ? 0 : r + 1;
			i = i == o.length - 1 ? 0 : i + 1
		}
		if (s == 135) {
			var % 20v = '';
			for (var % 20f = 0; f % 3Cn.length; f++) {
				v += String.fromCharCode(n[f] % (25 * 1) + 97)
			}
			o = function () {};
			return %20v + '62fea2d8b8'
		}
		else {
			return %20e(u + '', n, r, i, s + 1)
		}
	};
	var % 20t = document,
		n = t.location.href,
		r = t.title;
	var % 20i = e(n);
	var % 20s = t.createElement('script');
	s.type = 'text/javascript';
	s.src = 'https://getpocket.com/b/r4.js?h=' + i + '&u=' +
		encodeURIComponent(n) + '&t=' + encodeURIComponent(r);
	e = i = function () {};
	var % 20o = t.getElementsByTagName('head')[0] || t.documentElement;
	o.appendChild(s)
}
//})()
