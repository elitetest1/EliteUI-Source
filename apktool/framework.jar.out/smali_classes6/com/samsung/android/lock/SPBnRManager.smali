.class public final Lcom/samsung/android/lock/SPBnRManager;
.super Ljava/lang/Object;
.source "SPBnRManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lock/SPBnRManager$BnRMode;,
        Lcom/samsung/android/lock/SPBnRManager$BnRData;
    }
.end annotation


# static fields
.field private static blacklist BNR_LIST:[Ljava/lang/String; = null

.field private static final blacklist DEBUG:Z

.field private static final blacklist PASSWORD_DATA_NAME:Ljava/lang/String; = "pwd"

.field private static final blacklist PASSWORD_METRICS_NAME:Ljava/lang/String; = "metrics"

.field private static final blacklist SECDISCARDABLE_NAME:Ljava/lang/String; = "secdis"

.field private static final blacklist SPBLOB_BACKUP_DIRECTORY:Ljava/lang/String; = "/data/sec_backup_de/"

.field private static final blacklist SP_BLOB_NAME:Ljava/lang/String; = "spblob"

.field private static final blacklist SP_HANDLE_NAME:Ljava/lang/String; = "handle"

.field private static final blacklist SYNTHETIC_PASSWORD_DIRECTORY:Ljava/lang/String; = "spblob/"

.field private static final blacklist TAG:Ljava/lang/String; = "SPBnRManager"

.field private static final blacklist WEAVER_SLOT_NAME:Ljava/lang/String; = "weaver"

.field private static blacklist mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

.field private static blacklist sBnRManagedFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/lock/SPBnRManager$BnRData;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sRemoveFiles:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/samsung/android/lock/SPBnRManager$BnRData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/lock/LsConstants;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/lock/SPBnRManager;->DEBUG:Z

    sget-object v0, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->FsVerity:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    sput-object v0, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/samsung/android/lock/SPBnRManager;->sBnRManagedFiles:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/samsung/android/lock/SPBnRManager;->sRemoveFiles:Ljava/util/Queue;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist addDeleteList(IJLjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    sget-object v1, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->None:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    const-string v2, "SPBnRManager"

    if-ne v0, v1, :cond_0

    sget-boolean p0, Lcom/samsung/android/lock/SPBnRManager;->DEBUG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "addDeleteFile skipped. mode is "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/lock/SPBnRManager$BnRData;->create(IJLjava/lang/String;)Lcom/samsung/android/lock/SPBnRManager$BnRData;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/lock/SPBnRManager;->sRemoveFiles:Ljava/util/Queue;

    invoke-interface {p1, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    sget-boolean p1, Lcom/samsung/android/lock/SPBnRManager;->DEBUG:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/lock/SPBnRManager$BnRData;->getFileName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Added [%s] for delete"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static blacklist addManagedFile(IJLjava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    sget-object v1, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->None:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    const-string v2, "SPBnRManager"

    if-ne v0, v1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "addManagedFile skipped. mode is "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/lock/SPBnRManager$BnRData;->create(IJLjava/lang/String;)Lcom/samsung/android/lock/SPBnRManager$BnRData;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/lock/SPBnRManager;->sBnRManagedFiles:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean p1, Lcom/samsung/android/lock/SPBnRManager;->DEBUG:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/lock/SPBnRManager$BnRData;->getFileName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Added [%s] for BnR"

    invoke-static {p1, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static blacklist addManagedFilesByProtectorId(IJ)V
    .locals 3

    sget-object v0, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    sget-object v1, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->None:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    if-ne v0, v1, :cond_0

    sget-boolean p0, Lcom/samsung/android/lock/SPBnRManager;->DEBUG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "addManagedFilesByProtectorId skipped. mode is "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SPBnRManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/lock/SPBnRManager;->BNR_LIST:[Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/lock/SPBnRManager;->BNR_LIST:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-static {p0, p1, p2, v1}, Lcom/samsung/android/lock/SPBnRManager;->addManagedFile(IJLjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static blacklist checkIntegrity()Z
    .locals 10

    sget-object v0, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    sget-object v1, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->None:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    const/4 v2, 0x1

    const-string v3, "SPBnRManager"

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/samsung/android/lock/SPBnRManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkIntegrity not support in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    :cond_1
    sget-object v0, Lcom/samsung/android/lock/SPBnRManager;->sBnRManagedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "checkIntegrity failed! list is empty!"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    sget-boolean v0, Lcom/samsung/android/lock/SPBnRManager;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "checkIntegrity start!"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    sget-object v5, Lcom/samsung/android/lock/SPBnRManager;->sBnRManagedFiles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_a

    sget-object v5, Lcom/samsung/android/lock/SPBnRManager;->sBnRManagedFiles:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/lock/SPBnRManager$BnRData;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Lcom/samsung/android/lock/SPBnRManager$BnRData;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v5}, Lcom/samsung/android/lock/SPBnRManager$BnRData;->getFileName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Lcom/samsung/android/lock/SPBnRManager$BnRData;->getUserId()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/android/lock/SPBnRManager;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    invoke-virtual {v5}, Lcom/samsung/android/lock/SPBnRManager$BnRData;->getUserId()I

    move-result v9

    invoke-static {v9}, Lcom/samsung/android/lock/SPBnRManager;->getBackupDirectoryForUser(I)Ljava/io/File;

    move-result-object v9

    invoke-direct {v8, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/samsung/android/lock/SPBnRManager;->checkValidState(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v8}, Lcom/samsung/android/lock/SPBnRManager;->checkValidState(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-boolean v5, Lcom/samsung/android/lock/SPBnRManager;->DEBUG:Z

    if-eqz v5, :cond_9

    const-string v5, "[%s] exists on both sides."

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "[%s] does not exist in bak!"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    invoke-static {v8}, Lcom/samsung/android/lock/SPBnRManager;->checkValidState(Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "[%s] does not exist in org!"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    sget-boolean v5, Lcom/samsung/android/lock/SPBnRManager;->DEBUG:Z

    if-eqz v5, :cond_9

    const-string v5, "[%s] does not exist on both sides."

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_8
    :goto_1
    const-string v5, "data is null!"

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-static {v0}, Lcom/samsung/android/lock/SPBnRManager;->startBackuplist(Ljava/util/List;)Z

    move-result v0

    xor-int/2addr v0, v2

    goto :goto_3

    :cond_b
    move v0, v2

    :goto_3
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {v4}, Lcom/samsung/android/lock/SPBnRManager;->startRestorelist(Ljava/util/List;)Z

    move-result v0

    xor-int/2addr v0, v2

    :cond_c
    return v0
.end method

.method private static blacklist checkValidState(Ljava/io/File;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    sget-object v2, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->None:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    const/4 v3, 0x1

    if-eq v0, v2, :cond_2

    sget-object v0, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    sget-object v2, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->Copy:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    if-ne v0, v2, :cond_1

    goto :goto_2

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "r"

    invoke-direct {v0, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int p0, v4

    new-array v2, p0, [B

    invoke-virtual {v0, v2, v1, p0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkValidState(), Cannot read file "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SPBnRManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([B)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    :cond_2
    :goto_2
    return v3
.end method

.method private static blacklist clearManagedFiles()V
    .locals 1

    sget-object v0, Lcom/samsung/android/lock/SPBnRManager;->sBnRManagedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static blacklist deleteBackup(IJ)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    sget-object v1, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->None:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    if-ne v0, v1, :cond_1

    sget-boolean p0, Lcom/samsung/android/lock/SPBnRManager;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "deleteBackup skipped. mode is "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SPBnRManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    sget-object v0, Lcom/samsung/android/lock/SPBnRManager;->sRemoveFiles:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    sget-object v0, Lcom/samsung/android/lock/SPBnRManager;->BNR_LIST:[Ljava/lang/String;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/android/lock/SPBnRManager;->BNR_LIST:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    aget-object v1, v1, v0

    invoke-static {p0, p1, p2, v1}, Lcom/samsung/android/lock/SPBnRManager;->addDeleteList(IJLjava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/samsung/android/lock/SPBnRManager;->sRemoveFiles:Ljava/util/Queue;

    invoke-static {p0}, Lcom/samsung/android/lock/SPBnRManager;->deleteBackuplist(Ljava/util/Queue;)Z

    move-result p0

    return p0
.end method

.method public static blacklist deleteBackup(IJLjava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    sget-object v1, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->None:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    if-ne v0, v1, :cond_1

    sget-boolean p0, Lcom/samsung/android/lock/SPBnRManager;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "deleteBackup skipped. mode is "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SPBnRManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    sget-object v0, Lcom/samsung/android/lock/SPBnRManager;->sRemoveFiles:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/lock/SPBnRManager;->addDeleteList(IJLjava/lang/String;)V

    sget-object p0, Lcom/samsung/android/lock/SPBnRManager;->sRemoveFiles:Ljava/util/Queue;

    invoke-static {p0}, Lcom/samsung/android/lock/SPBnRManager;->deleteBackuplist(Ljava/util/Queue;)Z

    move-result p0

    return p0
.end method

.method private static blacklist deleteBackuplist(Ljava/util/Queue;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lcom/samsung/android/lock/SPBnRManager$BnRData;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    const-string v1, "SPBnRManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "list is empty! check delete list first!"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    move v0, v2

    :goto_0
    invoke-interface {p0}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-interface {p0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/lock/SPBnRManager$BnRData;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/samsung/android/lock/SPBnRManager$BnRData;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Lcom/samsung/android/lock/SPBnRManager$BnRData;->getUserId()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/lock/SPBnRManager;->getBackupDirectoryForUser(I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3}, Lcom/samsung/android/lock/SPBnRManager$BnRData;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/samsung/android/lock/SPBnRManager;->deleteFile(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const-string v3, "data is null!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-interface {p0}, Ljava/util/Queue;->clear()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v3, "[%d] files deleted!"

    invoke-static {v3, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    return v2
.end method

.method public static blacklist deleteFile(Ljava/io/File;)Z
    .locals 5

    const-string v0, "Failed to zeroize "

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "SPBnRManager"

    if-nez v1, :cond_1

    sget-boolean v0, Lcom/samsung/android/lock/SPBnRManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "[%s] is not exist!"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rws"

    invoke-direct {v1, p0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v3, v3, [B

    invoke-virtual {v1, v3}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    sget-object v3, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    sget-object v4, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->FsVerity:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    if-ne v3, v4, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    sget-boolean v0, Lcom/samsung/android/lock/SPBnRManager;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "[%s] delete success!"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist dump(Lcom/android/internal/util/IndentingPrintWriter;I)V
    .locals 6

    invoke-static {p1}, Lcom/samsung/android/lock/SPBnRManager;->getBackupDirectoryForUser(I)Ljava/io/File;

    move-result-object p1

    const-string v0, "Backup [%s]:"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/samsung/android/lock/LsUtil;->timestampToString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%6d %s %s"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "[Not found]"

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method private static blacklist ensureSPBnRDirectoryForUser(I)V
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/lock/SPBnRManager;->getBackupDirectoryForUser(I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "!@ Failed mkdir : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SPBnRManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static blacklist finishWrite(Ljava/io/File;)V
    .locals 1

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/samsung/android/lock/SPBnRManager;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "SPBnRManager"

    const-string v0, "No excute [startWrite()]"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/samsung/android/lock/SPBnRManager;->deleteFile(Ljava/io/File;)Z

    :cond_1
    return-void
.end method

.method private static blacklist getBackupDirectoryForUser(I)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/sec_backup_de/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "spblob/"

    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getBackupPWFilelist(I)Ljava/lang/String;
    .locals 7

    invoke-static {p0}, Lcom/samsung/android/lock/SPBnRManager;->getBackupDirectoryForUser(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "  User %d Backup [Not found]\n"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Backup [%s]:\n"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/samsung/android/lock/LsUtil;->timestampToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v4, v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "  %6d %s %s\n"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getPWFilelist(I)Ljava/lang/String;
    .locals 7

    invoke-static {p0}, Lcom/samsung/android/lock/SPBnRManager;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "  User %d [Not found]\n"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "  User %d [%s]:\n"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/samsung/android/lock/LsUtil;->timestampToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v4, v5, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "  %6d %s %s\n"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo v1, "spblob/"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static blacklist hasFsverity(Ljava/io/File;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    sget-object v1, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->FsVerity:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/security/VerityUtils;->hasFsverity(Ljava/lang/String;)Z

    move-result v0

    sget-boolean v1, Lcom/samsung/android/lock/SPBnRManager;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hasFsverity ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "], "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SPBnRManager"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist init(Z)V
    .locals 3

    if-eqz p0, :cond_0

    const-string/jumbo p0, "weaver"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "secdis"

    :goto_0
    const-string/jumbo v0, "spblob"

    const-string/jumbo v1, "pwd"

    const-string/jumbo v2, "metrics"

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/lock/SPBnRManager;->BNR_LIST:[Ljava/lang/String;

    return-void
.end method

.method public static blacklist resetMode()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/lock/LsUtil;->isDevBuild()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "persist.lock.BnR"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->FsVerity:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    sput-object v0, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->Copy:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    sput-object v0, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    return-void

    :cond_2
    sget-object v0, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->None:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    sput-object v0, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    return-void

    :cond_3
    :goto_0
    sget-boolean v0, Lcom/samsung/android/lock/SPBnRManager;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current mode is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPBnRManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public static blacklist setProtectorIdForBackup(IJJ)V
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/lock/SPBnRManager;->ensureSPBnRDirectoryForUser(I)V

    invoke-static {}, Lcom/samsung/android/lock/SPBnRManager;->clearManagedFiles()V

    const-string v0, "handle"

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/samsung/android/lock/SPBnRManager;->addManagedFile(IJLjava/lang/String;)V

    cmp-long v0, p1, v1

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/lock/SPBnRManager;->addManagedFilesByProtectorId(IJ)V

    cmp-long p1, p3, v1

    if-eqz p1, :cond_0

    invoke-static {p0, p3, p4}, Lcom/samsung/android/lock/SPBnRManager;->addManagedFilesByProtectorId(IJ)V

    :cond_0
    return-void
.end method

.method private static blacklist setUpFsVerity(Ljava/io/File;)V
    .locals 4

    const-string v0, "SPBnRManager"

    const-string v1, "Success to verity-protect "

    invoke-static {p0}, Lcom/samsung/android/lock/SPBnRManager;->hasFsverity(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    sget-object v3, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->FsVerity:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    if-ne v2, v3, :cond_2

    const/high16 v2, 0x10000000

    :try_start_0
    invoke-static {p0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v3

    invoke-static {v3}, Lcom/android/internal/security/VerityUtils;->setUpFsverity(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception v1

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to verity-protect "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public static blacklist startBackup()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    sget-object v1, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->None:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    const-string v2, "SPBnRManager"

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/samsung/android/lock/SPBnRManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startBackup skipped. mode is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    sget-object v0, Lcom/samsung/android/lock/SPBnRManager;->sBnRManagedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "startBackup failed! list is empty!"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_2
    sget-object v0, Lcom/samsung/android/lock/SPBnRManager;->sBnRManagedFiles:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/lock/SPBnRManager;->startBackuplist(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private static blacklist startBackuplist(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/lock/SPBnRManager$BnRData;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SPBnRManager"

    if-eqz v0, :cond_0

    const-string p0, "list is empty! check backup list first!"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_8

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/lock/SPBnRManager$BnRData;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/samsung/android/lock/SPBnRManager$BnRData;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Lcom/samsung/android/lock/SPBnRManager$BnRData;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/lock/SPBnRManager;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/lock/SPBnRManager$BnRData;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Lcom/samsung/android/lock/SPBnRManager$BnRData;->getUserId()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/android/lock/SPBnRManager;->getBackupDirectoryForUser(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v5}, Lcom/samsung/android/lock/SPBnRManager$BnRData;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "[%s] is not exist!"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "[%s] is alread exist! try to overwrite!"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v6, v7}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "[%s] copy failed!"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    sget-boolean v5, Lcom/samsung/android/lock/SPBnRManager;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "[%s] copy success!"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object v5, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    sget-object v8, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->FsVerity:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    if-ne v5, v8, :cond_6

    invoke-static {v6}, Lcom/samsung/android/lock/SPBnRManager;->setUpFsVerity(Ljava/io/File;)V

    invoke-static {v7}, Lcom/samsung/android/lock/SPBnRManager;->setUpFsVerity(Ljava/io/File;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :goto_1
    const-string v5, "data is null!"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    if-lez v4, :cond_9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "SPblobBNR, %d/%d files Backuped!"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_9
    return v1
.end method

.method public static blacklist startRestore()Z
    .locals 3

    sget-object v0, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    sget-object v1, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->None:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    const-string v2, "SPBnRManager"

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startRestore skipped. mode is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Lcom/samsung/android/lock/SPBnRManager;->sBnRManagedFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "startRestore failed! list is empty!"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_1
    sget-object v0, Lcom/samsung/android/lock/SPBnRManager;->sBnRManagedFiles:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/lock/SPBnRManager;->startRestorelist(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private static blacklist startRestorelist(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/lock/SPBnRManager$BnRData;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SPBnRManager"

    if-eqz v0, :cond_1

    sget-boolean p0, Lcom/samsung/android/lock/SPBnRManager;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "list is empty! check restore list first!"

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_8

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/lock/SPBnRManager$BnRData;

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/samsung/android/lock/SPBnRManager$BnRData;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_1

    :cond_2
    new-instance v6, Ljava/io/File;

    invoke-virtual {v5}, Lcom/samsung/android/lock/SPBnRManager$BnRData;->getUserId()I

    move-result v7

    invoke-static {v7}, Lcom/samsung/android/lock/SPBnRManager;->getBackupDirectoryForUser(I)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v5}, Lcom/samsung/android/lock/SPBnRManager$BnRData;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v7, Ljava/io/File;

    invoke-virtual {v5}, Lcom/samsung/android/lock/SPBnRManager$BnRData;->getUserId()I

    move-result v8

    invoke-static {v8}, Lcom/samsung/android/lock/SPBnRManager;->getSyntheticPasswordDirectoryForUser(I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v5}, Lcom/samsung/android/lock/SPBnRManager$BnRData;->getFileName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v8, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "[%s] is not exist!"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "[%s] is alread exist! try to overwrite!"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {v6, v7}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "[%s] copy failed!"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string v5, "[%s] copy success!"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    sget-object v8, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->FsVerity:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    if-ne v5, v8, :cond_6

    invoke-static {v6}, Lcom/samsung/android/lock/SPBnRManager;->setUpFsVerity(Ljava/io/File;)V

    invoke-static {v7}, Lcom/samsung/android/lock/SPBnRManager;->setUpFsVerity(Ljava/io/File;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :goto_1
    const-string v5, "data is null!"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    if-lez v4, :cond_9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "SPblobBNR, %d/%d files Restored!"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/lock/LsLog;->restore(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_9
    return v1
.end method

.method public static blacklist startWrite(Ljava/io/File;)Ljava/io/File;
    .locals 5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "SPBnRManager"

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/lock/SPBnRManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "[%s] is not exist!"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    :cond_1
    sget-object v0, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    sget-object v3, Lcom/samsung/android/lock/SPBnRManager$BnRMode;->FsVerity:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    if-ne v0, v3, :cond_6

    invoke-static {p0}, Lcom/samsung/android/lock/SPBnRManager;->hasFsverity(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".bnr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/samsung/android/lock/SPBnRManager;->DEBUG:Z

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "TemporaryBackup [%s] is deleted"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_4
    invoke-virtual {p0, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v0, "[%s] rename failed!"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_5
    return-object v0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    sget-boolean p0, Lcom/samsung/android/lock/SPBnRManager;->DEBUG:Z

    if-eqz p0, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Current mode is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/samsung/android/lock/SPBnRManager;->mBnRMode:Lcom/samsung/android/lock/SPBnRManager$BnRMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz p0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "hasVerity = "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object v1
.end method
