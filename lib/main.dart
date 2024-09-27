
class Book {
  String title;
  String author;
  int publicationYear;
  int pagesRead;

  static int totalBooks = 0;


  Book(this.title, this.author, this.publicationYear, this.pagesRead) {

    totalBooks++;
  }

  void read(int pages) {
    pagesRead += pages;
  }

  int getPagesRead() => pagesRead;
  String getTitle() => title;
  String getAuthor() => author;
  int getPublicationYear() => publicationYear;

  int getBookAge() {
    int currentYear = DateTime.now().year;
    return currentYear - publicationYear;
  }
}

void main() {

  Book book1 = Book(" Atomic Habits ", " James Clear ", 2018 , 0 );
  Book book2 = Book(" How To Think ", " Patrick King ", 1960, 0);
  Book book3 = Book(" Powerful Focus ", " Thibaut Meurisse ", 2012, 0);

  book1.read(188);
  book2.read(80);
  book3.read(16);

  print(" ${book1.getTitle() } by ${ book1.getAuthor() } (Published: ${ book1.getPublicationYear() }) - Pages Read: ${ book1.getPagesRead() } - Age: ${ book1.getBookAge() } years.");
  print("${ book2.getTitle() } by ${ book2.getAuthor() } (Published: ${ book2.getPublicationYear() }) - Pages Read: ${ book2.getPagesRead() } - Age: ${ book2.getBookAge() } years.");
  print("${ book3.getTitle() } by ${ book3.getAuthor() } (Published: ${ book3.getPublicationYear() }) - Pages Read: ${ book3.getPagesRead() } - Age: ${ book3.getBookAge() } years.");

  print(" Total number of books created: ${Book.totalBooks} ");
}