.class public final Landroid/hardware/LutProperties;
.super Ljava/lang/Object;
.source "LutProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/LutProperties$Dimension;,
        Landroid/hardware/LutProperties$SamplingKey;
    }
.end annotation


# static fields
.field public static final whitelist ONE_DIMENSION:I = 0x1

.field public static final whitelist SAMPLING_KEY_CIE_Y:I = 0x2

.field public static final whitelist SAMPLING_KEY_MAX_RGB:I = 0x1

.field public static final whitelist SAMPLING_KEY_RGB:I = 0x0

.field public static final whitelist THREE_DIMENSION:I = 0x3


# instance fields
.field private final blacklist mDimension:I

.field private final blacklist mSamplingKeys:[I

.field private final blacklist mSize:I


# direct methods
.method private constructor blacklist <init>(II[I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iput p1, p0, Landroid/hardware/LutProperties;->mDimension:I

    iput p2, p0, Landroid/hardware/LutProperties;->mSize:I

    iput-object p3, p0, Landroid/hardware/LutProperties;->mSamplingKeys:[I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The dimension is either 1 or 3!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist getDimension()I
    .locals 0

    iget p0, p0, Landroid/hardware/LutProperties;->mDimension:I

    return p0
.end method

.method public whitelist getSamplingKeys()[I
    .locals 1

    iget-object p0, p0, Landroid/hardware/LutProperties;->mSamplingKeys:[I

    array-length v0, p0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "no sampling key!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getSize()I
    .locals 0

    iget p0, p0, Landroid/hardware/LutProperties;->mSize:I

    return p0
.end method
