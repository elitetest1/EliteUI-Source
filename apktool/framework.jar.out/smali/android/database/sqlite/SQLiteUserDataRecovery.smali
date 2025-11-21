.class public final Landroid/database/sqlite/SQLiteUserDataRecovery;
.super Ljava/lang/Object;
.source "SQLiteUserDataRecovery.java"


# static fields
.field private static final blacklist RECOVERY_POSTFIX:Ljava/lang/String; = "-recover"

.field private static final blacklist SQLITE_UDR_DUPLICATE:I = 0x300

.field public static final blacklist TAG:Ljava/lang/String; = "SQLiteUDR"


# instance fields
.field private blacklist isWorking:Z

.field private blacklist mDbDump:Landroid/database/sqlite/SQLiteDump;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method public constructor blacklist <init>(Landroid/database/sqlite/SQLiteDump;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->isWorking:Z

    sget-object v0, Landroid/database/sqlite/SQLiteDump;->DUMMY_DB_DUMP:Landroid/database/sqlite/SQLiteDump;

    iput-object p1, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    return-void
.end method

.method private blacklist doRecoveryInner(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 4

    const-string v0, "SQLiteUDR"

    const-string v1, "!@ Back up corrupted DB File : "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "-recover"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1, v2, p2, p3}, Landroid/database/sqlite/SQLiteUserDataRecovery;->nativeDoRecovery(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, v0, p3}, Landroid/database/sqlite/SQLiteDump;->addDumpLog(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/database/DefaultDatabaseErrorHandler;->backupDatabaseFile(Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    return p0

    :cond_0
    const/16 p1, 0x300

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    const-string p2, "Another udr is worked."

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/database/sqlite/SQLiteDump;->logAndDump(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v3

    :catch_0
    move-exception p1

    const/4 p2, 0x3

    invoke-static {v0, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    const-string p2, "Failed to recover database."

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Landroid/database/sqlite/SQLiteDump;->logAndDump(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :cond_2
    invoke-static {v2}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabaseFile(Ljava/lang/String;)Z

    return v3
.end method

.method public static blacklist isDbUdrRecovered(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, ":memory:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/database/sqlite/SQLiteUserDataRecovery;->nativeIsDbUdrRecovered(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static native blacklist nativeDoRecovery(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)I
.end method

.method private static native blacklist nativeIsDbUdrRecovered(Ljava/lang/String;)Z
.end method


# virtual methods
.method public blacklist doRecovery(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string v1, ":memory:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->isWorking:Z

    if-eqz v2, :cond_1

    monitor-exit v1

    return v0

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->isWorking:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteUserDataRecovery;->doRecoveryInner(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p2, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_2
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->isWorking:Z

    monitor-exit p2

    return p1

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    iget-object p2, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_3
    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteUserDataRecovery;->isWorking:Z

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    :cond_2
    :goto_0
    return v0
.end method
