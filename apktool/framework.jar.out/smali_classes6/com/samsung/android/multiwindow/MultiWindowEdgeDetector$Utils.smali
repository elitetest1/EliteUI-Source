.class public Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;
.super Ljava/lang/Object;
.source "MultiWindowEdgeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utils"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist adjustMinimalTaskBounds(Landroid/graphics/Rect;III)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    const/4 v1, 0x1

    if-lt p2, v1, :cond_8

    if-ge p3, v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v2, p2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v3, p3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    const/4 v4, 0x5

    if-eq p1, v4, :cond_5

    const/16 v4, 0x9

    if-eq p1, v4, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    iget p1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->right:I

    :cond_4
    if-eqz v3, :cond_7

    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p3

    iput p1, p0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_6

    iget p1, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    iput p1, p0, Landroid/graphics/Rect;->left:I

    :cond_6
    if-eqz v3, :cond_7

    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p3

    iput p1, p0, Landroid/graphics/Rect;->top:I

    :cond_7
    :goto_2
    if-eqz v2, :cond_8

    if-eqz v3, :cond_8

    return v1

    :cond_8
    :goto_3
    return v0
.end method

.method public static blacklist applyResizeRect(Landroid/graphics/Rect;III)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput p2, p0, Landroid/graphics/Rect;->right:I

    iput p3, p0, Landroid/graphics/Rect;->top:I

    return-void

    :cond_2
    iput p2, p0, Landroid/graphics/Rect;->left:I

    iput p3, p0, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method public static blacklist dipToPixel(IF)I
    .locals 0

    int-to-float p0, p0

    mul-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public static blacklist edgeFlagToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const-string p0, "INVALID"

    return-object p0

    :cond_0
    const-string p0, "EDGE_RIGHT_TOP"

    return-object p0

    :cond_1
    const-string p0, "EDGE_LEFT_TOP"

    return-object p0
.end method
