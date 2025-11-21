.class public Landroid/text/style/StyleSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "StyleSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;


# instance fields
.field private final blacklist mFontWeightAdjustment:I

.field private final greylist-max-o mStyle:I


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Landroid/text/style/StyleSpan;-><init>(II)V

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    iput p1, p0, Landroid/text/style/StyleSpan;->mStyle:I

    iput p2, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    return-void
.end method

.method private static blacklist apply(Landroid/graphics/Paint;II)V
    .locals 7

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    :goto_0
    or-int/2addr v2, p1

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSkewX()F

    move-result v3

    const/high16 v4, -0x41800000    # -0.25f

    cmpl-float v3, v3, v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v3, :cond_1

    if-ne p1, v6, :cond_1

    invoke-static {v5}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v3

    if-ne v0, v3, :cond_1

    invoke-static {v6}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    :goto_1
    and-int/2addr p1, v6

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    const p1, 0x7fffffff

    if-eq p2, p1, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Typeface;->getWeight()I

    move-result p1

    add-int/2addr p1, p2

    invoke-static {p1, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 p2, 0x3e8

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    and-int/lit8 p2, v2, 0x2

    if-eqz p2, :cond_3

    move v1, v6

    :cond_3
    invoke-static {v0, p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result p1

    not-int p1, p1

    and-int/2addr p1, v2

    and-int/lit8 p2, p1, 0x1

    if-eqz p2, :cond_5

    invoke-virtual {p0, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    :cond_5
    and-int/2addr p1, v5

    if-eqz p1, :cond_6

    invoke-virtual {p0, v4}, Landroid/graphics/Paint;->setTextSkewX(F)V

    :cond_6
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getFontWeightAdjustment()I
    .locals 0

    iget p0, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    return p0
.end method

.method public whitelist getSpanTypeId()I
    .locals 0

    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getSpanTypeIdInternal()I

    move-result p0

    return p0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public whitelist getStyle()I
    .locals 0

    iget p0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StyleSpan{style="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fontWeightAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/text/style/StyleSpan;->getFontWeightAdjustment()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    iget p0, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    invoke-static {p1, v0, p0}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;II)V

    return-void
.end method

.method public whitelist updateMeasureState(Landroid/text/TextPaint;)V
    .locals 1

    iget v0, p0, Landroid/text/style/StyleSpan;->mStyle:I

    iget p0, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    invoke-static {p1, v0, p0}, Landroid/text/style/StyleSpan;->apply(Landroid/graphics/Paint;II)V

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/style/StyleSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/text/style/StyleSpan;->mStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/text/style/StyleSpan;->mFontWeightAdjustment:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
