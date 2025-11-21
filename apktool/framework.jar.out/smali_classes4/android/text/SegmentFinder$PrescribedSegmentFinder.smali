.class public Landroid/text/SegmentFinder$PrescribedSegmentFinder;
.super Landroid/text/SegmentFinder;
.source "SegmentFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/SegmentFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrescribedSegmentFinder"
.end annotation


# instance fields
.field private final blacklist mSegments:[I


# direct methods
.method public constructor whitelist <init>([I)V
    .locals 0

    invoke-direct {p0}, Landroid/text/SegmentFinder;-><init>()V

    invoke-static {p1}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->checkSegmentsValid([I)V

    iput-object p1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    return-void
.end method

.method private static blacklist checkSegmentsValid([I)V
    .locals 3

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string/jumbo v2, "the length of segments must be even"

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    array-length v0, p0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/high16 v0, -0x80000000

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_4

    aget v2, p0, v1

    if-lt v2, v0, :cond_3

    add-int/lit8 v0, v1, 0x1

    aget v0, p0, v0

    if-ge v2, v0, :cond_2

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "the segment range can\'t be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "segments can\'t overlap"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    return-void
.end method

.method private blacklist findNext(IZ)I
    .locals 7

    const/4 v0, -0x1

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length v2, v1

    const/4 v3, 0x1

    if-lt v2, v3, :cond_a

    array-length v2, v1

    sub-int/2addr v2, v3

    aget v2, v1, v2

    if-le p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    aget v4, v1, v2

    if-ge p1, v4, :cond_3

    if-eqz p2, :cond_2

    return v4

    :cond_2
    aget p0, v1, v3

    return p0

    :cond_3
    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-ltz v1, :cond_5

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length v6, v5

    if-ge v4, v6, :cond_4

    aget v5, v5, v4

    if-ne v5, p1, :cond_4

    move v1, v4

    :cond_4
    add-int/2addr v1, v3

    goto :goto_0

    :cond_5
    add-int/2addr v1, v3

    neg-int v1, v1

    :goto_0
    iget-object p0, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length p1, p0

    if-lt v1, p1, :cond_6

    return v0

    :cond_6
    rem-int/lit8 p1, v1, 0x2

    if-nez p1, :cond_7

    move v2, v3

    :cond_7
    if-eq p2, v2, :cond_9

    add-int/2addr v1, v3

    array-length p1, p0

    if-ge v1, p1, :cond_8

    aget p0, p0, v1

    return p0

    :cond_8
    return v0

    :cond_9
    aget p0, p0, v1

    return p0

    :cond_a
    :goto_1
    return v0
.end method

.method private blacklist findPrevious(IZ)I
    .locals 6

    iget-object v0, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_9

    const/4 v1, 0x0

    aget v4, v0, v1

    if-ge p1, v4, :cond_0

    goto :goto_1

    :cond_0
    array-length v4, v0

    sub-int/2addr v4, v3

    aget v4, v0, v4

    if-le p1, v4, :cond_2

    array-length p0, v0

    if-eqz p2, :cond_1

    add-int/lit8 p0, p0, -0x2

    aget p0, v0, p0

    return p0

    :cond_1
    sub-int/2addr p0, v3

    aget p0, v0, p0

    return p0

    :cond_2
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_4

    if-lez v0, :cond_3

    iget-object v4, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    if-ne v4, p1, :cond_3

    move v0, v5

    :cond_3
    add-int/2addr v0, v2

    goto :goto_0

    :cond_4
    add-int/2addr v0, v3

    neg-int p1, v0

    add-int/lit8 v0, p1, -0x1

    :goto_0
    if-gez v0, :cond_5

    return v2

    :cond_5
    rem-int/lit8 p1, v0, 0x2

    if-nez p1, :cond_6

    move v1, v3

    :cond_6
    if-eq p2, v1, :cond_8

    if-lez v0, :cond_7

    iget-object p0, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    sub-int/2addr v0, v3

    aget p0, p0, v0

    return p0

    :cond_7
    return v2

    :cond_8
    iget-object p0, p0, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->mSegments:[I

    aget p0, p0, v0

    return p0

    :cond_9
    :goto_1
    return v2
.end method


# virtual methods
.method public whitelist nextEndBoundary(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->findNext(IZ)I

    move-result p0

    return p0
.end method

.method public whitelist nextStartBoundary(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->findNext(IZ)I

    move-result p0

    return p0
.end method

.method public whitelist previousEndBoundary(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->findPrevious(IZ)I

    move-result p0

    return p0
.end method

.method public whitelist previousStartBoundary(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/SegmentFinder$PrescribedSegmentFinder;->findPrevious(IZ)I

    move-result p0

    return p0
.end method
