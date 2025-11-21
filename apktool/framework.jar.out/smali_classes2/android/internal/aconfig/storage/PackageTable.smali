.class public Landroid/internal/aconfig/storage/PackageTable;
.super Ljava/lang/Object;
.source "PackageTable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/internal/aconfig/storage/PackageTable$Header;,
        Landroid/internal/aconfig/storage/PackageTable$Node;
    }
.end annotation


# static fields
.field private static final blacklist FINGERPRINT_BYTES:I = 0x8

.field private static final blacklist NODE_SKIP_BYTES:I = 0xc


# instance fields
.field private blacklist mBuffer:Ljava/nio/ByteBuffer;

.field private blacklist mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromBytes(Ljava/nio/ByteBuffer;)Landroid/internal/aconfig/storage/PackageTable;
    .locals 2

    new-instance v0, Landroid/internal/aconfig/storage/PackageTable;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/PackageTable;-><init>()V

    iput-object p0, v0, Landroid/internal/aconfig/storage/PackageTable;->mBuffer:Ljava/nio/ByteBuffer;

    new-instance v1, Landroid/internal/aconfig/storage/ByteBufferReader;

    invoke-direct {v1, p0}, Landroid/internal/aconfig/storage/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v1}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$smfromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/PackageTable$Header;

    move-result-object p0

    iput-object p0, v0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    return-object v0
.end method


# virtual methods
.method public blacklist get(Ljava/lang/String;)Landroid/internal/aconfig/storage/PackageTable$Node;
    .locals 4

    iget-object v0, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v0}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v0

    iget-object v1, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v1}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmBucketOffset(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1, v0}, Landroid/internal/aconfig/storage/TableUtils;->getBucketIndex([BI)I

    move-result v0

    iget-object v1, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v1}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmBucketOffset(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v1, v0

    iget-object v0, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v0}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v0

    const/4 v2, 0x0

    if-lt v1, v0, :cond_0

    return-object v2

    :cond_0
    new-instance v0, Landroid/internal/aconfig/storage/ByteBufferReader;

    iget-object v3, p0, Landroid/internal/aconfig/storage/PackageTable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v3}, Landroid/internal/aconfig/storage/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->position(I)V

    invoke-virtual {v0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iget-object v3, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v3}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v3

    if-lt v1, v3, :cond_3

    iget-object v3, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v3}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmFileSize(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v3

    if-lt v1, v3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    invoke-virtual {v0, v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->position(I)V

    iget-object v1, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v1}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmVersion(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/internal/aconfig/storage/PackageTable$Node;->-$$Nest$smfromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;I)Landroid/internal/aconfig/storage/PackageTable$Node;

    move-result-object v1

    invoke-static {v1}, Landroid/internal/aconfig/storage/PackageTable$Node;->-$$Nest$fgetmPackageName(Landroid/internal/aconfig/storage/PackageTable$Node;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    invoke-static {v1}, Landroid/internal/aconfig/storage/PackageTable$Node;->-$$Nest$fgetmNextOffset(Landroid/internal/aconfig/storage/PackageTable$Node;)I

    move-result v1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v2
.end method

.method public blacklist getHeader()Landroid/internal/aconfig/storage/PackageTable$Header;
    .locals 0

    iget-object p0, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    return-object p0
.end method

.method public blacklist getPackageList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v1}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNumPackages(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v1, Landroid/internal/aconfig/storage/ByteBufferReader;

    iget-object v2, p0, Landroid/internal/aconfig/storage/PackageTable;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {v1, v2}, Landroid/internal/aconfig/storage/ByteBufferReader;-><init>(Ljava/nio/ByteBuffer;)V

    iget-object v2, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v2}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNodeOffset(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/internal/aconfig/storage/ByteBufferReader;->position(I)V

    iget-object v2, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v2}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmVersion(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    add-int/lit8 v2, v2, 0xc

    :goto_1
    iget-object v3, p0, Landroid/internal/aconfig/storage/PackageTable;->mHeader:Landroid/internal/aconfig/storage/PackageTable$Header;

    invoke-static {v3}, Landroid/internal/aconfig/storage/PackageTable$Header;->-$$Nest$fgetmNumPackages(Landroid/internal/aconfig/storage/PackageTable$Header;)I

    move-result v3

    if-ge v4, v3, :cond_1

    invoke-virtual {v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/internal/aconfig/storage/ByteBufferReader;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Landroid/internal/aconfig/storage/ByteBufferReader;->position(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method
