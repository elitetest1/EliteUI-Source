.class public Landroid/os/flagging/PlatformAconfigPackage;
.super Ljava/lang/Object;
.source "PlatformAconfigPackage.java"


# static fields
.field private static final blacklist BOOT_PATH:Ljava/lang/String; = "/metadata/aconfig/boot/"

.field private static final blacklist MAP_PATH:Ljava/lang/String; = "/metadata/aconfig/maps/"

.field public static final greylist PLATFORM_PACKAGE_MAP_FILES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "PlatformAconfigPackage"

.field static final blacklist sStorageFilesCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mFlagTable:Landroid/internal/aconfig/storage/FlagTable;

.field private blacklist mFlagValueList:Landroid/internal/aconfig/storage/FlagValueList;

.field private blacklist mPackageBooleanStartOffset:I

.field private blacklist mPackageId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 7

    const-string v0, "/metadata/aconfig/maps/"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/os/flagging/PlatformAconfigPackage;->sStorageFilesCache:Ljava/util/Map;

    const-string/jumbo v1, "vendor.package.map"

    const-string/jumbo v2, "product.package.map"

    const-string/jumbo v3, "system.package.map"

    const-string/jumbo v4, "system_ext.package.map"

    invoke-static {v3, v4, v1, v2}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Landroid/os/flagging/PlatformAconfigPackage;->PLATFORM_PACKAGE_MAP_FILES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/flagging/PlatformAconfigPackage;->mapStorageFile(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    invoke-static {v2}, Landroid/internal/aconfig/storage/PackageTable;->fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/PackageTable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/internal/aconfig/storage/PackageTable;->getHeader()Landroid/internal/aconfig/storage/PackageTable$Header;

    move-result-object v3

    invoke-virtual {v3}, Landroid/internal/aconfig/storage/PackageTable$Header;->getContainer()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".flag.map"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/flagging/PlatformAconfigPackage;->mapStorageFile(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object v4

    invoke-static {v4}, Landroid/internal/aconfig/storage/FlagTable;->fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/FlagTable;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/metadata/aconfig/boot/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".val"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/flagging/PlatformAconfigPackage;->mapStorageFile(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;

    move-result-object v3

    invoke-static {v3}, Landroid/internal/aconfig/storage/FlagValueList;->fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/FlagValueList;

    move-result-object v3

    new-instance v5, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;

    invoke-direct {v5, v2, v4, v3}, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;-><init>(Landroid/internal/aconfig/storage/PackageTable;Landroid/internal/aconfig/storage/FlagTable;Landroid/internal/aconfig/storage/FlagValueList;)V

    invoke-virtual {v2}, Landroid/internal/aconfig/storage/PackageTable;->getPackageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Landroid/os/flagging/PlatformAconfigPackage;->sStorageFilesCache:Ljava/util/Map;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "PlatformAconfigPackage"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/os/flagging/PlatformAconfigPackage;->mPackageBooleanStartOffset:I

    iput v0, p0, Landroid/os/flagging/PlatformAconfigPackage;->mPackageId:I

    return-void
.end method

.method public static greylist load(Ljava/lang/String;)Landroid/os/flagging/PlatformAconfigPackage;
    .locals 5

    const-string v0, "Fail to create PlatformAconfigPackage: "

    :try_start_0
    new-instance v1, Landroid/os/flagging/PlatformAconfigPackage;

    invoke-direct {v1}, Landroid/os/flagging/PlatformAconfigPackage;-><init>()V

    sget-object v2, Landroid/os/flagging/PlatformAconfigPackage;->sStorageFilesCache:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;

    if-nez v2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v3, v2, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;->packageTable:Landroid/internal/aconfig/storage/PackageTable;

    invoke-virtual {v3, p0}, Landroid/internal/aconfig/storage/PackageTable;->get(Ljava/lang/String;)Landroid/internal/aconfig/storage/PackageTable$Node;

    move-result-object v3

    iget-object v4, v2, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;->flagTable:Landroid/internal/aconfig/storage/FlagTable;

    iput-object v4, v1, Landroid/os/flagging/PlatformAconfigPackage;->mFlagTable:Landroid/internal/aconfig/storage/FlagTable;

    iget-object v2, v2, Landroid/internal/aconfig/storage/TableUtils$StorageFilesBundle;->flagValueList:Landroid/internal/aconfig/storage/FlagValueList;

    iput-object v2, v1, Landroid/os/flagging/PlatformAconfigPackage;->mFlagValueList:Landroid/internal/aconfig/storage/FlagValueList;

    invoke-virtual {v3}, Landroid/internal/aconfig/storage/PackageTable$Node;->getBooleanStartIndex()I

    move-result v2

    iput v2, v1, Landroid/os/flagging/PlatformAconfigPackage;->mPackageBooleanStartOffset:I

    invoke-virtual {v3}, Landroid/internal/aconfig/storage/PackageTable$Node;->getPackageId()I

    move-result v2

    iput v2, v1, Landroid/os/flagging/PlatformAconfigPackage;->mPackageId:I
    :try_end_0
    .catch Landroid/internal/aconfig/storage/AconfigStorageException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Landroid/os/flagging/AconfigStorageReadException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {v2, v0, p0, v1}, Landroid/os/flagging/AconfigStorageReadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Landroid/os/flagging/AconfigStorageReadException;

    invoke-virtual {v1}, Landroid/internal/aconfig/storage/AconfigStorageException;->getErrorCode()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, v3, p0, v1}, Landroid/os/flagging/AconfigStorageReadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist mapStorageFile(Ljava/lang/String;)Ljava/nio/MappedByteBuffer;
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    invoke-static {p0, v2}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/nio/file/OpenOption;

    sget-object v3, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    aput-object v3, v2, v0

    invoke-static {p0, v2}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v8

    const-wide/16 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v4}, Landroid/os/flagging/PlatformAconfigPackage;->quietlyDispose(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v1, v4

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    move-object v1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p0, v0

    :goto_0
    :try_start_2
    new-instance v0, Landroid/os/flagging/AconfigStorageReadException;

    const-string v2, "Fail to mmap storage"

    const/4 v3, 0x4

    invoke-direct {v0, v3, v2, p0}, Landroid/os/flagging/AconfigStorageReadException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    invoke-static {v1}, Landroid/os/flagging/PlatformAconfigPackage;->quietlyDispose(Ljava/io/Closeable;)V

    throw p0
.end method

.method private static blacklist quietlyDispose(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public greylist getBooleanFlagValue(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Landroid/os/flagging/PlatformAconfigPackage;->mFlagTable:Landroid/internal/aconfig/storage/FlagTable;

    iget v1, p0, Landroid/os/flagging/PlatformAconfigPackage;->mPackageId:I

    invoke-virtual {v0, v1, p1}, Landroid/internal/aconfig/storage/FlagTable;->get(ILjava/lang/String;)Landroid/internal/aconfig/storage/FlagTable$Node;

    move-result-object p1

    if-nez p1, :cond_0

    return p2

    :cond_0
    iget-object p2, p0, Landroid/os/flagging/PlatformAconfigPackage;->mFlagValueList:Landroid/internal/aconfig/storage/FlagValueList;

    invoke-virtual {p1}, Landroid/internal/aconfig/storage/FlagTable$Node;->getFlagIndex()I

    move-result p1

    iget p0, p0, Landroid/os/flagging/PlatformAconfigPackage;->mPackageBooleanStartOffset:I

    add-int/2addr p1, p0

    invoke-virtual {p2, p1}, Landroid/internal/aconfig/storage/FlagValueList;->getBoolean(I)Z

    move-result p0

    return p0
.end method
