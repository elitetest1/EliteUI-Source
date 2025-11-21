.class public Landroid/util/LongArrayQueue;
.super Ljava/lang/Object;
.source "LongArrayQueue.java"


# instance fields
.field private blacklist mHead:I

.field private blacklist mSize:I

.field private blacklist mTail:I

.field private blacklist mValues:[J


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/util/LongArrayQueue;-><init>(I)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Landroid/util/EmptyArray;->LONG:[J

    iput-object p1, p0, Landroid/util/LongArrayQueue;->mValues:[J

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object p1

    iput-object p1, p0, Landroid/util/LongArrayQueue;->mValues:[J

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Landroid/util/LongArrayQueue;->mSize:I

    iput p1, p0, Landroid/util/LongArrayQueue;->mTail:I

    iput p1, p0, Landroid/util/LongArrayQueue;->mHead:I

    return-void
.end method

.method private blacklist grow()V
    .locals 5

    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    iget-object v1, p0, Landroid/util/LongArrayQueue;->mValues:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    invoke-static {v0}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object v0

    iget-object v1, p0, Landroid/util/LongArrayQueue;->mValues:[J

    array-length v2, v1

    iget v3, p0, Landroid/util/LongArrayQueue;->mHead:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Landroid/util/LongArrayQueue;->mValues:[J

    iget v3, p0, Landroid/util/LongArrayQueue;->mHead:I

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Landroid/util/LongArrayQueue;->mValues:[J

    iput v4, p0, Landroid/util/LongArrayQueue;->mHead:I

    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    iput v0, p0, Landroid/util/LongArrayQueue;->mTail:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Queue not full yet!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist addLast(J)V
    .locals 2

    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    iget-object v1, p0, Landroid/util/LongArrayQueue;->mValues:[J

    array-length v1, v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/util/LongArrayQueue;->grow()V

    :cond_0
    iget-object v0, p0, Landroid/util/LongArrayQueue;->mValues:[J

    iget v1, p0, Landroid/util/LongArrayQueue;->mTail:I

    aput-wide p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    array-length p1, v0

    rem-int/2addr v1, p1

    iput v1, p0, Landroid/util/LongArrayQueue;->mTail:I

    iget p1, p0, Landroid/util/LongArrayQueue;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/util/LongArrayQueue;->mSize:I

    return-void
.end method

.method public blacklist clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    iput v0, p0, Landroid/util/LongArrayQueue;->mTail:I

    iput v0, p0, Landroid/util/LongArrayQueue;->mHead:I

    return-void
.end method

.method public blacklist get(I)J
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Landroid/util/LongArrayQueue;->mHead:I

    add-int/2addr v0, p1

    iget-object p0, p0, Landroid/util/LongArrayQueue;->mValues:[J

    array-length p1, p0

    rem-int/2addr v0, p1

    aget-wide p0, p0, v0

    return-wide p0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not valid for a queue of size "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/util/LongArrayQueue;->mSize:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist peekFirst()J
    .locals 2

    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/util/LongArrayQueue;->mValues:[J

    iget p0, p0, Landroid/util/LongArrayQueue;->mHead:I

    aget-wide v0, v0, p0

    return-wide v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Queue is empty!"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist peekLast()J
    .locals 2

    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/util/LongArrayQueue;->mTail:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/util/LongArrayQueue;->mValues:[J

    array-length v0, v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    iget-object p0, p0, Landroid/util/LongArrayQueue;->mValues:[J

    aget-wide v0, p0, v0

    return-wide v0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Queue is empty!"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist removeFirst()J
    .locals 5

    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/util/LongArrayQueue;->mValues:[J

    iget v2, p0, Landroid/util/LongArrayQueue;->mHead:I

    aget-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    array-length v1, v1

    rem-int/2addr v2, v1

    iput v2, p0, Landroid/util/LongArrayQueue;->mHead:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    return-wide v3

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Queue is empty!"

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist size()I
    .locals 0

    iget p0, p0, Landroid/util/LongArrayQueue;->mSize:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Landroid/util/LongArrayQueue;->mSize:I

    if-gtz v0, :cond_0

    const-string/jumbo p0, "{}"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/LongArrayQueue;->mSize:I

    mul-int/lit8 v1, v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroid/util/LongArrayQueue;->mSize:I

    if-ge v1, v2, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
