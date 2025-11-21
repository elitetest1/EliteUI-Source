.class public Landroid/text/style/SuperscriptSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "SuperscriptSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getSpanTypeId()I
    .locals 0

    invoke-virtual {p0}, Landroid/text/style/SuperscriptSpan;->getSpanTypeIdInternal()I

    move-result p0

    return p0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .locals 0

    const/16 p0, 0xe

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 0

    const-string p0, "SuperscriptSpan{}"

    return-object p0
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .locals 2

    iget p0, p1, Landroid/text/TextPaint;->baselineShift:I

    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr p0, v0

    iput p0, p1, Landroid/text/TextPaint;->baselineShift:I

    return-void
.end method

.method public whitelist updateMeasureState(Landroid/text/TextPaint;)V
    .locals 2

    iget p0, p1, Landroid/text/TextPaint;->baselineShift:I

    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr p0, v0

    iput p0, p1, Landroid/text/TextPaint;->baselineShift:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/style/SuperscriptSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
