.class public Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider;
.super Landroid/content/ContentProvider;
.source "SemMobileWipsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final blacklist ATTACK_TYPE:Ljava/lang/String; = "attack_type"

.field private static final blacklist AUTHORITY:Ljava/lang/String; = "com.samsung.server.wifi.mwips"

.field public static final blacklist BEACON_SEEN:Ljava/lang/String; = "beacon_seen"

.field public static final blacklist BEACON_TSF:Ljava/lang/String; = "beacon_tsf"

.field public static final blacklist CONTENT_URI_DUMP:Landroid/net/Uri;

.field public static final blacklist CONTENT_URI_IELIST:Landroid/net/Uri;

.field public static final blacklist CONTENT_URI_WHITELIST:Landroid/net/Uri;

.field private static final blacklist DB_NAME:Ljava/lang/String; = "MobileWIPS.db"

.field public static final blacklist DB_TABLE_DUMP:Ljava/lang/String; = "MobileWIPSDUMP"

.field public static final blacklist DB_TABLE_IELIST:Ljava/lang/String; = "MobileWIPSIE"

.field public static final blacklist DB_TABLE_WHITELIST:Ljava/lang/String; = "MobileWIPSWHITE"

.field private static final blacklist DB_VERSION_NEW:I = 0xa

.field private static final blacklist DB_VERSION_NOP_UPGRADE_9:I = 0x9

.field private static final blacklist DB_VERSION_OLD:I = 0x9

.field public static final blacklist DUMP:I = 0x2

.field public static final blacklist EXCEPTION_TYPE:Ljava/lang/String; = "exception_type"

.field public static final blacklist FREQUENCY:Ljava/lang/String; = "frequency"

.field public static final blacklist HISTORY_ID:Ljava/lang/String; = "history_id"

.field public static final blacklist IELIST:I = 0x1

.field public static final blacklist IES:Ljava/lang/String; = "ies"

.field public static final blacklist IE_SAVED_TIME:Ljava/lang/String; = "time_saved"

.field public static final blacklist MAC_ADDR:Ljava/lang/String; = "mac_addr"

.field public static final blacklist REASON_STR:Ljava/lang/String; = "reason"

.field public static final blacklist SEEN_TIME:Ljava/lang/String; = "seen_time"

.field public static final blacklist SSID_NAME:Ljava/lang/String; = "ssid_name"

.field private static final blacklist TAG:Ljava/lang/String; = "MobileWipsFrameworkProvider"

.field public static final blacklist TIME_STAMP:Ljava/lang/String; = "time_stamp"

.field public static final blacklist WHITELIST:I

.field private static final blacklist mDBCreationSQL:[Ljava/lang/String;

.field private static final blacklist mDBDeleteSQL:[Ljava/lang/String;

.field private static final blacklist sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private blacklist mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetmDBCreationSQL()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider;->mDBCreationSQL:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmDBDeleteSQL()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider;->mDBDeleteSQL:[Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 4

    const-string v0, "content://com.samsung.server.wifi.mwips/whitelist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider;->CONTENT_URI_WHITELIST:Landroid/net/Uri;

    const-string v0, "content://com.samsung.server.wifi.mwips/ielist"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider;->CONTENT_URI_IELIST:Landroid/net/Uri;

    const-string v0, "content://com.samsung.server.wifi.mwips/dump"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider;->CONTENT_URI_DUMP:Landroid/net/Uri;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "CREATE TABLE IF NOT EXISTS MobileWIPSIE(history_id INTEGER PRIMARY KEY AUTOINCREMENT,mac_addr TEXT, frequency INTEGER, time_stamp LONG, seen_time LONG, ies varbinary, time_saved LONG, beacon_tsf LONG, beacon_seen LONG ) "

    const-string v2, "CREATE TABLE IF NOT EXISTS MobileWIPSDUMP(history_id INTEGER PRIMARY KEY AUTOINCREMENT,time_stamp LONG, attack_type Integer, reason TEXT) "

    const-string v3, "CREATE TABLE IF NOT EXISTS MobileWIPSWHITE(history_id INTEGER PRIMARY KEY AUTOINCREMENT,mac_addr TEXT, exception_type Integer DEFAULT 0, ssid_name TEXT ) "

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider;->mDBCreationSQL:[Ljava/lang/String;

    const-string v1, "DROP TABLE IF EXISTS MobileWIPSIE"

    const-string v2, "DROP TABLE IF EXISTS MobileWIPSDUMP"

    const-string v3, "DROP TABLE IF EXISTS MobileWIPSWHITE"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider;->mDBDeleteSQL:[Ljava/lang/String;

    const-string/jumbo v1, "whitelist"

    const/4 v2, 0x0

    const-string v3, "com.samsung.server.wifi.mwips"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "ielist"

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v1, "dump"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    sget-object p0, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    if-nez p0, :cond_0

    const-string/jumbo p0, "whitelist"

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "calling getType on an unknown URI: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MobileWipsFrameworkProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist onCreate()Z
    .locals 3

    new-instance v0, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider$DatabaseHelper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    const/4 p0, 0x1

    return p0
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const/4 v2, 0x0

    const-string v8, "MobileWipsFrameworkProvider"

    if-eqz p3, :cond_0

    const-string v4, "drop"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "drop allowlist table"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0xa

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider$DatabaseHelper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object v2

    :cond_0
    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v5, "sURI macher match"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/samsung/android/wifi/mobilewips/SemMobileWipsProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    if-eqz v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "querying unknown URI: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    const-string v1, "MobileWIPSWHITE"

    invoke-virtual {v4, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v1, "allowlist"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v7, p5

    move-object v1, v0

    move-object v0, v4

    move-object v4, p4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v1, "query failed in downloads database"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
