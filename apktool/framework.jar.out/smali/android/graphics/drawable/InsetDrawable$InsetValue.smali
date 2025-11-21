.class final Landroid/graphics/drawable/InsetDrawable$InsetValue;
.super Ljava/lang/Object;
.source "InsetDrawable.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/InsetDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InsetValue"
.end annotation


# instance fields
.field greylist-max-o mDimension:I

.field final greylist-max-o mFraction:F


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    return-void
.end method

.method public constructor greylist-max-o <init>(FI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    iput p2, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    return-void
.end method


# virtual methods
.method public blacklist clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;
    .locals 2

    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetValue;

    iget v1, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    iget p0, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    invoke-direct {v0, v1, p0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;-><init>(FI)V

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable$InsetValue;->clone()Landroid/graphics/drawable/InsetDrawable$InsetValue;

    move-result-object p0

    return-object p0
.end method

.method greylist-max-o getDimension(I)I
    .locals 1

    int-to-float p1, p1

    iget v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mFraction:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iget p0, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    add-int/2addr p1, p0

    return p1
.end method

.method greylist-max-o scaleFromDensity(II)V
    .locals 1

    iget v0, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Landroid/graphics/Bitmap;->scaleFromDensity(III)I

    move-result p1

    iput p1, p0, Landroid/graphics/drawable/InsetDrawable$InsetValue;->mDimension:I

    :cond_0
    return-void
.end method
