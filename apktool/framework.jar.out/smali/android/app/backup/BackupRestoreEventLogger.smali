.class public final Landroid/app/backup/BackupRestoreEventLogger;
.super Ljava/lang/Object;
.source "BackupRestoreEventLogger.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;,
        Landroid/app/backup/BackupRestoreEventLogger$BackupRestoreError;,
        Landroid/app/backup/BackupRestoreEventLogger$BackupRestoreDataType;
    }
.end annotation


# static fields
.field public static final blacklist DATA_TYPES_ALLOWED:I = 0x96

.field private static final blacklist TAG:Ljava/lang/String; = "BackupRestoreEventLogger"


# instance fields
.field private final blacklist mHashDigest:Ljava/security/MessageDigest;

.field private final blacklist mOperationType:I

.field private final blacklist mResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    iput p1, p0, Landroid/app/backup/BackupRestoreEventLogger;->mOperationType:I

    :try_start_0
    const-string p1, "SHA-256"

    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Couldn\'t create MessageDigest for hash computation"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Landroid/app/backup/BackupRestoreEventLogger;->mHashDigest:Ljava/security/MessageDigest;

    return-void
.end method

.method private blacklist getDataTypeResult(ILjava/lang/String;)Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;
    .locals 3

    iget v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mOperationType:I

    const/4 v1, 0x0

    const-string v2, "BackupRestoreEventLogger"

    if-eq p1, v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Operation type mismatch: logger created for "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mOperationType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", trying to log for "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    iget-object p1, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    invoke-direct {p0}, Landroid/app/backup/BackupRestoreEventLogger;->getDataTypesAllowed()I

    move-result v0

    if-ne p1, v0, :cond_1

    const-string p0, "Logger is full, ignoring new data type"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    iget-object p1, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    new-instance v0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    invoke-direct {v0, p2}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    return-object p0
.end method

.method private blacklist getDataTypesAllowed()I
    .locals 0

    invoke-static {}, Lcom/android/server/backup/Flags;->enableIncreaseDatatypesForAgentLogging()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x96

    return p0

    :cond_0
    const/16 p0, 0xf

    return p0
.end method

.method private blacklist getMetaDataHash(Ljava/lang/String;)[B
    .locals 1

    iget-object p0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mHashDigest:Ljava/security/MessageDigest;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method private blacklist logFailure(ILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/backup/BackupRestoreEventLogger;->getDataTypeResult(ILjava/lang/String;)Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmFailCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)I

    move-result p1

    add-int/2addr p1, p3

    invoke-static {p0, p1}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fputmFailCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;I)V

    if-eqz p4, :cond_1

    invoke-static {p0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmErrors(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p2, Landroid/app/AppOpsManager$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Landroid/app/AppOpsManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {p0, p4, p1, p2}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist logMetaData(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mHashDigest:Ljava/security/MessageDigest;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/app/backup/BackupRestoreEventLogger;->getDataTypeResult(ILjava/lang/String;)Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    move-result-object p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p3}, Landroid/app/backup/BackupRestoreEventLogger;->getMetaDataHash(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p1, p0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fputmMetadataHash(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;[B)V

    return-void
.end method

.method private blacklist logSuccess(ILjava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/app/backup/BackupRestoreEventLogger;->getDataTypeResult(ILjava/lang/String;)Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmSuccessCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)I

    move-result v0

    add-int/2addr v0, p3

    invoke-static {p1, v0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fputmSuccessCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;I)V

    iget-object p0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static blacklist toString(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "result cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmDataType(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", successCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmSuccessCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", failCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmFailCount(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmErrors(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ", errors="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmErrors(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-static {p0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmMetadataHash(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ", metadataHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;->-$$Nest$fgetmMetadataHash(Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist clearData()V
    .locals 0

    iget-object p0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public blacklist getLoggingResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/backup/BackupRestoreEventLogger$DataTypeResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mResults:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getOperationType()I
    .locals 0

    iget p0, p0, Landroid/app/backup/BackupRestoreEventLogger;->mOperationType:I

    return p0
.end method

.method public whitelist logBackupMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/backup/BackupRestoreEventLogger;->logMetaData(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public whitelist logItemsBackedUp(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/backup/BackupRestoreEventLogger;->logSuccess(ILjava/lang/String;I)V

    return-void
.end method

.method public whitelist logItemsBackupFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/app/backup/BackupRestoreEventLogger;->logFailure(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public whitelist logItemsRestoreFailed(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/app/backup/BackupRestoreEventLogger;->logFailure(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public whitelist logItemsRestored(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/app/backup/BackupRestoreEventLogger;->logSuccess(ILjava/lang/String;I)V

    return-void
.end method

.method public whitelist logRestoreMetadata(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Landroid/app/backup/BackupRestoreEventLogger;->logMetaData(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
