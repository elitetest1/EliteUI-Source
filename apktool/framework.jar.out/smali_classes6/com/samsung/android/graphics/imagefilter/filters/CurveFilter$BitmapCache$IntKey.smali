.class Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;
.super Ljava/lang/Object;
.source "CurveFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntKey"
.end annotation


# instance fields
.field final blacklist i1:I

.field final blacklist i2:I

.field final blacklist i3:I

.field final blacklist i4:I

.field final blacklist i5:I


# direct methods
.method constructor blacklist <init>(FFFFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;->i1:I

    mul-float/2addr p2, v0

    float-to-int p1, p2

    iput p1, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;->i2:I

    mul-float/2addr p3, v0

    float-to-int p1, p3

    iput p1, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;->i3:I

    mul-float/2addr p4, v0

    float-to-int p1, p4

    iput p1, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;->i4:I

    mul-float/2addr p5, v0

    float-to-int p1, p5

    iput p1, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;->i5:I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;

    iget v0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;->i1:I

    iget v2, p1, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;->i1:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;->i2:I

    iget v2, p1, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;->i2:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;->i3:I

    iget v2, p1, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;->i3:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;->i4:I

    iget v2, p1, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;->i4:I

    if-ne v0, v2, :cond_1

    iget p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;->i5:I

    iget p1, p1, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;->i5:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;->i1:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;->i2:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;->i3:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;->i4:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/samsung/android/graphics/imagefilter/filters/CurveFilter$BitmapCache$IntKey;->i5:I

    add-int/2addr v0, p0

    return v0
.end method
