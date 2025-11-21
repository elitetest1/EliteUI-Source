.class public Landroid/internal/aconfig/storage/FlagTable$Header;
.super Ljava/lang/Object;
.source "FlagTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/aconfig/storage/FlagTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field private blacklist mBucketOffset:I

.field private blacklist mContainer:Ljava/lang/String;

.field private blacklist mFileSize:I

.field private blacklist mFileType:Landroid/internal/aconfig/storage/FileType;

.field private blacklist mNodeOffset:I

.field private blacklist mNumFlags:I

.field private blacklist mVersion:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBucketOffset(Landroid/internal/aconfig/storage/FlagTable$Header;)I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/FlagTable$Header;->mBucketOffset:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFileSize(Landroid/internal/aconfig/storage/FlagTable$Header;)I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/FlagTable$Header;->mFileSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/FlagTable$Header;)I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/FlagTable$Header;->mNodeOffset:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/FlagTable$Header;
    .locals 2

    new-instance v0, Landroid/internal/aconfig/storage/FlagTable$Header;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/FlagTable$Header;-><init>()V

    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/FlagTable$Header;->mVersion:I

    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/FlagTable$Header;->mContainer:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readByte()I

    move-result v1

    invoke-static {v1}, Landroid/internal/aconfig/storage/FileType;->fromInt(I)Landroid/internal/aconfig/storage/FileType;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/FlagTable$Header;->mFileType:Landroid/internal/aconfig/storage/FileType;

    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/FlagTable$Header;->mFileSize:I

    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/FlagTable$Header;->mNumFlags:I

    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/FlagTable$Header;->mBucketOffset:I

    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result p0

    iput p0, v0, Landroid/internal/aconfig/storage/FlagTable$Header;->mNodeOffset:I

    iget-object p0, v0, Landroid/internal/aconfig/storage/FlagTable$Header;->mFileType:Landroid/internal/aconfig/storage/FileType;

    sget-object v1, Landroid/internal/aconfig/storage/FileType;->FLAG_MAP:Landroid/internal/aconfig/storage/FileType;

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    new-instance p0, Landroid/internal/aconfig/storage/AconfigStorageException;

    const-string v0, "binary file is not a flag map"

    invoke-direct {p0, v0}, Landroid/internal/aconfig/storage/AconfigStorageException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getBucketOffset()I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/FlagTable$Header;->mBucketOffset:I

    return p0
.end method

.method public blacklist getContainer()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/internal/aconfig/storage/FlagTable$Header;->mContainer:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getFileSize()I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/FlagTable$Header;->mFileSize:I

    return p0
.end method

.method public blacklist getFileType()Landroid/internal/aconfig/storage/FileType;
    .locals 0

    iget-object p0, p0, Landroid/internal/aconfig/storage/FlagTable$Header;->mFileType:Landroid/internal/aconfig/storage/FileType;

    return-object p0
.end method

.method public blacklist getNodeOffset()I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/FlagTable$Header;->mNodeOffset:I

    return p0
.end method

.method public blacklist getNumFlags()I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/FlagTable$Header;->mNumFlags:I

    return p0
.end method

.method public blacklist getVersion()I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/FlagTable$Header;->mVersion:I

    return p0
.end method
