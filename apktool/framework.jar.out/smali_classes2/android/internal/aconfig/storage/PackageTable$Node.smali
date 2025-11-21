.class public Landroid/internal/aconfig/storage/PackageTable$Node;
.super Ljava/lang/Object;
.source "PackageTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/aconfig/storage/PackageTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field private blacklist mBooleanStartIndex:I

.field private blacklist mHasPackageFingerprint:Z

.field private blacklist mNextOffset:I

.field private blacklist mPackageFingerprint:J

.field private blacklist mPackageId:I

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNextOffset(Landroid/internal/aconfig/storage/PackageTable$Node;)I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/internal/aconfig/storage/PackageTable$Node;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smfromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;I)Landroid/internal/aconfig/storage/PackageTable$Node;
    .locals 0

    invoke-static {p0, p1}, Landroid/internal/aconfig/storage/PackageTable$Node;->fromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;I)Landroid/internal/aconfig/storage/PackageTable$Node;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist fromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;I)Landroid/internal/aconfig/storage/PackageTable$Node;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    new-instance p0, Landroid/internal/aconfig/storage/PackageTable$Node;

    invoke-direct {p0}, Landroid/internal/aconfig/storage/PackageTable$Node;-><init>()V

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/internal/aconfig/storage/PackageTable$Node;->fromBytesV2(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/PackageTable$Node;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Landroid/internal/aconfig/storage/PackageTable$Node;->fromBytesV1(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/PackageTable$Node;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist fromBytesV1(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/PackageTable$Node;
    .locals 2

    new-instance v0, Landroid/internal/aconfig/storage/PackageTable$Node;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/PackageTable$Node;-><init>()V

    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageId:I

    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mBooleanStartIndex:I

    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result p0

    iput p0, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    if-nez p0, :cond_0

    const/4 p0, -0x1

    :cond_0
    iput p0, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    return-object v0
.end method

.method private static blacklist fromBytesV2(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/PackageTable$Node;
    .locals 3

    new-instance v0, Landroid/internal/aconfig/storage/PackageTable$Node;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/PackageTable$Node;-><init>()V

    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageId:I

    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readLong()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageFingerprint:J

    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mBooleanStartIndex:I

    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result p0

    iput p0, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    if-nez p0, :cond_0

    const/4 p0, -0x1

    :cond_0
    iput p0, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    const/4 p0, 0x1

    iput-boolean p0, v0, Landroid/internal/aconfig/storage/PackageTable$Node;->mHasPackageFingerprint:Z

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    instance-of v2, p1, Landroid/internal/aconfig/storage/PackageTable$Node;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/internal/aconfig/storage/PackageTable$Node;

    iget-object v2, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageId:I

    iget v3, p1, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mBooleanStartIndex:I

    iget v3, p1, Landroid/internal/aconfig/storage/PackageTable$Node;->mBooleanStartIndex:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    iget p1, p1, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getBooleanStartIndex()I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mBooleanStartIndex:I

    return p0
.end method

.method public blacklist getNextOffset()I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    return p0
.end method

.method public blacklist getPackageFingerprint()J
    .locals 2

    iget-wide v0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageFingerprint:J

    return-wide v0
.end method

.method public blacklist getPackageId()I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageId:I

    return p0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist hasPackageFingerprint()Z
    .locals 0

    iget-boolean p0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mHasPackageFingerprint:Z

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageName:Ljava/lang/String;

    iget v1, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mPackageId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mBooleanStartIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Landroid/internal/aconfig/storage/PackageTable$Node;->mNextOffset:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
