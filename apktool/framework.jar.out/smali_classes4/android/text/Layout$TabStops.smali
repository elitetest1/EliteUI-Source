.class public Landroid/text/Layout$TabStops;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabStops"
.end annotation


# instance fields
.field private blacklist mIncrement:F

.field private greylist-max-o mNumStops:I

.field private blacklist mStops:[F


# direct methods
.method public constructor blacklist <init>(F[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Landroid/text/Layout$TabStops;->reset(F[Ljava/lang/Object;)V

    return-void
.end method

.method public static blacklist nextDefaultStop(FF)F
    .locals 0

    add-float/2addr p0, p1

    div-float/2addr p0, p1

    float-to-int p0, p0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method greylist-max-o nextTab(F)F
    .locals 5

    iget v0, p0, Landroid/text/Layout$TabStops;->mNumStops:I

    if-lez v0, :cond_1

    iget-object v1, p0, Landroid/text/Layout$TabStops;->mStops:[F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, v1, v2

    cmpl-float v4, v3, p1

    if-lez v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget p0, p0, Landroid/text/Layout$TabStops;->mIncrement:F

    invoke-static {p1, p0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FF)F

    move-result p0

    return p0
.end method

.method blacklist reset(F[Ljava/lang/Object;)V
    .locals 8

    iput p1, p0, Landroid/text/Layout$TabStops;->mIncrement:F

    const/4 p1, 0x0

    if-eqz p2, :cond_7

    iget-object v0, p0, Landroid/text/Layout$TabStops;->mStops:[F

    array-length v1, p2

    move v2, p1

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v4, p2, v2

    instance-of v5, v4, Landroid/text/style/TabStopSpan;

    if-eqz v5, :cond_3

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [F

    goto :goto_2

    :cond_0
    array-length v5, v0

    if-ne v3, v5, :cond_2

    mul-int/lit8 v5, v3, 0x2

    new-array v5, v5, [F

    move v6, p1

    :goto_1
    if-ge v6, v3, :cond_1

    aget v7, v0, v6

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v5

    :cond_2
    :goto_2
    add-int/lit8 v5, v3, 0x1

    check-cast v4, Landroid/text/style/TabStopSpan;

    invoke-interface {v4}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v4

    int-to-float v4, v4

    aput v4, v0, v3

    move v3, v5

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x1

    if-le v3, p2, :cond_5

    invoke-static {v0, p1, v3}, Ljava/util/Arrays;->sort([FII)V

    :cond_5
    iget-object p1, p0, Landroid/text/Layout$TabStops;->mStops:[F

    if-eq v0, p1, :cond_6

    iput-object v0, p0, Landroid/text/Layout$TabStops;->mStops:[F

    :cond_6
    move p1, v3

    :cond_7
    iput p1, p0, Landroid/text/Layout$TabStops;->mNumStops:I

    return-void
.end method
