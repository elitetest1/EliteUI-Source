.class public Lcom/android/internal/os/BinderLatencyBuckets;
.super Ljava/lang/Object;
.source "BinderLatencyBuckets.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "BinderLatencyBuckets"


# instance fields
.field private final blacklist mBuckets:[I


# direct methods
.method public constructor blacklist <init>(IIF)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    new-array v1, p1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    int-to-double v3, p2

    :goto_0
    if-ge v0, p1, :cond_2

    float-to-double v5, p3

    mul-double/2addr v3, v5

    const-wide v5, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double p2, v3, v5

    if-lez p2, :cond_0

    const-string p1, "BinderLatencyBuckets"

    const-string p2, "Attempted to create a bucket larger than maxint"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/os/BinderLatencyBuckets;->mBuckets:[I

    return-void

    :cond_0
    double-to-int p2, v3

    add-int/lit8 v5, v0, -0x1

    aget v5, v1, v5

    if-le p2, v5, :cond_1

    aput p2, v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/android/internal/os/BinderLatencyBuckets;->mBuckets:[I

    return-void
.end method


# virtual methods
.method public blacklist getBuckets()[I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/os/BinderLatencyBuckets;->mBuckets:[I

    return-object p0
.end method

.method public blacklist sampleToBucket(I)I
    .locals 1

    iget-object p0, p0, Lcom/android/internal/os/BinderLatencyBuckets;->mBuckets:[I

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    if-lt p1, v0, :cond_0

    array-length p0, p0

    return p0

    :cond_0
    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-gez p0, :cond_1

    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    return p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    return p0
.end method
