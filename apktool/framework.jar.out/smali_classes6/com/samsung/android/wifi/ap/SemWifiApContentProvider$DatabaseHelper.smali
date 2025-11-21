.class Lcom/samsung/android/wifi/ap/SemWifiApContentProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SemWifiApContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "SemWifiApContentProvider.db"

    invoke-direct {p0, p1, v2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string p0, "DatabaseHelper constructor"

    invoke-static {p0}, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->addMHSDumpLog(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->-$$Nest$sfputmContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public blacklist createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "createTable"

    invoke-static {p0}, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->addMHSDumpLog(Ljava/lang/String;)V

    :try_start_0
    const-string p0, " CREATE TABLE SemWifiApContentProvider (_id INTEGER PRIMARY KEY AUTOINCREMENT,  name TEXT NOT NULL,  value TEXT NOT NULL);"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "SemWifiApContentProvider"

    const-string p1, "couldn\'t create table in  database"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->addMHSDumpLog(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    const-string p0, "dropTable"

    invoke-static {p0}, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->addMHSDumpLog(Ljava/lang/String;)V

    :try_start_0
    const-string p0, "DROP TABLE IF EXISTS SemWifiApContentProvider"

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "SemWifiApContentProvider"

    const-string p1, "couldn\'t drop table in  database"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->addMHSDumpLog(Ljava/lang/String;)V

    return-void
.end method

.method blacklist getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    return-object p0
.end method

.method public whitelist onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DatabaseHelper onCreate"

    invoke-static {v0}, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->addMHSDumpLog(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public whitelist onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    const-string p2, "DatabaseHelper onUpgrade"

    invoke-static {p2}, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;->addMHSDumpLog(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider$DatabaseHelper;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
