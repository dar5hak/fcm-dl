# fcm-dl
Download issues of [Full Circle Magazine](http://fullcirclemagazine.org/).

## Usage
Just pass the issue number as an argument.

Download one issue.
```bash
$ ./fcm-dl 7
# issue7_en.pdf
```

<!-- Download a series.
```bash
$ ./fcm-dl 7 9
# issue7_en.pdf, issue8_en.pdf, issue9_en.pdf
``` -->

Download in another language.
```bash
$ ./fcm-dl -l es 7
# issue7_es.pdf
```

Download in EPUB format.
```bash
$ ./fcm-dl -e 67
# issue67_en.epub
```
