.class public Landroid/renderscript/Double2;
.super Ljava/lang/Object;
.source "Double2.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist x:D

.field public whitelist y:D


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(DD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/renderscript/Double2;->x:D

    iput-wide p3, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Double2;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p1, Landroid/renderscript/Double2;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .locals 3

    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    add-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .locals 5

    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double2;->x:D

    add-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    iget-wide p0, p1, Landroid/renderscript/Double2;->y:D

    add-double/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .locals 3

    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    div-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .locals 5

    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double2;->x:D

    div-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    iget-wide p0, p1, Landroid/renderscript/Double2;->y:D

    div-double/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Ljava/lang/Double;
    .locals 4

    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    iget-wide p0, p0, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .locals 3

    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .locals 5

    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    iget-wide p0, p1, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Double2;D)Landroid/renderscript/Double2;
    .locals 3

    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    sub-double/2addr v1, p1

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Double2;Landroid/renderscript/Double2;)Landroid/renderscript/Double2;
    .locals 5

    new-instance v0, Landroid/renderscript/Double2;

    invoke-direct {v0}, Landroid/renderscript/Double2;-><init>()V

    iget-wide v1, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v3, p1, Landroid/renderscript/Double2;->x:D

    sub-double/2addr v1, v3

    iput-wide v1, v0, Landroid/renderscript/Double2;->x:D

    iget-wide v1, p0, Landroid/renderscript/Double2;->y:D

    iget-wide p0, p1, Landroid/renderscript/Double2;->y:D

    sub-double/2addr v1, p0

    iput-wide v1, v0, Landroid/renderscript/Double2;->y:D

    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(D)V
    .locals 2

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Double2;)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public greylist-max-o addAt(ID)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    return-void
.end method

.method public greylist-max-o addMultiple(Landroid/renderscript/Double2;D)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v2, p2

    add-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public greylist-max-o copyTo([DI)V
    .locals 2

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    aput-wide v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    aput-wide v0, p1, p2

    return-void
.end method

.method public greylist-max-o div(D)V
    .locals 2

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    div-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Double2;)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    div-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Double2;)D
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    iget-wide p0, p1, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o elementSum()D
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p0, Landroid/renderscript/Double2;->y:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public greylist-max-o get(I)D
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-wide p0, p0, Landroid/renderscript/Double2;->y:D

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-wide p0, p0, Landroid/renderscript/Double2;->x:D

    return-wide p0
.end method

.method public greylist-max-o length()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public greylist-max-o mul(D)V
    .locals 2

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Double2;)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public greylist-max-o negate()V
    .locals 2

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    neg-double v0, v0

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Double2;)V
    .locals 2

    iget-wide v0, p1, Landroid/renderscript/Double2;->x:D

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p1, Landroid/renderscript/Double2;->y:D

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public greylist-max-o setAt(ID)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-wide p2, p0, Landroid/renderscript/Double2;->y:D

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput-wide p2, p0, Landroid/renderscript/Double2;->x:D

    return-void
.end method

.method public greylist-max-o setValues(DD)V
    .locals 0

    iput-wide p1, p0, Landroid/renderscript/Double2;->x:D

    iput-wide p3, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public greylist-max-o sub(D)V
    .locals 2

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Double2;)V
    .locals 4

    iget-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->x:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->x:D

    iget-wide v0, p0, Landroid/renderscript/Double2;->y:D

    iget-wide v2, p1, Landroid/renderscript/Double2;->y:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Landroid/renderscript/Double2;->y:D

    return-void
.end method
