.class public Lcom/android/internal/util/ExponentiallyBucketedHistogram;
.super Ljava/lang/Object;
.source "ExponentiallyBucketedHistogram.java"


# instance fields
.field private final greylist-max-o mData:[I


# direct methods
.method public constructor greylist-max-o <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f

    const-string/jumbo v1, "numBuckets"

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    move-result p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    return-void
.end method


# virtual methods
.method public greylist-max-o add(I)V
    .locals 1

    if-gtz p1, :cond_0

    iget-object p0, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    const/4 p1, 0x0

    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    return-void
.end method

.method public greylist-max-o log(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/16 p2, 0x5b

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    array-length v1, v1

    if-ge p2, v1, :cond_2

    if-eqz p2, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_1

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    shl-int v1, v2, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v1, ">="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p2, -0x1

    shl-int v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    aget v1, v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public greylist-max-o reset()V
    .locals 1

    iget-object p0, p0, Lcom/android/internal/util/ExponentiallyBucketedHistogram;->mData:[I

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method
