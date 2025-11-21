.class Landroid/media/Cea608CCParser$PAC;
.super Landroid/media/Cea608CCParser$StyleCode;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/Cea608CCParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PAC"
.end annotation


# instance fields
.field final greylist-max-o mCol:I

.field final greylist-max-o mRow:I


# direct methods
.method constructor greylist-max-o <init>(IIII)V
    .locals 0

    invoke-direct {p0, p3, p4}, Landroid/media/Cea608CCParser$StyleCode;-><init>(II)V

    iput p1, p0, Landroid/media/Cea608CCParser$PAC;->mRow:I

    iput p2, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    return-void
.end method

.method static greylist-max-o fromBytes(BB)Landroid/media/Cea608CCParser$PAC;
    .locals 4

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const/4 v1, 0x7

    and-int/2addr p0, v1

    aget p0, v0, p0

    and-int/lit8 v0, p1, 0x20

    shr-int/lit8 v0, v0, 0x5

    add-int/2addr p0, v0

    and-int/lit8 v0, p1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    and-int/lit8 v3, p1, 0x10

    if-eqz v3, :cond_1

    shr-int/lit8 p1, p1, 0x1

    and-int/2addr p1, v1

    new-instance v1, Landroid/media/Cea608CCParser$PAC;

    mul-int/lit8 p1, p1, 0x4

    invoke-direct {v1, p0, p1, v0, v2}, Landroid/media/Cea608CCParser$PAC;-><init>(IIII)V

    return-object v1

    :cond_1
    shr-int/lit8 p1, p1, 0x1

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, p1

    :goto_1
    new-instance p1, Landroid/media/Cea608CCParser$PAC;

    const/4 v1, -0x1

    invoke-direct {p1, p0, v1, v0, v2}, Landroid/media/Cea608CCParser$PAC;-><init>(IIII)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0xb
        0x1
        0x3
        0xc
        0xe
        0x5
        0x7
        0x9
    .end array-data
.end method


# virtual methods
.method greylist-max-o getCol()I
    .locals 0

    iget p0, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    return p0
.end method

.method greylist-max-o getRow()I
    .locals 0

    iget p0, p0, Landroid/media/Cea608CCParser$PAC;->mRow:I

    return p0
.end method

.method greylist-max-o isIndentPAC()Z
    .locals 0

    iget p0, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/media/Cea608CCParser$PAC;->mRow:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/media/Cea608CCParser$PAC;->mCol:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-super {p0}, Landroid/media/Cea608CCParser$StyleCode;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "{%d, %d}, %s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
