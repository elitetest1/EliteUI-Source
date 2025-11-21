.class public Landroid/internal/aconfig/storage/StorageFileProvider;
.super Ljava/lang/Object;
.source "StorageFileProvider.java"


# static fields
.field private static final blacklist DEFAULT_BOOT_PATH:Ljava/lang/String; = "/metadata/aconfig/boot/"

.field private static final blacklist DEFAULT_INSTANCE:Landroid/internal/aconfig/storage/StorageFileProvider;

.field private static final blacklist DEFAULT_MAP_PATH:Ljava/lang/String; = "/metadata/aconfig/maps/"

.field private static final blacklist FMAP_FILE_EXT:Ljava/lang/String; = ".flag.map"

.field private static final blacklist PMAP_FILE_EXT:Ljava/lang/String; = ".package.map"

.field private static final blacklist VAL_FILE_EXT:Ljava/lang/String; = ".val"


# instance fields
.field private final blacklist mBootPath:Ljava/lang/String;

.field private final blacklist mMapPath:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/internal/aconfig/storage/StorageFileProvider;

    const-string v1, "/metadata/aconfig/maps/"

    const-string v2, "/metadata/aconfig/boot/"

    invoke-direct {v0, v1, v2}, Landroid/internal/aconfig/storage/StorageFileProvider;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/internal/aconfig/storage/StorageFileProvider;->DEFAULT_INSTANCE:Landroid/internal/aconfig/storage/StorageFileProvider;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/internal/aconfig/storage/StorageFileProvider;->mMapPath:Ljava/lang/String;

    iput-object p2, p0, Landroid/internal/aconfig/storage/StorageFileProvider;->mBootPath:Ljava/lang/String;

    return-void
.end method

.method public static blacklist getDefaultProvider()Landroid/internal/aconfig/storage/StorageFileProvider;
    .locals 1

    sget-object v0, Landroid/internal/aconfig/storage/StorageFileProvider;->DEFAULT_INSTANCE:Landroid/internal/aconfig/storage/StorageFileProvider;

    return-object v0
.end method

.method private static blacklist mapStorageFile(Ljava/nio/file/Path;Landroid/internal/aconfig/storage/FileType;)Ljava/nio/MappedByteBuffer;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/nio/file/OpenOption;

    sget-object v2, Ljava/nio/file/StandardOpenOption;->READ:Ljava/nio/file/StandardOpenOption;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {p0, v0}, Ljava/nio/channels/FileChannel;->open(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/nio/channels/FileChannel;

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

    invoke-static {v4}, Landroid/internal/aconfig/storage/StorageFileProvider;->quietlyDispose(Ljava/io/Closeable;)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    move-object v1, v4

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_0
    :try_start_2
    new-instance v2, Landroid/internal/aconfig/storage/AconfigStorageException;

    const-string v3, "Fail to mmap storage %s file %s"

    invoke-virtual {p1}, Landroid/internal/aconfig/storage/FileType;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x4

    invoke-direct {v2, p1, p0, v0}, Landroid/internal/aconfig/storage/AconfigStorageException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    invoke-static {v1}, Landroid/internal/aconfig/storage/StorageFileProvider;->quietlyDispose(Ljava/io/Closeable;)V

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
.method public blacklist getFlagTable(Ljava/lang/String;)Landroid/internal/aconfig/storage/FlagTable;
    .locals 1

    iget-object p0, p0, Landroid/internal/aconfig/storage/StorageFileProvider;->mMapPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".flag.map"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    sget-object p1, Landroid/internal/aconfig/storage/FileType;->FLAG_MAP:Landroid/internal/aconfig/storage/FileType;

    invoke-static {p0, p1}, Landroid/internal/aconfig/storage/StorageFileProvider;->mapStorageFile(Ljava/nio/file/Path;Landroid/internal/aconfig/storage/FileType;)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    invoke-static {p0}, Landroid/internal/aconfig/storage/FlagTable;->fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/FlagTable;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getFlagValueList(Ljava/lang/String;)Landroid/internal/aconfig/storage/FlagValueList;
    .locals 1

    iget-object p0, p0, Landroid/internal/aconfig/storage/StorageFileProvider;->mBootPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".val"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    sget-object p1, Landroid/internal/aconfig/storage/FileType;->FLAG_VAL:Landroid/internal/aconfig/storage/FileType;

    invoke-static {p0, p1}, Landroid/internal/aconfig/storage/StorageFileProvider;->mapStorageFile(Ljava/nio/file/Path;Landroid/internal/aconfig/storage/FileType;)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    invoke-static {p0}, Landroid/internal/aconfig/storage/FlagValueList;->fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/FlagValueList;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getPackageTable(Ljava/lang/String;)Landroid/internal/aconfig/storage/PackageTable;
    .locals 1

    iget-object p0, p0, Landroid/internal/aconfig/storage/StorageFileProvider;->mMapPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".package.map"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    sget-object p1, Landroid/internal/aconfig/storage/FileType;->PACKAGE_MAP:Landroid/internal/aconfig/storage/FileType;

    invoke-static {p0, p1}, Landroid/internal/aconfig/storage/StorageFileProvider;->mapStorageFile(Ljava/nio/file/Path;Landroid/internal/aconfig/storage/FileType;)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    invoke-static {p0}, Landroid/internal/aconfig/storage/PackageTable;->fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/PackageTable;

    move-result-object p0

    return-object p0
.end method

.method public blacklist listContainers([Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :try_start_0
    iget-object p1, p0, Landroid/internal/aconfig/storage/StorageFileProvider;->mMapPath:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {p1, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    const-string v3, "*.package.map"

    invoke-static {p1, v3}, Ljava/nio/file/Files;->newDirectoryStream(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/DirectoryStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/DirectoryStream;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/file/Path;

    invoke-interface {v3}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0xc

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/nio/file/NoSuchFileException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Landroid/internal/aconfig/storage/AconfigStorageException;

    iget-object p0, p0, Landroid/internal/aconfig/storage/StorageFileProvider;->mMapPath:Ljava/lang/String;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Fail to list map files in path %s"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Landroid/internal/aconfig/storage/AconfigStorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    :cond_1
    return-object v0
.end method
