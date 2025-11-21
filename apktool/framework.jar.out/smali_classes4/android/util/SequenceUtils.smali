.class public final Landroid/util/SequenceUtils;
.super Ljava/lang/Object;
.source "SequenceUtils.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInitSeq()I
    .locals 1

    const/high16 v0, -0x80000000

    return v0
.end method

.method public static blacklist getNextSeq(I)I
    .locals 1

    const v0, 0x7fffffff

    if-ne p0, v0, :cond_0

    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static blacklist isIncomingSeqStale(II)Z
    .locals 4

    invoke-static {}, Landroid/util/SequenceUtils;->getInitSeq()I

    move-result v0

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    int-to-long v2, p1

    int-to-long p0, p0

    sub-long/2addr v2, p0

    const-wide/16 p0, 0x0

    cmp-long p0, v2, p0

    if-gez p0, :cond_1

    const-wide/32 p0, -0x80000000

    cmp-long p0, v2, p0

    if-gtz p0, :cond_2

    :cond_1
    const-wide/32 p0, 0x7fffffff

    cmp-long p0, v2, p0

    if-lez p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method
