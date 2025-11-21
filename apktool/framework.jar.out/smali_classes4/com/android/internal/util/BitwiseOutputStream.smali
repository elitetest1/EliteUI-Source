.class public Lcom/android/internal/util/BitwiseOutputStream;
.super Ljava/lang/Object;
.source "BitwiseOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    }
.end annotation


# instance fields
.field private blacklist mBuf:[B

.field private blacklist mEnd:I

.field private blacklist mPos:I


# direct methods
.method public constructor greylist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    shl-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    return-void
.end method

.method private blacklist possExpand(I)V
    .locals 4

    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    if-ge v1, v2, :cond_0

    return-void

    :cond_0
    add-int/2addr v0, p1

    ushr-int/lit8 p1, v0, 0x2

    new-array v0, p1, [B

    iget-object v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    ushr-int/lit8 v2, v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    shl-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mEnd:I

    return-void
.end method


# virtual methods
.method public blacklist skip(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/util/BitwiseOutputStream;->possExpand(I)V

    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    return-void
.end method

.method public greylist toByteArray()[B
    .locals 3

    iget v0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    add-int/2addr v1, v0

    new-array v0, v1, [B

    iget-object p0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public greylist write(II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    if-ltz p1, :cond_1

    const/16 v0, 0x8

    if-gt p1, v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/internal/util/BitwiseOutputStream;->possExpand(I)V

    rsub-int/lit8 v1, p1, 0x20

    const/4 v2, -0x1

    ushr-int v1, v2, v1

    and-int/2addr p2, v1

    iget v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    ushr-int/lit8 v2, v1, 0x3

    and-int/lit8 v3, v1, 0x7

    rsub-int/lit8 v3, v3, 0x10

    sub-int/2addr v3, p1

    shl-int/2addr p2, v3

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/util/BitwiseOutputStream;->mPos:I

    iget-object p0, p0, Lcom/android/internal/util/BitwiseOutputStream;->mBuf:[B

    aget-byte p1, p0, v2

    ushr-int/lit8 v1, p2, 0x8

    or-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, p0, v2

    if-ge v3, v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    aget-byte p1, p0, v2

    and-int/lit16 p2, p2, 0xff

    or-int/2addr p1, p2

    int-to-byte p1, p1

    aput-byte p1, p0, v2

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lcom/android/internal/util/BitwiseOutputStream$AccessException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "illegal write ("

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bits)"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/util/BitwiseOutputStream$AccessException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist writeByteArray(I[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    shl-int/lit8 v1, v0, 0x3

    sub-int v1, p1, v1

    const/16 v2, 0x8

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v1, :cond_0

    aget-byte v2, p2, v0

    rsub-int/lit8 v3, v1, 0x8

    ushr-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
