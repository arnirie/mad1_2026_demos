import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper {
  //helper classes

  //db constants
  static const dbName = 'shopping.db';
  static int dbVersion = 2;

  //table constants: products
  static const tbPName = 'products';
  static const colPId = 'id';
  static const colPName = 'name';
  static const colPDesc = 'description';
  static const colPPrice = 'price';
  static const colPImage = 'imageUrl';
  static const colPIsFav = 'isFavorite';

  //open
  static Future<Database> openDb() async {
    var path = join(await getDatabasesPath(), dbName);
    var sql =
        '''CREATE TABLE IF NOT EXISTS $tbPName
        ($colPId INTEGER PRIMARY KEY AUTOINCREMENT,
        $colPName TEXT NOT NULL,
        $colPDesc TEXT,
        $colPPrice DECIMAL(14, 4),
        $colPImage TEXT,
        $colPIsFav INT
        ); ''';
    print(sql);
    var database = await openDatabase(
      path,
      version: dbVersion,
      onCreate: (db, version) {
        //create table
        db.execute(sql);
        print('table created');
      },
      onUpgrade: (db, oldVersion, newVersion) {
        //check
        if (oldVersion > newVersion) return;
        db.execute('DROP TABLE IF EXISTS $tbPName');
        //recreate the table
        db.execute(sql);
        print('db upgraded');
      },
    );
    return database;
  }

  static void insertProductRaw() async {
    //open db + insert product
    var db = await openDb();
    db.rawInsert('''
      INSERT INTO $tbPName VALUES(NULL, 'iphone',
        'iphone 17 pro max', 99000, NULL, 0
      );
    ''');
    // db.execute('');
    print("raw inserted");
  }

  static void queryProductsRaw() async {
    //open db + query
    var db = await openDb();
    var result = await db.rawQuery('SELECT * FROM $tbPName');
    // result.forEach((item) {
    //   print(item['key']);
    // });
    print(result);
  }

  static void insertProduct() async {
    //open db + insert
    var db = await openDb();
    int id = await db.insert(tbPName, {
      colPName: 'Samsung Galaxy',
      colPDesc: 'Galaxy 21',
      colPPrice: 80000,
      // colPImage : '',
      colPIsFav: 0,
    });
    print('inserted product with id $id');
  }
}
