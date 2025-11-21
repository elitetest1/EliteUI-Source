.class Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "EmphasizedNotificationButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/EmphasizedNotificationButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CenterBesideImageSpan"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "CenterBesideImageSpan"


# instance fields
.field private blacklist mBaselineShiftOffset:I

.field private blacklist mImageHeight:I

.field private blacklist mMeasured:Z


# direct methods
.method constructor blacklist <init>(I)V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mImageHeight:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "imageHeight = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mImageHeight:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "px"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CenterBesideImageSpan"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    const-string v0, "CenterBesideImageSpan"

    if-nez p1, :cond_0

    const-string/jumbo p0, "updateDrawState: textPaint is null; doing nothing"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mMeasured:Z

    if-nez v1, :cond_1

    const-string/jumbo p0, "updateDrawState: called without measure; doing nothing"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateDrawState: baselineShiftOffset = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mBaselineShiftOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "px"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iget p0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mBaselineShiftOffset:I

    add-int/2addr v0, p0

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    return-void
.end method

.method public whitelist updateMeasureState(Landroid/text/TextPaint;)V
    .locals 3

    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    neg-float v0, v0

    float-to-int v0, v0

    iget v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mImageHeight:I

    if-ge v0, v1, :cond_0

    sub-int/2addr v1, v0

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mBaselineShiftOffset:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mBaselineShiftOffset:I

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mMeasured:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateMeasureState: imageHeight = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mImageHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "px, textHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "px, baselineShiftOffset = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mBaselineShiftOffset:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "px"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CenterBesideImageSpan"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/text/TextPaint;->baselineShift:I

    iget p0, p0, Lcom/android/internal/widget/EmphasizedNotificationButton$CenterBesideImageSpan;->mBaselineShiftOffset:I

    add-int/2addr v0, p0

    iput v0, p1, Landroid/text/TextPaint;->baselineShift:I

    return-void
.end method
