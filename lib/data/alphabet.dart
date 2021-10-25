const List<String> langAlphabet = [
  "Nr.",
  "Buchstabe",
  "Aussprache",
  "Deutsch",
  "Wolof",
];

class Alphabet {
  final int? number;
  final String? buchstabe;
  final String? aussprache;
  final String? deutsch;
  final String? wolof;

  Alphabet(
      {this.number, this.buchstabe, this.aussprache, this.deutsch, this.wolof});
}

List<Alphabet> letterAlphabet = [
  Alphabet(
      number: 1,
      buchstabe: "A a",
      aussprache: "A",
      deutsch: "Ananas",
      wolof: "ananas"),
  Alphabet(
      number: 2,
      buchstabe: "B b",
      aussprache: "Bé",
      deutsch: "Banane",
      wolof: "banana"),
  Alphabet(
      number: 3,
      buchstabe: "C c",
      aussprache: "Tsé",
      deutsch: "Centrum",
      wolof: "sant"),
  Alphabet(
      number: 4,
      buchstabe: "D d",
      aussprache: "Dé",
      deutsch: "danke",
      wolof: "dank"),
  Alphabet(
      number: 5,
      buchstabe: "E e",
      aussprache: "E",
      deutsch: "Elf",
      wolof: "rek"),
  Alphabet(
      number: 6,
      buchstabe: "F f",
      aussprache: "Eff",
      deutsch: "Fall",
      wolof: "fal"),
  Alphabet(
      number: 7,
      buchstabe: "G g",
      aussprache: "Gué",
      deutsch: "Gar",
      wolof: "garr"),
  Alphabet(
      number: 8,
      buchstabe: "H h",
      aussprache: "Ha",
      deutsch: "Hallo",
      wolof: "h"),
  Alphabet(
      number: 9,
      buchstabe: "I i",
      aussprache: "I",
      deutsch: "Ist",
      wolof: "indi"),
  Alphabet(
      number: 10,
      buchstabe: "J j",
      aussprache: "Iott",
      deutsch: "Ja",
      wolof: "ya"),
  Alphabet(
      number: 11,
      buchstabe: "K k",
      aussprache: "Ka",
      deutsch: "Kalt",
      wolof: "kaay"),
  Alphabet(
      number: 12,
      buchstabe: "L l",
      aussprache: "El",
      deutsch: "Lai",
      wolof: "lay"),
  Alphabet(
      number: 13,
      buchstabe: "M m",
      aussprache: "Em",
      deutsch: "Mann",
      wolof: "man"),
  Alphabet(
      number: 14,
      buchstabe: "N n",
      aussprache: "En",
      deutsch: "Neu",
      wolof: "nooy")
// 15	O o	O	Orange	orans
// 16	P p	Pé	Papa	papa
// 17	Q q	Cou	Quelle	q
// 18	R r	Err	Ruhr	ruur
// 19	S s	Ess	Sieben	zal
// 20	T t	Té	Toll	tol
// 21	U u	Ou	Und	ubbi
// 22	V v	Faou	Vier	fiir
// 23	W w	Vé	Welle	vé
// 24	X x	Iks	Xylophone	iks
// 25	Y y	Upsilon	Yoruba	yoruba
// 26	Z z	Tsett	Zeit	ts
// 27	ß 	Ess tsett	Soße	sose
// 28	Ä ä/ae	E	Atmosphäre	reew
// 29	Ü ü/ue	U	Lücke
// 30	Ö ö/oe	Eu	Löwe	ëw
// 31	Ei ei 	Aille	Brei	bray
// 32	Äu äu	Oy	Häufig	toy
// 34	Eu 	Oy	Heute	toy
// 35	-ach-	Akh	Bach	baax
// 36	-och-	Okh	Doch	dox
// 37	-uch-	Oukh	Buch	buux
];
