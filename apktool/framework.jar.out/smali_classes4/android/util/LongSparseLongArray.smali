.class public Landroid/util/LongSparseLongArray;
.super Ljava/lang/Object;
.source "LongSparseLongArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/LongSparseLongArray$Parcelling;
    }
.end annotation


# instance fields
.field private greylist-max-p mKeys:[J

.field private greylist-max-p mSize:I

.field private greylist-max-p mValues:[J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmKeys(Landroid/util/LongSparseLongArray;)[J
    .locals 0

    iget-object p0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSize(Landroid/util/LongSparseLongArray;)I
    .locals 0

    iget p0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmValues(Landroid/util/LongSparseLongArray;)[J
    .locals 0

    iget-object p0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmKeys(Landroid/util/LongSparseLongArray;[J)V
    .locals 0

    iput-object p1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSize(Landroid/util/LongSparseLongArray;I)V
    .locals 0

    iput p1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmValues(Landroid/util/LongSparseLongArray;[J)V
    .locals 0

    iput-object p1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/LongSparseLongArray;-><init>(I)V

    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Landroid/util/EmptyArray;->LONG:[J

    iput-object p1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    sget-object p1, Landroid/util/EmptyArray;->LONG:[J

    iput-object p1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedLongArray(I)[J

    move-result-object p1

    iput-object p1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    array-length p1, p1

    new-array p1, p1, [J

    iput-object p1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    return-void
.end method


# virtual methods
.method public greylist-max-o append(JJ)V
    .locals 3

    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    add-int/lit8 v2, v0, -0x1

    aget-wide v1, v1, v2

    cmp-long v1, p1, v1

    if-gtz v1, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/util/LongSparseLongArray;->put(JJ)V

    return-void

    :cond_0
    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    invoke-static {v1, v0, p1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->append([JIJ)[J

    move-result-object p1

    iput-object p1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget-object p1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    iget p2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {p1, p2, p3, p4}, Lcom/android/internal/util/GrowingArrayUtils;->append([JIJ)[J

    move-result-object p1

    iput-object p1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    iget p1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    return-void
.end method

.method public greylist-max-o clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    return-void
.end method

.method public blacklist clone()Landroid/util/LongSparseLongArray;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseLongArray;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iput-object v0, v1, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget-object p0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [J

    iput-object p0, v1, Landroid/util/LongSparseLongArray;->mValues:[J
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-object v0, v1

    :catch_1
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->clone()Landroid/util/LongSparseLongArray;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o delete(J)V
    .locals 2

    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/util/LongSparseLongArray;->removeAt(I)V

    :cond_0
    return-void
.end method

.method public greylist-max-o get(J)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/util/LongSparseLongArray;->get(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public greylist-max-o get(JJ)J
    .locals 2

    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result p1

    if-gez p1, :cond_0

    return-wide p3

    :cond_0
    iget-object p0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public greylist-max-o indexOfKey(J)I
    .locals 1

    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget p0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v0, p0, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result p0

    return p0
.end method

.method public greylist-max-o indexOfValue(J)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public greylist-max-o keyAt(I)J
    .locals 1

    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    if-lt p1, v0, :cond_1

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public greylist-max-o put(JJ)V
    .locals 3

    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v0, v1, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([JIJ)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aput-wide p3, p0, v0

    return-void

    :cond_0
    not-int v0, v0

    iget-object v1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {v1, v2, v0, p1, p2}, Lcom/android/internal/util/GrowingArrayUtils;->insert([JIIJ)[J

    move-result-object p1

    iput-object p1, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    iget-object p1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    iget p2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    invoke-static {p1, p2, v0, p3, p4}, Lcom/android/internal/util/GrowingArrayUtils;->insert([JIIJ)[J

    move-result-object p1

    iput-object p1, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    iget p1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    return-void
.end method

.method public greylist-max-o removeAt(I)V
    .locals 3

    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mKeys:[J

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    sub-int/2addr v2, v1

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    sub-int/2addr v2, v1

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    return-void
.end method

.method public greylist-max-o size()I
    .locals 0

    iget p0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Landroid/util/LongSparseLongArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const-string/jumbo p0, "{}"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/util/LongSparseLongArray;->mSize:I

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Landroid/util/LongSparseLongArray;->mSize:I

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->keyAt(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Landroid/util/LongSparseLongArray;->valueAt(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o valueAt(I)J
    .locals 1

    iget v0, p0, Landroid/util/LongSparseLongArray;->mSize:I

    if-lt p1, v0, :cond_1

    sget-boolean v0, Landroid/util/UtilConfig;->sThrowExceptionForUpperArrayOutOfBounds:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/util/LongSparseLongArray;->mValues:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method
