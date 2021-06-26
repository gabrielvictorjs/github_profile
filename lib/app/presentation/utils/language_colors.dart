import 'dart:ui';

//
Map<String, Color> get languageColors => {
      'ABAP': Color(0xFFE8274B),
      'ActionScript': Color(0xFF882B0F),
      'Ada': Color(0xFF02f88c),
      'Agda': Color(0xFF315665),
      'AGS Script': Color(0xFFB9D9FF),
      'Alloy': Color(0xFF64C800),
      'AMPL': Color(0xFFE6EFBB),
      'ANTLR': Color(0xFF9DC3FF),
      'API Blueprint': Color(0xFF2ACCA8),
      'APL': Color(0xFF5A8164),
      'Arc': Color(0xFFaa2afe),
      'Arduino': Color(0xFFbd79d1),
      'ASP': Color(0xFF6a40fd),
      'AspectJ': Color(0xFFa957b0),
      'Assembly': Color(0xFF6E4C13),
      'ATS': Color(0xFF1ac620),
      'AutoHotkey': Color(0xFF6594b9),
      'AutoIt': Color(0xFF1C3552),
      'BlitzMax': Color(0xFFcd6400),
      'Boo': Color(0xFFd4bec1),
      'Brainfuck': Color(0xFF2F2530),
      'C Sharp': Color(0xFF178600),
      'C': Color(0xFF555555),
      'Chapel': Color(0xFF8dc63f),
      'Cirru': Color(0xFFccccff),
      'Clarion': Color(0xFFdb901e),
      'Clean': Color(0xFF3F85AF),
      'Click': Color(0xFFE4E6F3),
      'Clojure': Color(0xFFdb5855),
      'CoffeeScript': Color(0xFF244776),
      'ColdFusion CFC': Color(0xFFed2cd6),
      'ColdFusion': Color(0xFFed2cd6),
      'Common Lisp': Color(0xFF3fb68b),
      'Component Pascal': Color(0xFFb0ce4e),
      'cpp': Color(0xFFf34b7d),
      'Crystal': Color(0xFF776791),
      'CSS': Color(0xFF563d7c),
      'D': Color(0xFFba595e),
      'Dart': Color(0xFF00B4AB),
      'Diff': Color(0xFF88dddd),
      'DM': Color(0xFF447265),
      'Dogescript': Color(0xFFcca760),
      'Dylan': Color(0xFF6c616e),
      'E': Color(0xFFccce35),
      'Eagle': Color(0xFF814C05),
      'eC': Color(0xFF913960),
      'ECL': Color(0xFF8a1267),
      'edn': Color(0xFFdb5855),
      'Eiffel': Color(0xFF946d57),
      'Elixir': Color(0xFF6e4a7e),
      'Elm': Color(0xFF60B5CC),
      'Emacs Lisp': Color(0xFFc065db),
      'EmberScript': Color(0xFFFFF4F3),
      'Erlang': Color(0xFFB83998),
      'F#': Color(0xFFb845fc),
      'Factor': Color(0xFF636746),
      'Fancy': Color(0xFF7b9db4),
      'Fantom': Color(0xFFdbded5),
      'FLUX': Color(0xFF88ccff),
      'Forth': Color(0xFF341708),
      'FORTRAN': Color(0xFF4d41b1),
      'FreeMarker': Color(0xFF0050b2),
      'Frege': Color(0xFF00cafe),
      'Game Maker Language': Color(0xFF8fb200),
      'Glyph': Color(0xFFe4cc98),
      'Gnuplot': Color(0xFFf0a9f0),
      'Go': Color(0xFF375eab),
      'Golo': Color(0xFF88562A),
      'Gosu': Color(0xFF82937f),
      'Grammatical Framework': Color(0xFF79aa7a),
      'Groovy': Color(0xFFe69f56),
      'Handlebars': Color(0xFF01a9d6),
      'Harbour': Color(0xFF0e60e3),
      'Haskell': Color(0xFF29b544),
      'Haxe': Color(0xFFdf7900),
      'HTML': Color(0xFFe44b23),
      'Hy': Color(0xFF7790B2),
      'IDL': Color(0xFFa3522f),
      'Io': Color(0xFFa9188d),
      'Ioke': Color(0xFF078193),
      'Isabelle': Color(0xFFFEFE00),
      'J': Color(0xFF9EEDFF),
      'Java': Color(0xFFb07219),
      'JavaScript': Color(0xFFf1e05a),
      'JFlex': Color(0xFFDBCA00),
      'JSONiq': Color(0xFF40d47e),
      'Julia': Color(0xFFa270ba),
      'Jupyter Notebook': Color(0xFFDA5B0B),
      'Kotlin': Color(0xFFF18E33),
      'KRL': Color(0xFF28431f),
      'Lasso': Color(0xFF999999),
      'Latte': Color(0xFFA8FF97),
      'Lex': Color(0xFFDBCA00),
      'LFE': Color(0xFF004200),
      'LiveScript': Color(0xFF499886),
      'LOLCODE': Color(0xFFcc9900),
      'LookML': Color(0xFF652B81),
      'LSL': Color(0xFF3d9970),
      'Lua': Color(0xFF000080),
      'Makefile': Color(0xFF427819),
      'Mask': Color(0xFFf97732),
      'Matlab': Color(0xFFbb92ac),
      'Max': Color(0xFFc4a79c),
      'MAXScript': Color(0xFF00a6a6),
      'Mercury': Color(0xFFff2b2b),
      'Metal': Color(0xFF8f14e9),
      'Mirah': Color(0xFFc7a938),
      'MTML': Color(0xFFb7e1f4),
      'NCL': Color(0xFF28431f),
      'Nemerle': Color(0xFF3d3c6e),
      'nesC': Color(0xFF94B07),
      'NetLinx': Color(0xFF0aa0ff),
      'NetLinx+ERB': Color(0xFF747faa),
      'NetLogo': Color(0xFFff6375),
      'NewLisp': Color(0xFF87AED7),
      'Nimrod': Color(0xFF37775b),
      'Nit': Color(0xFF009917),
      'Nix': Color(0xFF7e7eff),
      'Nu': Color(0xFFc9df40),
      'Objective-C': Color(0xFF438eff),
      'Objective-C++': Color(0xFF6866fb),
      'Objective-J': Color(0xFFff0c5a),
      'OCaml': Color(0xFF3be133),
      'Omgrofl': Color(0xFFcabbff),
      'ooc': Color(0xFFb0b77e),
      'Opal': Color(0xFFf7ede0),
      'Oxygene': Color(0xFFcdd0e3),
      'Oz': Color(0xFFfab738),
      'Pan': Color(0xFFcc0000),
      'Papyrus': Color(0xFF6600cc),
      'Parrot': Color(0xFFf3ca0a),
      'Pascal': Color(0xFFb0ce4e),
      'PAWN': Color(0xFFdbb284),
      'Perl': Color(0xFF0298c3),
      'Perl6': Color(0xFF0000fb),
      'PHP': Color(0xFF4F5D95),
      'PigLatin': Color(0xFFfcd7de),
      'Pike': Color(0xFF005390),
      'PLSQL': Color(0xFFdad8d8),
      'PogoScript': Color(0xFFd80074),
      'Processing': Color(0xFF0096D8),
      'Prolog': Color(0xFF74283c),
      'Propeller Spin': Color(0xFF7fa2a7),
      'Puppet': Color(0xFF302B6D),
      'Pure Data': Color(0xFF91de79),
      'PureBasic': Color(0xFF5a6986),
      'PureScript': Color(0xFF1D222D),
      'Python': Color(0xFF3572A5),
      'QML': Color(0xFF44a51c),
      'R': Color(0xFF198ce7),
      'Racket': Color(0xFF22228f),
      'Ragel in Ruby Host': Color(0xFF9d5200),
      'RAML': Color(0xFF77d9fb),
      'Rebol': Color(0xFF358a5b),
      'Red': Color(0xFFee0000),
      'Ren\'Py': Color(0xFFff7f7f),
      'Rouge': Color(0xFFcc0088),
      'Ruby': Color(0xFF701516),
      'Rust': Color(0xFFdea584),
      'SaltStack': Color(0xFF646464),
      'SAS': Color(0xFFB34936),
      'Scala': Color(0xFFDC322F),
      'Scheme': Color(0xFF1e4aec),
      'Self': Color(0xFF0579aa),
      'Shell': Color(0xFF89e051),
      'Shen': Color(0xFF120F14),
      'Slash': Color(0xFF007eff),
      'Slim': Color(0xFFff8f77),
      'Smalltalk': Color(0xFF596706),
      'SourcePawn': Color(0xFF5c7611),
      'SQF': Color(0xFF3F3F3F),
      'Squirrel': Color(0xFF800000),
      'Stan': Color(0xFFb2011d),
      'Standard ML': Color(0xFFdc566d),
      'SuperCollider': Color(0xFF46390b),
      'Swift': Color(0xFFffac45),
      'SystemVerilog': Color(0xFFDAE1C2),
      'Tcl': Color(0xFFe4cc98),
      'TeX': Color(0xFF3D6117),
      'Turing': Color(0xFF45f715),
      'TypeScript': Color(0xFF2b7489),
      'Unified Parallel C': Color(0xFF4e3617),
      'Unity3D Asset': Color(0xFFab69a1),
      'UnrealScript': Color(0xFFa54c4d),
      'Vala': Color(0xFFfbe5cd),
      'Verilog': Color(0xFFb2b7f8),
      'VHDL': Color(0xFFadb2cb),
      'VimL': Color(0xFF199f4b),
      'Visual Basic': Color(0xFF945db7),
      'Volt': Color(0xFF1F1F1F),
      'Vue': Color(0xFF2c3e50),
      'Web Ontology Language': Color(0xFF9cc9dd),
      'wisp': Color(0xFF7582D1),
      'X10': Color(0xFF4B6BEF),
      'xBase': Color(0xFF403a40),
      'XC': Color(0xFF99DA07),
      'XQuery': Color(0xFF5232e7),
      'Zephir': Color(0xFF118f9e),
    };
