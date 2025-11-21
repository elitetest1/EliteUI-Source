.class public Landroid/renderscript/Float3;
.super Ljava/lang/Object;
.source "Float3.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist x:F

.field public whitelist y:F

.field public whitelist z:F


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/renderscript/Float3;->x:F

    iput p2, p0, Landroid/renderscript/Float3;->y:F

    iput p3, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Float3;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/renderscript/Float3;->x:F

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p1, Landroid/renderscript/Float3;->y:F

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    iput p1, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .locals 2

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    add-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    iget p0, p0, Landroid/renderscript/Float3;->z:F

    add-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .locals 3

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    iget p0, p0, Landroid/renderscript/Float3;->z:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    add-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .locals 2

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    div-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    iget p0, p0, Landroid/renderscript/Float3;->z:F

    div-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .locals 3

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    div-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    iget p0, p0, Landroid/renderscript/Float3;->z:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    div-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Ljava/lang/Float;
    .locals 4

    new-instance v0, Ljava/lang/Float;

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    iget v2, p0, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, v2

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    iget v3, p0, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    iget p0, p0, Landroid/renderscript/Float3;->z:F

    mul-float/2addr p1, p0

    add-float/2addr v1, p1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .locals 2

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    iget p0, p0, Landroid/renderscript/Float3;->z:F

    mul-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .locals 3

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    iget p0, p0, Landroid/renderscript/Float3;->z:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    mul-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Float3;F)Landroid/renderscript/Float3;
    .locals 2

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    sub-float/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    iget p0, p0, Landroid/renderscript/Float3;->z:F

    sub-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Float3;Landroid/renderscript/Float3;)Landroid/renderscript/Float3;
    .locals 3

    new-instance v0, Landroid/renderscript/Float3;

    invoke-direct {v0}, Landroid/renderscript/Float3;-><init>()V

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->x:F

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    iget v2, p1, Landroid/renderscript/Float3;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Float3;->y:F

    iget p0, p0, Landroid/renderscript/Float3;->z:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    sub-float/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Float3;->z:F

    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(F)V
    .locals 1

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p0, Landroid/renderscript/Float3;->y:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget v0, p0, Landroid/renderscript/Float3;->z:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Float3;)V
    .locals 2

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public greylist-max-o addAt(IF)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget p1, p0, Landroid/renderscript/Float3;->z:F

    add-float/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Float3;->z:F

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p1, p0, Landroid/renderscript/Float3;->y:F

    add-float/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Float3;->y:F

    return-void

    :cond_2
    iget p1, p0, Landroid/renderscript/Float3;->x:F

    add-float/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Float3;->x:F

    return-void
.end method

.method public greylist-max-o addMultiple(Landroid/renderscript/Float3;F)V
    .locals 2

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public greylist-max-o copyTo([FI)V
    .locals 2

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    aput v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    iget v1, p0, Landroid/renderscript/Float3;->y:F

    aput v1, p1, v0

    add-int/lit8 p2, p2, 0x2

    iget p0, p0, Landroid/renderscript/Float3;->z:F

    aput p0, p1, p2

    return-void
.end method

.method public greylist-max-o div(F)V
    .locals 1

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p0, Landroid/renderscript/Float3;->y:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget v0, p0, Landroid/renderscript/Float3;->z:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Float3;)V
    .locals 2

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    div-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    div-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Float3;)Ljava/lang/Float;
    .locals 4

    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p1, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Landroid/renderscript/Float3;->y:F

    iget v3, p1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget p0, p0, Landroid/renderscript/Float3;->z:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public greylist-max-o elementSum()Ljava/lang/Float;
    .locals 3

    new-instance v0, Ljava/lang/Float;

    iget v1, p0, Landroid/renderscript/Float3;->x:F

    iget v2, p0, Landroid/renderscript/Float3;->y:F

    add-float/2addr v1, v2

    iget p0, p0, Landroid/renderscript/Float3;->z:F

    add-float/2addr v1, p0

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    return-object v0
.end method

.method public greylist-max-o get(I)F
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget p0, p0, Landroid/renderscript/Float3;->z:F

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p0, p0, Landroid/renderscript/Float3;->y:F

    return p0

    :cond_2
    iget p0, p0, Landroid/renderscript/Float3;->x:F

    return p0
.end method

.method public greylist-max-o length()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public greylist-max-o mul(F)V
    .locals 1

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p0, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget v0, p0, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Float3;)V
    .locals 2

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    mul-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public greylist-max-o negate()V
    .locals 1

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p0, Landroid/renderscript/Float3;->y:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget v0, p0, Landroid/renderscript/Float3;->z:F

    neg-float v0, v0

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Float3;)V
    .locals 1

    iget v0, p1, Landroid/renderscript/Float3;->x:F

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p1, Landroid/renderscript/Float3;->y:F

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    iput p1, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public greylist-max-o setAt(IF)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iput p2, p0, Landroid/renderscript/Float3;->z:F

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput p2, p0, Landroid/renderscript/Float3;->y:F

    return-void

    :cond_2
    iput p2, p0, Landroid/renderscript/Float3;->x:F

    return-void
.end method

.method public greylist-max-o setValues(FFF)V
    .locals 0

    iput p1, p0, Landroid/renderscript/Float3;->x:F

    iput p2, p0, Landroid/renderscript/Float3;->y:F

    iput p3, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public greylist-max-o sub(F)V
    .locals 1

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p0, Landroid/renderscript/Float3;->y:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget v0, p0, Landroid/renderscript/Float3;->z:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Float3;)V
    .locals 2

    iget v0, p0, Landroid/renderscript/Float3;->x:F

    iget v1, p1, Landroid/renderscript/Float3;->x:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->x:F

    iget v0, p0, Landroid/renderscript/Float3;->y:F

    iget v1, p1, Landroid/renderscript/Float3;->y:F

    sub-float/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Float3;->y:F

    iget v0, p0, Landroid/renderscript/Float3;->z:F

    iget p1, p1, Landroid/renderscript/Float3;->z:F

    sub-float/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Float3;->z:F

    return-void
.end method
