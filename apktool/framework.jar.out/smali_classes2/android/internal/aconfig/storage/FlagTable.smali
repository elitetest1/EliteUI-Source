.class public Landroid/internal/aconfig/storage/FlagTable;
.super Ljava/lang/Object;
.source "FlagTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/internal/aconfig/storage/FlagTable$Header;,
        Landroid/internal/aconfig/storage/FlagTable$Node;
    }
.end annotation


# instance fields
.field private blacklist mBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/FlagTable;
    .locals 2

    new-instance v0, Landroid/internal/aconfig/storage/FlagTable;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/FlagTable;-><init>()V

    iput-object p0, v0, Landroid/internal/aconfig/storage/FlagTable;->mBuffer:Ljava/nio/ByteBuffer;

    new-instance v1, Landroid/internal/aconfig/storage/ByteBufferReader;

    invoke-direct {v1, p0}, Landroid/internal/aconfig/storage/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v1}, Landroid/internal/aconfig/storage/FlagTable$Header;->fromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/FlagTable$Header;

    move-result-object p0

    iput-object p0, v0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    return-object v0
.end method

.method private static blacklist makeKey(ILjava/lang/String;)[B
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist get(ILjava/lang/String;)Landroid/internal/aconfig/storage/FlagTable$Node;
    .locals 4

    iget-object v0, p0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v0}, Landroid/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/FlagTable$Header;)I

    move-result v0

    iget-object v1, p0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v1}, Landroid/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmBucketOffset(Landroid/internal/aconfig/storage/FlagTable$Header;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    invoke-static {p1, p2}, Landroid/internal/aconfig/storage/FlagTable;->makeKey(ILjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1, v0}, Landroid/internal/aconfig/storage/TableUtils;->getBucketIndex([BI)I

    move-result v0

    iget-object v1, p0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v1}, Landroid/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmBucketOffset(Landroid/internal/aconfig/storage/FlagTable$Header;)I

    move-result v1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    iget-object v0, p0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v0}, Landroid/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/FlagTable$Header;)I

    move-result v0

    const/4 v2, 0x0

    if-lt v1, v0, :cond_0

    return-object v2

    :cond_0
    new-instance v0, Landroid/internal/aconfig/storage/ByteBufferReader;

    iget-object v3, p0, Landroid/internal/aconfig/storage/FlagTable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v3}, Landroid/internal/aconfig/storage/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->position(I)V

    invoke-virtual {v0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iget-object v3, p0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    invoke-static {v3}, Landroid/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/FlagTable$Header;)I

    move-result v3

    if-lt v1, v3, :cond_3

    iget-object p0, p0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    invoke-static {p0}, Landroid/internal/aconfig/storage/FlagTable$Header;->-$$Nest$fgetmFileSize(Landroid/internal/aconfig/storage/FlagTable$Header;)I

    move-result p0

    if-lt v1, p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    if-eq v1, p0, :cond_3

    invoke-virtual {v0, v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->position(I)V

    invoke-static {v0}, Landroid/internal/aconfig/storage/FlagTable$Node;->fromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/FlagTable$Node;

    move-result-object p0

    invoke-static {p0}, Landroid/internal/aconfig/storage/FlagTable$Node;->-$$Nest$fgetmFlagName(Landroid/internal/aconfig/storage/FlagTable$Node;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Landroid/internal/aconfig/storage/FlagTable$Node;->-$$Nest$fgetmPackageId(Landroid/internal/aconfig/storage/FlagTable$Node;)I

    move-result v1

    if-ne p1, v1, :cond_2

    return-object p0

    :cond_2
    invoke-static {p0}, Landroid/internal/aconfig/storage/FlagTable$Node;->-$$Nest$fgetmNextOffset(Landroid/internal/aconfig/storage/FlagTable$Node;)I

    move-result v1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v2
.end method

.method public blacklist getHeader()Landroid/internal/aconfig/storage/FlagTable$Header;
    .locals 0

    iget-object p0, p0, Landroid/internal/aconfig/storage/FlagTable;->mHeader:Landroid/internal/aconfig/storage/FlagTable$Header;

    return-object p0
.end method
