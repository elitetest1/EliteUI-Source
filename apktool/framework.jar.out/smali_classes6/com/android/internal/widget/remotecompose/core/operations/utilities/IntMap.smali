.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
.super Ljava/lang/Object;
.source "IntMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_CAPACITY:I = 0x10

.field private static final blacklist LOAD_FACTOR:F = 0.75f

.field private static final blacklist NOT_PRESENT:I = -0x80000000


# instance fields
.field private blacklist mKeys:[I

.field blacklist mSize:I

.field private blacklist mValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist findKey(I)I
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->hash(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v2, v1, v0

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_1

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    array-length v1, v1

    rem-int/2addr v0, v1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private blacklist hash(I)I
    .locals 0

    return p1
.end method

.method private blacklist insert(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->hash(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v2, v1, v0

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_0

    if-eq v2, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    array-length v1, v1

    rem-int/2addr v0, v1

    goto :goto_0

    :cond_0
    if-ne v2, v3, :cond_1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aput p1, v2, v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method private blacklist rehashFrom(I)V
    .locals 4

    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v0, v0, p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aput v1, v3, p1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->insert(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v0, v0

    rem-int/2addr p1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist resize()V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v5, v4

    const/high16 v6, -0x80000000

    if-ge v3, v5, :cond_0

    aput v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    move v3, v2

    :goto_1
    array-length v4, v0

    mul-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget v3, v0, v2

    if-eq v3, v6, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    return-void
.end method

.method public blacklist get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->findKey(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public blacklist put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->resize()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->insert(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Key cannot be NOT_PRESENT"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist remove(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->hash(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    move v1, v0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aget v3, v2, v1

    const/4 v4, 0x0

    const/high16 v5, -0x80000000

    if-eq v3, v5, :cond_2

    if-ne v3, p1, :cond_1

    iget-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    aput v5, v0, v1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mValues:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mKeys:[I

    array-length v0, v0

    rem-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->rehashFrom(I)V

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    array-length v2, v2

    rem-int/2addr v1, v2

    if-ne v1, v0, :cond_0

    :cond_2
    return-object v4
.end method

.method public blacklist size()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->mSize:I

    return p0
.end method
