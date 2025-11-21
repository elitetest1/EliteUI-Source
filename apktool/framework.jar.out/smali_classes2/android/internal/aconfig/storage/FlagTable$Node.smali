.class public Landroid/internal/aconfig/storage/FlagTable$Node;
.super Ljava/lang/Object;
.source "FlagTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/aconfig/storage/FlagTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Node"
.end annotation


# instance fields
.field private blacklist mFlagIndex:I

.field private blacklist mFlagName:Ljava/lang/String;

.field private blacklist mFlagType:Landroid/internal/aconfig/storage/FlagType;

.field private blacklist mNextOffset:I

.field private blacklist mPackageId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFlagName(Landroid/internal/aconfig/storage/FlagTable$Node;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNextOffset(Landroid/internal/aconfig/storage/FlagTable$Node;)I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageId(Landroid/internal/aconfig/storage/FlagTable$Node;)I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mPackageId:I

    return p0
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist fromBytes(Landroid/internal/aconfig/storage/ByteBufferReader;)Landroid/internal/aconfig/storage/FlagTable$Node;
    .locals 2

    new-instance v0, Landroid/internal/aconfig/storage/FlagTable$Node;

    invoke-direct {v0}, Landroid/internal/aconfig/storage/FlagTable$Node;-><init>()V

    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/FlagTable$Node;->mPackageId:I

    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readShort()I

    move-result v1

    invoke-static {v1}, Landroid/internal/aconfig/storage/FlagType;->fromInt(I)Landroid/internal/aconfig/storage/FlagType;

    move-result-object v1

    iput-object v1, v0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagType:Landroid/internal/aconfig/storage/FlagType;

    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readShort()I

    move-result v1

    iput v1, v0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagIndex:I

    invoke-virtual {p0}, Landroid/internal/aconfig/storage/ByteBufferReader;->readInt()I

    move-result p0

    iput p0, v0, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    if-nez p0, :cond_0

    const/4 p0, -0x1

    :cond_0
    iput p0, v0, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

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

    instance-of v2, p1, Landroid/internal/aconfig/storage/FlagTable$Node;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/internal/aconfig/storage/FlagTable$Node;

    iget-object v2, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagName:Ljava/lang/String;

    iget-object v3, p1, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagType:Landroid/internal/aconfig/storage/FlagType;

    iget-object v3, p1, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagType:Landroid/internal/aconfig/storage/FlagType;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mPackageId:I

    iget v3, p1, Landroid/internal/aconfig/storage/FlagTable$Node;->mPackageId:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagIndex:I

    iget v3, p1, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagIndex:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    iget p1, p1, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getFlagIndex()I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagIndex:I

    return p0
.end method

.method public blacklist getFlagName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getFlagType()Landroid/internal/aconfig/storage/FlagType;
    .locals 0

    iget-object p0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagType:Landroid/internal/aconfig/storage/FlagType;

    return-object p0
.end method

.method public blacklist getNextOffset()I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    return p0
.end method

.method public blacklist getPackageId()I
    .locals 0

    iget p0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mPackageId:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget-object v0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagName:Ljava/lang/String;

    iget-object v1, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagType:Landroid/internal/aconfig/storage/FlagType;

    iget v2, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mPackageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mFlagIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p0, p0, Landroid/internal/aconfig/storage/FlagTable$Node;->mNextOffset:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
