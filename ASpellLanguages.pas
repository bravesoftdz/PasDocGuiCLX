unit ASpellLanguages;

interface

uses
  Classes;

Type
  TASpellLangMap = class(TObject)
    Language: string;
    Code: string;
  end;

var
  LanguageMap: TStringList;

implementation


const
  Languages: array[0..188] of string =
     ('Afar',
      'Afrikaans',
      'Akan',
      'Amharic',
      'Arabic',
      'Assamese',
      'Asturian / Bable',
      'Avar',
      'Aymara',
      'Azerbaijani',
      'Bashkir',
      'Balinese',
      'Belarusian',
      'Bemba',
      'Bulgarian',
      'Bihari',
      'Bislama',
      'Bambara',
      'Bengali',
      'Tibetan',
      'Breton',
      'Bosnian',
      'Catalan / Valencian',
      'Chechen',
      'Cebuano',
      'Chamorro',
      'Chuukese',
      'Corsican',
      'Czech',
      'Kashubian',
      'Chuvash',
      'Welsh',
      'Danish',
      'German',
      'Ewe',
      'Greek',
      'English',
      'Esperanto',
      'Spanish',
      'Estonian',
      'Basque',
      'Persian',
      'Fulah',
      'Finnish',
      'Fijian',
      'Faroese',
      'French',
      'Friulian',
      'Frisian',
      'Irish',
      'Scottish Gaelic',
      'Gallegan',
      'Guarani',
      'Gujarati',
      'Manx Gaelic',
      'Hausa',
      'Hawaiian',
      'Hebrew',
      'Hindi',
      'Hiligaynon',
      'Hiri Motu',
      'Croatian',
      'Upper Sorbian',
      'Haitian Creole',
      'Hungarian',
      'Armenian',
      'Herero',
      'Interlingua (IALA)',
      'Iban',
      'Indonesian',
      'Igbo',
      'Sichuan Yi',
      'Iloko',
      'Ido',
      'Icelandic',
      'Italian',
      'Javanese',
      'Georgian',
      'Kachin',
      'Kongo',
      'Khasi',
      'Kikuyu / Gikuyu',
      'Kwanyama',
      'Kazakh',
      'Kalaallisut / Greenlandic',
      'Kannada',
      'Konkani',
      'Kanuri',
      'Kashmiri',
      'Kurdish',
      'Komi',
      'Cornish',
      'Kirghiz',
      'Latin',
      'Luxembourgish',
      'Ganda',
      'Limburgian',
      'Lingala',
      'Lozi',
      'Lithuanian',
      'Luba-Katanga',
      'Luo (Kenya and Tanzania)',
      'Latvian',
      'Malagasy',
      'Marshallese',
      'Maori',
      'Minangkabau',
      'Macedonian',
      'Malayalam',
      'Mongolian',
      'Moldavian',
      'Marathi',
      'Malay',
      'Maltese',
      'Burmese',
      'Norwegian Bokmal',
      'North Ndebele',
      'Low Saxon',
      'Nepali',
      'Ndonga',
      'Niuean',
      'Dutch',
      'Norwegian Nynorsk',
      'South Ndebele',
      'Northern Sotho',
      'Navajo',
      'Nyanja',
      'Occitan / Provencal',
      'Oromo',
      'Oriya',
      'Ossetic',
      'Punjabi',
      'Pampanga',
      'Papiamento',
      'Polish',
      'Pushto',
      'Portuguese',
      'Quechua',
      'Rarotongan',
      'Rundi',
      'Romanian',
      'Russian',
      'Kinyarwanda',
      'Sardinian',
      'Sindhi',
      'Northern Sami',
      'Sango',
      'Sinhalese',
      'Slovak',
      'Slovenian',
      'Samoan',
      'Shona',
      'Somali',
      'Albanian',
      'Serbian',
      'Swati',
      'Southern Sotho',
      'Sundanese',
      'Swedish',
      'Swahili',
      'Tamil',
      'Telugu',
      'Tetum',
      'Tajik',
      'Tigrinya',
      'Turkmen',
      'Tokelau',
      'Tagalog',
      'Tswana',
      'Tonga',
      'Tok Pisin',
      'Turkish',
      'Tsonga',
      'Tatar',
      'Twi',
      'Tahitian',
      'Uighur',
      'Ukrainian',
      'Urdu',
      'Uzbek',
      'Venda',
      'Vietnamese',
      'Walloon',
      'Wolof',
      'Xhosa',
      'Yiddish',
      'Yoruba',
      'Zhuang',
      'Zulu');

  Abbreviations: array[0..188] of string =
     ('aa',
      'af',
      'ak',
      'am',
      'ar',
      'as',
      'ast',
      'av',
      'ay',
      'az',
      'ba',
      'ban',
      'be',
      'bem',
      'bg',
      'bh',
      'bi',
      'bm',
      'bn',
      'bo',
      'br',
      'bs',
      'ca',
      'ce',
      'ceb',
      'ch',
      'chk',
      'co',
      'cs',
      'csb',
      'cv',
      'cy',
      'da',
      'de',
      'ee',
      'el',
      'en',
      'eo',
      'es',
      'et',
      'eu',
      'fa',
      'ff',
      'fi',
      'fj',
      'fo',
      'fr',
      'fur',
      'fy',
      'ga',
      'gd',
      'gl',
      'gn',
      'gu',
      'gv',
      'ha',
      'haw',
      'he',
      'hi',
      'hil',
      'ho',
      'hr',
      'hsb',
      'ht',
      'hu',
      'hy',
      'hz',
      'ia',
      'iba',
      'id',
      'ig',
      'ii',
      'ilo',
      'io',
      'is',
      'it',
      'jv',
      'ka',
      'kac',
      'kg',
      'kha',
      'ki',
      'kj',
      'kk',
      'kl',
      'kn',
      'kok',
      'kr',
      'ks',
      'ku',
      'kv',
      'kw',
      'ky',
      'la',
      'lb',
      'lg',
      'li',
      'ln',
      'loz',
      'lt',
      'lu',
      'luo',
      'lv',
      'mg',
      'mh',
      'mi',
      'min',
      'mk',
      'ml',
      'mn',
      'mo',
      'mr',
      'ms',
      'mt',
      'my',
      'nb',
      'nd',
      'nds',
      'ne',
      'ng',
      'niu',
      'nl',
      'nn',
      'nr',
      'nso',
      'nv',
      'ny',
      'oc',
      'om',
      'or',
      'os',
      'pa',
      'pam',
      'pap',
      'pl',
      'ps',
      'pt',
      'qu',
      'rar',
      'rn',
      'ro',
      'ru',
      'rw',
      'sc',
      'sd',
      'se',
      'sg',
      'si',
      'sk',
      'sl',
      'sm',
      'sn',
      'so',
      'sq',
      'sr',
      'ss',
      'st',
      'su',
      'sv',
      'sw',
      'ta',
      'te',
      'tet',
      'tg',
      'ti',
      'tk',
      'tkl',
      'tl',
      'tn',
      'to',
      'tpi',
      'tr',
      'ts',
      'tt',
      'tw',
      'ty',
      'ug',
      'uk',
      'ur',
      'uz',
      've',
      'vi',
      'wa',
      'wo',
      'xh',
      'yi',
      'yo',
      'za',
      'zu');

procedure FillLangMap;
var
  Index: integer;
  Item: TASpellLangMap;
begin
  LanguageMap := TStringList.Create;
  LanguageMap.Sorted := True;
  LanguageMap.Duplicates := dupError;
  for Index := 0 to Length(Languages) -1 do
  begin
    Item := TASpellLangMap.Create;
    Item.Language := Languages[Index];
    Item.Code := Abbreviations[Index];
    LanguageMap.AddObject(Item.Language, Item);
  end;
end;

procedure FreeLangMap;
var
  Index: integer;
begin
  for Index := LanguageMap.Count -1 downto 0 do
  begin
    LanguageMap.Objects[Index].Free;
  end;
  LanguageMap.Free;

end;

initialization
  FillLangMap;

finalization
  FreeLangMap;

end.
