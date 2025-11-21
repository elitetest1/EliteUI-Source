.class public Landroid/media/MediaCodec$ParameterDescriptor;
.super Ljava/lang/Object;
.source "MediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParameterDescriptor"
.end annotation


# instance fields
.field private blacklist mName:Ljava/lang/String;

.field private blacklist mType:I


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/media/MediaCodec$ParameterDescriptor;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Landroid/media/MediaCodec$ParameterDescriptor;

    iget-object v1, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mName:Ljava/lang/String;

    iget-object v2, p1, Landroid/media/MediaCodec$ParameterDescriptor;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mType:I

    iget p1, p1, Landroid/media/MediaCodec$ParameterDescriptor;->mType:I

    if-ne p0, p1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getType()I
    .locals 0

    iget p0, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mType:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mName:Ljava/lang/String;

    iget p0, p0, Landroid/media/MediaCodec$ParameterDescriptor;->mType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->hashCode()I

    move-result p0

    return p0
.end method
