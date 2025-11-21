.class public abstract Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;
.super Ljava/lang/Object;
.source "NotificationProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/NotificationProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DrawablePart"
.end annotation


# instance fields
.field protected final blacklist mColor:I

.field protected blacklist mEnd:F

.field protected blacklist mStart:F


# direct methods
.method protected constructor blacklist <init>(FFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    iput p2, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    iput p3, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mColor:I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;

    iget v2, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    iget v3, p1, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    iget v3, p1, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget p0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mColor:I

    iget p1, p1, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mColor:I

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public blacklist getColor()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mColor:I

    return p0
.end method

.method public blacklist getEnd()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    return p0
.end method

.method public blacklist getStart()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    return p0
.end method

.method public blacklist getWidth()F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    sub-float/2addr v0, p0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget p0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mColor:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist setEnd(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mEnd:F

    return-void
.end method

.method public blacklist setStart(F)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->mStart:F

    return-void
.end method
