.class public final Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;
.super Landroid/content/ContentProvider;
.source "WifiControlHistoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final blacklist AUTHORITY:Ljava/lang/String; = "com.samsung.server.wifi"

.field private static final blacklist CODE:I = 0x1

.field private static final blacklist DBG:Z

.field private static final blacklist PATH:Ljava/lang/String; = "control"

.field private static final blacklist TAG:Ljava/lang/String; = "WifiControlHistoryProvider"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

.field private final blacklist mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.product_ship"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->DBG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mUriMatcher:Landroid/content/UriMatcher;

    return-void
.end method

.method public static blacklist getContentUri()Landroid/net/Uri;
    .locals 1

    const-string v0, "content://com.samsung.server.wifi/control"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getContentUri(J)Landroid/net/Uri;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "content://com.samsung.server.wifi/control/"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private blacklist updateIfExist(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getUniqueColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "WifiControlHistoryProvider"

    if-nez v1, :cond_0

    const-string/jumbo p0, "unique value is not in the content"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "=?"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "try to find "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :try_start_0
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getDefaultSortOrder()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v7, 0x0

    move-object v5, p0

    move-object v6, p1

    :try_start_1
    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz p0, :cond_1

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object p1, v5, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {p1, p0, p2}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->checkAndGetContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object p2, v5, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {p2}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getIdColumnName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object p2, v0

    move-object p1, v2

    goto :goto_1

    :cond_1
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is not existed in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v5, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {p2}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object p1, v2

    :goto_0
    if-eqz p0, :cond_3

    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_5

    :goto_1
    if-eqz p0, :cond_2

    :try_start_6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    :try_start_7
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p2
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_7} :catch_0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v5, p0

    move-object v6, p1

    :goto_3
    move-object p0, v0

    move-object p1, v2

    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to update - "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_5
    if-eqz p1, :cond_5

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, v6, p1, v8, p0}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_4

    const-string p0, "Failed to update"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    int-to-long p0, v4

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->getContentUri(J)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_5
    return-object v2
.end method


# virtual methods
.method public whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    const-string v0, "deleted "

    const-string v1, "Failed to delete - "

    sget-boolean v2, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->DBG:Z

    const-string v3, "WifiControlHistoryProvider"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "delete uri "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " rows"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return p1
.end method

.method public whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getType()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8

    const-string v0, "Inserted at "

    const-string v1, "Failed to insert - "

    sget-boolean v2, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->DBG:Z

    const-string v3, "WifiControlHistoryProvider"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "insert uri "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->updateIfExist(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x0

    if-nez p1, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {v6, v2, p2}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->checkAndGetContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object p2

    invoke-virtual {v4, v5, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-ltz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->getContentUri(J)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-object p1
.end method

.method public whitelist onCreate()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    iget-object p0, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v0, "com.samsung.server.wifi"

    const-string v1, "control"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return v2
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    const-string v8, "Failed to query - "

    sget-boolean v1, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->DBG:Z

    const-string v9, "WifiControlHistoryProvider"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "query uri "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "query table "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " where "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " arg length "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "null"

    if-eqz p4, :cond_1

    array-length v6, p4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_0
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " projection length "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_2

    array-length v5, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " sortOrder "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v7, p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    iget-object v5, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getProjectionMap()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v2

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    const-string/jumbo v0, "updated "

    const-string v1, "Failed to update - "

    sget-boolean v2, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->DBG:Z

    const-string v3, "WifiControlHistoryProvider"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "update uri "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getDatabase(Z)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider;->mDbHelper:Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/db/WifiControlHistoryProvider$DatabaseHelper;->getTableName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " rows"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteReadOnlyDatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    return p1
.end method
