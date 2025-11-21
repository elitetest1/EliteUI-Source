.class public abstract Landroid/database/ErrorHandler;
.super Ljava/lang/Object;
.source "ErrorHandler.java"


# static fields
.field public static final blacklist TAG:Ljava/lang/String; = "ErrorHandler"


# instance fields
.field public blacklist mDbDump:Landroid/database/sqlite/SQLiteDump;


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/database/sqlite/SQLiteDump;->DUMMY_DB_DUMP:Landroid/database/sqlite/SQLiteDump;

    iput-object v0, p0, Landroid/database/ErrorHandler;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    return-void
.end method


# virtual methods
.method blacklist diagnoseError(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->diagnoseError()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/database/ErrorHandler;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    const-string p1, "!@ Diagnose Succeed."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ErrorHandler"

    invoke-virtual {p0, v0, p1}, Landroid/database/sqlite/SQLiteDump;->logAndDump(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist handleError(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/database/ErrorHandler;->preHandleError(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/database/ErrorHandler;->diagnoseError(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Landroid/database/ErrorHandler;->recoverError(Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->setDatabaseIsCorrupted(Z)V

    invoke-virtual {p0, p1, p2}, Landroid/database/ErrorHandler;->postHandleError(Landroid/database/sqlite/SQLiteDatabase;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Landroid/database/ErrorHandler;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    const-string p2, "!@ Exception in error handling"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "ErrorHandler"

    invoke-virtual {p0, p2, p1}, Landroid/database/sqlite/SQLiteDump;->logAndDump(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method blacklist postHandleError(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0

    return-void
.end method

.method abstract blacklist preHandleError(Landroid/database/sqlite/SQLiteDatabase;)Z
.end method

.method blacklist recoverError(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->doRecovery()Z

    move-result p1

    const-string v0, "ErrorHandler"

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/database/ErrorHandler;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    const-string p1, "!@ Recovery Succeed."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/database/sqlite/SQLiteDump;->logAndDump(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Landroid/database/ErrorHandler;->mDbDump:Landroid/database/sqlite/SQLiteDump;

    const-string p1, "!@ Recovery Failed."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/database/sqlite/SQLiteDump;->logAndDump(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return p0
.end method
