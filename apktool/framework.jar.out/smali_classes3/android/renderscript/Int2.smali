.class public Landroid/renderscript/Int2;
.super Ljava/lang/Object;
.source "Int2.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist x:I

.field public whitelist y:I


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor greylist-max-o <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/renderscript/Int2;->y:I

    iput p1, p0, Landroid/renderscript/Int2;->x:I

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/renderscript/Int2;->x:I

    iput p2, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Int2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Landroid/renderscript/Int2;->x:I

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    iput p1, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2

    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    iget v1, p0, Landroid/renderscript/Int2;->x:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    iget p0, p0, Landroid/renderscript/Int2;->y:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3

    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    iget p0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    add-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2

    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    iget v1, p0, Landroid/renderscript/Int2;->x:I

    div-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    iget p0, p0, Landroid/renderscript/Int2;->y:I

    div-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3

    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    div-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    iget p0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    div-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)I
    .locals 2

    iget v0, p1, Landroid/renderscript/Int2;->x:I

    iget v1, p0, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v0, v1

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    iget p0, p0, Landroid/renderscript/Int2;->y:I

    mul-int/2addr p1, p0

    add-int/2addr v0, p1

    return v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2

    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    iget v1, p0, Landroid/renderscript/Int2;->x:I

    rem-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    iget p0, p0, Landroid/renderscript/Int2;->y:I

    rem-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static greylist-max-o mod(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3

    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    rem-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    iget p0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    rem-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2

    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    iget v1, p0, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    iget p0, p0, Landroid/renderscript/Int2;->y:I

    mul-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3

    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    iget p0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    mul-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Int2;I)Landroid/renderscript/Int2;
    .locals 2

    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    iget v1, p0, Landroid/renderscript/Int2;->x:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    iget p0, p0, Landroid/renderscript/Int2;->y:I

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Int2;Landroid/renderscript/Int2;)Landroid/renderscript/Int2;
    .locals 3

    new-instance v0, Landroid/renderscript/Int2;

    invoke-direct {v0}, Landroid/renderscript/Int2;-><init>()V

    iget v1, p0, Landroid/renderscript/Int2;->x:I

    iget v2, p1, Landroid/renderscript/Int2;->x:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/renderscript/Int2;->x:I

    iget p0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/renderscript/Int2;->y:I

    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(I)V
    .locals 1

    iget v0, p0, Landroid/renderscript/Int2;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    iget v0, p0, Landroid/renderscript/Int2;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Int2;)V
    .locals 2

    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public greylist-max-o addAt(II)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Landroid/renderscript/Int2;->y:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Int2;->y:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p1, p0, Landroid/renderscript/Int2;->x:I

    add-int/2addr p1, p2

    iput p1, p0, Landroid/renderscript/Int2;->x:I

    return-void
.end method

.method public greylist-max-o addMultiple(Landroid/renderscript/Int2;I)V
    .locals 2

    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    mul-int/2addr p1, p2

    add-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public greylist-max-o copyTo([II)V
    .locals 1

    iget v0, p0, Landroid/renderscript/Int2;->x:I

    aput v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    iget p0, p0, Landroid/renderscript/Int2;->y:I

    aput p0, p1, p2

    return-void
.end method

.method public greylist-max-o div(I)V
    .locals 1

    iget v0, p0, Landroid/renderscript/Int2;->x:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    iget v0, p0, Landroid/renderscript/Int2;->y:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Int2;)V
    .locals 2

    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    div-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Int2;)I
    .locals 2

    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v0, v1

    iget p0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    mul-int/2addr p0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public greylist-max-o elementSum()I
    .locals 1

    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget p0, p0, Landroid/renderscript/Int2;->y:I

    add-int/2addr v0, p0

    return v0
.end method

.method public greylist-max-o get(I)I
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget p0, p0, Landroid/renderscript/Int2;->y:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget p0, p0, Landroid/renderscript/Int2;->x:I

    return p0
.end method

.method public greylist-max-o length()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public greylist-max-o mod(I)V
    .locals 1

    iget v0, p0, Landroid/renderscript/Int2;->x:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    iget v0, p0, Landroid/renderscript/Int2;->y:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public greylist-max-o mod(Landroid/renderscript/Int2;)V
    .locals 2

    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    rem-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    rem-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public greylist-max-o mul(I)V
    .locals 1

    iget v0, p0, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    iget v0, p0, Landroid/renderscript/Int2;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Int2;)V
    .locals 2

    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    mul-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    mul-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public greylist-max-o negate()V
    .locals 1

    iget v0, p0, Landroid/renderscript/Int2;->x:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    iget v0, p0, Landroid/renderscript/Int2;->y:I

    neg-int v0, v0

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Int2;)V
    .locals 1

    iget v0, p1, Landroid/renderscript/Int2;->x:I

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    iput p1, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public greylist-max-o setAt(II)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput p2, p0, Landroid/renderscript/Int2;->y:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput p2, p0, Landroid/renderscript/Int2;->x:I

    return-void
.end method

.method public greylist-max-o setValues(II)V
    .locals 0

    iput p1, p0, Landroid/renderscript/Int2;->x:I

    iput p2, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public greylist-max-o sub(I)V
    .locals 1

    iget v0, p0, Landroid/renderscript/Int2;->x:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    iget v0, p0, Landroid/renderscript/Int2;->y:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Int2;)V
    .locals 2

    iget v0, p0, Landroid/renderscript/Int2;->x:I

    iget v1, p1, Landroid/renderscript/Int2;->x:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/renderscript/Int2;->x:I

    iget v0, p0, Landroid/renderscript/Int2;->y:I

    iget p1, p1, Landroid/renderscript/Int2;->y:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/renderscript/Int2;->y:I

    return-void
.end method
