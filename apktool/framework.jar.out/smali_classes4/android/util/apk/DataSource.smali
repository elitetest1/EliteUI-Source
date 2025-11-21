.class interface abstract Landroid/util/apk/DataSource;
.super Ljava/lang/Object;
.source "DataSource.java"


# direct methods
.method public static blacklist create(Ljava/io/FileDescriptor;JJ)Landroid/util/apk/DataSource;
    .locals 8

    invoke-static {p0}, Landroid/os/incremental/IncrementalManager;->isIncrementalFileFd(Ljava/io/FileDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/util/apk/ReadFileDataSource;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Landroid/util/apk/ReadFileDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    return-object v1

    :cond_0
    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    new-instance p0, Landroid/util/apk/MemoryMappedFileDataSource;

    move-wide v6, v5

    move-wide v4, v3

    move-object v3, v2

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Landroid/util/apk/MemoryMappedFileDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    return-object v2
.end method


# virtual methods
.method public abstract blacklist feedIntoDataDigester(Landroid/util/apk/DataDigester;JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/DigestException;
        }
    .end annotation
.end method

.method public abstract blacklist size()J
.end method
