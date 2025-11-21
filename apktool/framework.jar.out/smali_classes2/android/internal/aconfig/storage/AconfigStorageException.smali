.class public Landroid/internal/aconfig/storage/AconfigStorageException;
.super Ljava/lang/RuntimeException;
.source "AconfigStorageException.java"


# static fields
.field public static final blacklist ERROR_CANNOT_READ_STORAGE_FILE:I = 0x4

.field public static final blacklist ERROR_CONTAINER_NOT_FOUND:I = 0x3

.field public static final blacklist ERROR_FILE_FINGERPRINT_MISMATCH:I = 0x5

.field public static final blacklist ERROR_GENERIC:I = 0x0

.field public static final blacklist ERROR_PACKAGE_NOT_FOUND:I = 0x2

.field public static final blacklist ERROR_STORAGE_SYSTEM_NOT_FOUND:I = 0x1


# instance fields
.field private final blacklist mErrorCode:I


# direct methods
.method public constructor blacklist <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Landroid/internal/aconfig/storage/AconfigStorageException;->mErrorCode:I

    return-void
.end method

.method public constructor blacklist <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput p1, p0, Landroid/internal/aconfig/storage/AconfigStorageException;->mErrorCode:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Landroid/internal/aconfig/storage/AconfigStorageException;->mErrorCode:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput p1, p0, Landroid/internal/aconfig/storage/AconfigStorageException;->mErrorCode:I

    return-void
.end method

.method private blacklist errorString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/internal/aconfig/storage/AconfigStorageException;->mErrorCode:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<Unknown error code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/internal/aconfig/storage/AconfigStorageException;->mErrorCode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "ERROR_FILE_FINGERPRINT_MISMATCH"

    return-object p0

    :cond_1
    const-string p0, "ERROR_CANNOT_READ_STORAGE_FILE"

    return-object p0

    :cond_2
    const-string p0, "ERROR_CONTAINER_NOT_FOUND"

    return-object p0

    :cond_3
    const-string p0, "ERROR_PACKAGE_NOT_FOUND"

    return-object p0

    :cond_4
    const-string p0, "ERROR_STORAGE_SYSTEM_NOT_FOUND"

    return-object p0

    :cond_5
    const-string p0, "ERROR_GENERIC"

    return-object p0
.end method


# virtual methods
.method public blacklist getErrorCode()I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/AconfigStorageException;->mErrorCode:I

    return p0
.end method

.method public whitelist test-api getMessage()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Landroid/internal/aconfig/storage/AconfigStorageException;->errorString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
