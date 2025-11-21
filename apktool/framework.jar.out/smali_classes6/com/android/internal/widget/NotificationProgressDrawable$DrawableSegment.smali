.class public final Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;
.super Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;
.source "NotificationProgressDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/NotificationProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrawableSegment"
.end annotation


# instance fields
.field private final blacklist mFaded:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmFaded(Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->mFaded:Z

    return p0
.end method

.method public constructor blacklist <init>(FFI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;-><init>(FFIZ)V

    return-void
.end method

.method public constructor blacklist <init>(FFIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;-><init>(FFI)V

    iput-boolean p4, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->mFaded:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2

    invoke-super {p0, p1}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;

    iget-boolean p0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->mFaded:Z

    iget-boolean p1, p1, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->mFaded:Z

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/android/internal/widget/NotificationProgressDrawable$DrawablePart;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean p0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->mFaded:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Segment(start="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->mStart:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->mEnd:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->mColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", faded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/internal/widget/NotificationProgressDrawable$DrawableSegment;->mFaded:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
