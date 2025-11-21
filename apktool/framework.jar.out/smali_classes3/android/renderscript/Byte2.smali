.class public Landroid/renderscript/Byte2;
.super Ljava/lang/Object;
.source "Byte2.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public whitelist x:B

.field public whitelist y:B


# direct methods
.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(BB)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/renderscript/Byte2;->x:B

    iput-byte p2, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/renderscript/Byte2;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-byte v0, p1, Landroid/renderscript/Byte2;->x:B

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public static greylist-max-o add(Landroid/renderscript/Byte2;B)Landroid/renderscript/Byte2;
    .locals 2

    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    add-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    add-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method

.method public static greylist-max-o add(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)Landroid/renderscript/Byte2;
    .locals 3

    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte2;->x:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    add-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Byte2;B)Landroid/renderscript/Byte2;
    .locals 2

    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    div-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    div-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method

.method public static greylist-max-o div(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)Landroid/renderscript/Byte2;
    .locals 3

    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte2;->x:B

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    div-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method

.method public static greylist-max-o dotProduct(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)B
    .locals 2

    iget-byte v0, p1, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v0, v1

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr p1, p0

    add-int/2addr v0, p1

    int-to-byte p0, v0

    return p0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Byte2;B)Landroid/renderscript/Byte2;
    .locals 2

    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method

.method public static greylist-max-o mul(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)Landroid/renderscript/Byte2;
    .locals 3

    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Byte2;B)Landroid/renderscript/Byte2;
    .locals 2

    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    sub-int/2addr v1, p1

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    sub-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method

.method public static greylist-max-o sub(Landroid/renderscript/Byte2;Landroid/renderscript/Byte2;)Landroid/renderscript/Byte2;
    .locals 3

    new-instance v0, Landroid/renderscript/Byte2;

    invoke-direct {v0}, Landroid/renderscript/Byte2;-><init>()V

    iget-byte v1, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v2, p1, Landroid/renderscript/Byte2;->x:B

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Landroid/renderscript/Byte2;->x:B

    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    sub-int/2addr p0, p1

    int-to-byte p0, p0

    iput-byte p0, v0, Landroid/renderscript/Byte2;->y:B

    return-object v0
.end method


# virtual methods
.method public greylist-max-o add(B)V
    .locals 1

    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    add-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public greylist-max-o add(Landroid/renderscript/Byte2;)V
    .locals 2

    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public greylist-max-o addAt(IB)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    add-int/2addr p1, p2

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-byte p1, p0, Landroid/renderscript/Byte2;->x:B

    add-int/2addr p1, p2

    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/renderscript/Byte2;->x:B

    return-void
.end method

.method public greylist-max-o addMultiple(Landroid/renderscript/Byte2;B)V
    .locals 2

    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr p1, p2

    add-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public greylist-max-o copyTo([BI)V
    .locals 1

    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    aput-byte v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    aput-byte p0, p1, p2

    return-void
.end method

.method public greylist-max-o div(B)V
    .locals 1

    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    div-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    div-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public greylist-max-o div(Landroid/renderscript/Byte2;)V
    .locals 2

    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    div-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public greylist-max-o dotProduct(Landroid/renderscript/Byte2;)B
    .locals 2

    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v0, v1

    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr p0, p1

    add-int/2addr v0, p0

    int-to-byte p0, v0

    return p0
.end method

.method public greylist-max-o elementSum()B
    .locals 1

    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    add-int/2addr v0, p0

    int-to-byte p0, v0

    return p0
.end method

.method public greylist-max-o get(I)B
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-byte p0, p0, Landroid/renderscript/Byte2;->y:B

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-byte p0, p0, Landroid/renderscript/Byte2;->x:B

    return p0
.end method

.method public greylist-max-o length()B
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public greylist-max-o mul(B)V
    .locals 1

    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public greylist-max-o mul(Landroid/renderscript/Byte2;)V
    .locals 2

    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    mul-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    mul-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public greylist-max-o negate()V
    .locals 1

    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    neg-int v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public greylist-max-o set(Landroid/renderscript/Byte2;)V
    .locals 1

    iget-byte v0, p1, Landroid/renderscript/Byte2;->x:B

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public greylist-max-o setAt(IB)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iput-byte p2, p0, Landroid/renderscript/Byte2;->y:B

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Index: i"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput-byte p2, p0, Landroid/renderscript/Byte2;->x:B

    return-void
.end method

.method public greylist-max-o setValues(BB)V
    .locals 0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->x:B

    iput-byte p2, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public greylist-max-o sub(B)V
    .locals 1

    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    sub-int/2addr v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    sub-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method

.method public greylist-max-o sub(Landroid/renderscript/Byte2;)V
    .locals 2

    iget-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v1, p1, Landroid/renderscript/Byte2;->x:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/renderscript/Byte2;->x:B

    iget-byte v0, p0, Landroid/renderscript/Byte2;->y:B

    iget-byte p1, p1, Landroid/renderscript/Byte2;->y:B

    sub-int/2addr v0, p1

    int-to-byte p1, v0

    iput-byte p1, p0, Landroid/renderscript/Byte2;->y:B

    return-void
.end method
