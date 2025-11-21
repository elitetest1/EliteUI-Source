.class public Landroid/os/flagging/PlatformAconfigPackageInternal;
.super Ljava/lang/Object;
.source "PlatformAconfigPackageInternal.java"


# instance fields
.field private final blacklist mFlagValueList:Landroid/internal/aconfig/storage/FlagValueList;

.field private final blacklist mPackageBooleanStartOffset:I


# direct methods
.method private constructor blacklist <init>(Landroid/internal/aconfig/storage/FlagValueList;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/flagging/PlatformAconfigPackageInternal;->mFlagValueList:Landroid/internal/aconfig/storage/FlagValueList;

    iput p2, p0, Landroid/os/flagging/PlatformAconfigPackageInternal;->mPackageBooleanStartOffset:I

    return-void
.end method

.method public static greylist load(Ljava/lang/String;J)Landroid/os/flagging/PlatformAconfigPackageInternal;
    .locals 5

    sget-object v0, Landroid/os/flagging/PlatformAconfigPackage;->sStorageFilesCache:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;

    const-string/jumbo v1, "package "

    if-eqz v0, :cond_2

    iget-object v2, v0, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;->packageTable:Landroid/internal/aconfig/storage/PackageTable;

    invoke-virtual {v2, p0}, Landroid/internal/aconfig/storage/PackageTable;->get(Ljava/lang/String;)Landroid/internal/aconfig/storage/PackageTable$Node;

    move-result-object v2

    iget-object v0, v0, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;->flagValueList:Landroid/internal/aconfig/storage/FlagValueList;

    invoke-virtual {v2}, Landroid/internal/aconfig/storage/PackageTable$Node;->hasPackageFingerprint()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/internal/aconfig/storage/PackageTable$Node;->getPackageFingerprint()J

    move-result-wide v3

    cmp-long p1, p1, v3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/internal/aconfig/storage/AconfigStorageException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "fingerprint doesn\'t match the one on device"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x5

    invoke-direct {p1, p2, p0}, Landroid/internal/aconfig/storage/AconfigStorageException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    new-instance p0, Landroid/os/flagging/PlatformAconfigPackageInternal;

    invoke-virtual {v2}, Landroid/internal/aconfig/storage/PackageTable$Node;->getBooleanStartIndex()I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/os/flagging/PlatformAconfigPackageInternal;-><init>(Landroid/internal/aconfig/storage/FlagValueList;I)V

    return-object p0

    :cond_2
    new-instance p1, Landroid/internal/aconfig/storage/AconfigStorageException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " cannot be found on the device"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x2

    invoke-direct {p1, p2, p0}, Landroid/internal/aconfig/storage/AconfigStorageException;-><init>(ILjava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public greylist getBooleanFlagValue(I)Z
    .locals 1

    iget-object v0, p0, Landroid/os/flagging/PlatformAconfigPackageInternal;->mFlagValueList:Landroid/internal/aconfig/storage/FlagValueList;

    iget p0, p0, Landroid/os/flagging/PlatformAconfigPackageInternal;->mPackageBooleanStartOffset:I

    add-int/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/internal/aconfig/storage/FlagValueList;->getBoolean(I)Z

    move-result p0

    return p0
.end method
