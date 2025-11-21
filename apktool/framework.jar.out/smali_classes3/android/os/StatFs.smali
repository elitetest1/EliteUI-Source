.class public Landroid/os/StatFs;
.super Ljava/lang/Object;
.source "StatFs.java"


# instance fields
.field private greylist-max-r mStat:Landroid/system/StructStatVfs;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/os/StatFs;->doStat(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object p1

    iput-object p1, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    return-void
.end method

.method private static greylist-max-o doStat(Ljava/lang/String;)Landroid/system/StructStatVfs;
    .locals 4

    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->statvfs(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object p0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid path: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist getAvailableBlocks()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, p0, Landroid/system/StructStatVfs;->f_bavail:J

    long-to-int p0, v0

    return p0
.end method

.method public whitelist getAvailableBlocksLong()J
    .locals 2

    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, p0, Landroid/system/StructStatVfs;->f_bavail:J

    return-wide v0
.end method

.method public whitelist getAvailableBytes()J
    .locals 4

    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bavail:J

    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v2, p0, Landroid/system/StructStatVfs;->f_frsize:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist getBlockCount()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, p0, Landroid/system/StructStatVfs;->f_blocks:J

    long-to-int p0, v0

    return p0
.end method

.method public whitelist getBlockCountLong()J
    .locals 2

    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, p0, Landroid/system/StructStatVfs;->f_blocks:J

    return-wide v0
.end method

.method public whitelist getBlockSize()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, p0, Landroid/system/StructStatVfs;->f_frsize:J

    long-to-int p0, v0

    return p0
.end method

.method public whitelist getBlockSizeLong()J
    .locals 2

    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, p0, Landroid/system/StructStatVfs;->f_frsize:J

    return-wide v0
.end method

.method public whitelist getFreeBlocks()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, p0, Landroid/system/StructStatVfs;->f_bfree:J

    long-to-int p0, v0

    return p0
.end method

.method public whitelist getFreeBlocksLong()J
    .locals 2

    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, p0, Landroid/system/StructStatVfs;->f_bfree:J

    return-wide v0
.end method

.method public whitelist getFreeBytes()J
    .locals 4

    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_bfree:J

    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v2, p0, Landroid/system/StructStatVfs;->f_frsize:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getFreeFileNode()J
    .locals 2

    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, p0, Landroid/system/StructStatVfs;->f_ffree:J

    return-wide v0
.end method

.method public whitelist getTotalBytes()J
    .locals 4

    iget-object v0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, v0, Landroid/system/StructStatVfs;->f_blocks:J

    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v2, p0, Landroid/system/StructStatVfs;->f_frsize:J

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public blacklist getTotalFileNode()J
    .locals 2

    iget-object p0, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    iget-wide v0, p0, Landroid/system/StructStatVfs;->f_files:J

    return-wide v0
.end method

.method public whitelist restat(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Landroid/os/StatFs;->doStat(Ljava/lang/String;)Landroid/system/StructStatVfs;

    move-result-object p1

    iput-object p1, p0, Landroid/os/StatFs;->mStat:Landroid/system/StructStatVfs;

    return-void
.end method
