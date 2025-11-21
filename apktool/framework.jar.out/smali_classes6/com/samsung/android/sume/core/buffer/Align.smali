.class public Lcom/samsung/android/sume/core/buffer/Align;
.super Ljava/lang/Object;
.source "Align.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Landroid/os/Parcelable;
.implements Lcom/samsung/android/sume/core/format/Copyable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Landroid/os/Parcelable;",
        "Lcom/samsung/android/sume/core/format/Copyable<",
        "Lcom/samsung/android/sume/core/buffer/Align;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/samsung/android/sume/core/buffer/Align;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/buffer/Align;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist alignOfHeight:I

.field private blacklist alignOfWidth:I

.field private blacklist scanline:I

.field private blacklist stride:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/sume/core/buffer/Align;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/buffer/Align;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/sume/core/buffer/Align$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/buffer/Align$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/buffer/Align;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sume/core/buffer/Align;->stride:I

    iput v0, p0, Lcom/samsung/android/sume/core/buffer/Align;->scanline:I

    iput v0, p0, Lcom/samsung/android/sume/core/buffer/Align;->alignOfWidth:I

    iput v0, p0, Lcom/samsung/android/sume/core/buffer/Align;->alignOfHeight:I

    return-void
.end method

.method protected constructor blacklist <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sume/core/buffer/Align;->stride:I

    iput p2, p0, Lcom/samsung/android/sume/core/buffer/Align;->scanline:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/sume/core/buffer/Align;->alignOfWidth:I

    iput p1, p0, Lcom/samsung/android/sume/core/buffer/Align;->alignOfHeight:I

    return-void
.end method

.method protected constructor blacklist <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sume/core/buffer/Align;->stride:I

    iput p2, p0, Lcom/samsung/android/sume/core/buffer/Align;->scanline:I

    iput p3, p0, Lcom/samsung/android/sume/core/buffer/Align;->alignOfWidth:I

    iput p4, p0, Lcom/samsung/android/sume/core/buffer/Align;->alignOfHeight:I

    return-void
.end method

.method protected constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/core/buffer/Align;->stride:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/core/buffer/Align;->scanline:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/sume/core/buffer/Align;->alignOfWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sume/core/buffer/Align;->alignOfHeight:I

    return-void
.end method

.method public static blacklist of(I)Lcom/samsung/android/sume/core/buffer/Align;
    .locals 3

    new-instance v0, Lcom/samsung/android/sume/core/buffer/Align;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, p0, v2}, Lcom/samsung/android/sume/core/buffer/Align;-><init>(IIII)V

    return-object v0
.end method

.method public static blacklist of(II)Lcom/samsung/android/sume/core/buffer/Align;
    .locals 2

    new-instance v0, Lcom/samsung/android/sume/core/buffer/Align;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p0, p1}, Lcom/samsung/android/sume/core/buffer/Align;-><init>(IIII)V

    return-object v0
.end method

.method public static blacklist of(IIII)Lcom/samsung/android/sume/core/buffer/Align;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/buffer/Align;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/sume/core/buffer/Align;-><init>(IIII)V

    return-object v0
.end method

.method public static blacklist scanlineOf(I)Lcom/samsung/android/sume/core/buffer/Align;
    .locals 2

    new-instance v0, Lcom/samsung/android/sume/core/buffer/Align;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/sume/core/buffer/Align;-><init>(II)V

    return-object v0
.end method

.method public static blacklist setByFormat(Lcom/samsung/android/sume/core/format/MediaFormat;)Lcom/samsung/android/sume/core/buffer/Align;
    .locals 2

    sget-object v0, Lcom/samsung/android/sume/core/buffer/Align;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getShape()Lcom/samsung/android/sume/core/format/Shape;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getChannels()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v0

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getChannels()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result p0

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/buffer/Align;->shapeOf(II)Lcom/samsung/android/sume/core/buffer/Align;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getCols()I

    move-result v0

    invoke-interface {p0}, Lcom/samsung/android/sume/core/format/MediaFormat;->getRows()I

    move-result p0

    invoke-static {v0, p0}, Lcom/samsung/android/sume/core/buffer/Align;->shapeOf(II)Lcom/samsung/android/sume/core/buffer/Align;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Lcom/samsung/android/sume/core/buffer/Align;

    invoke-direct {p0}, Lcom/samsung/android/sume/core/buffer/Align;-><init>()V

    return-object p0
.end method

.method public static blacklist shapeOf(II)Lcom/samsung/android/sume/core/buffer/Align;
    .locals 1

    new-instance v0, Lcom/samsung/android/sume/core/buffer/Align;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sume/core/buffer/Align;-><init>(II)V

    return-object v0
.end method

.method public static blacklist strideOf(I)Lcom/samsung/android/sume/core/buffer/Align;
    .locals 2

    new-instance v0, Lcom/samsung/android/sume/core/buffer/Align;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sume/core/buffer/Align;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public blacklist adjustAlign()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/sume/core/buffer/Align;->stride:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/samsung/android/sume/core/buffer/Align;->alignOfWidth:I

    if-lez v1, :cond_0

    rem-int v2, v0, v1

    if-eqz v2, :cond_0

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sume/core/buffer/Align;->stride:I

    :cond_0
    iget v0, p0, Lcom/samsung/android/sume/core/buffer/Align;->scanline:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/samsung/android/sume/core/buffer/Align;->alignOfHeight:I

    if-lez v1, :cond_1

    rem-int v2, v0, v1

    if-eqz v2, :cond_1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/sume/core/buffer/Align;->scanline:I

    :cond_1
    sget-object v0, Lcom/samsung/android/sume/core/buffer/Align;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adjust align to ["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/sume/core/buffer/Align;->stride:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/sume/core/buffer/Align;->scanline:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist compareTo(Lcom/samsung/android/sume/core/buffer/Align;)I
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/Align;->getDimension()I

    move-result p0

    invoke-virtual {p1}, Lcom/samsung/android/sume/core/buffer/Align;->getDimension()I

    move-result p1

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/samsung/android/sume/core/buffer/Align;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/buffer/Align;->compareTo(Lcom/samsung/android/sume/core/buffer/Align;)I

    move-result p0

    return p0
.end method

.method public blacklist contentToString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p0}, Lcom/samsung/android/sume/core/buffer/Align;->contentToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist contentToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/sume/core/Def;->taglnOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "stride="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/sume/core/buffer/Align;->stride:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "scanline="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/sume/core/buffer/Align;->scanline:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "width-align="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/sume/core/buffer/Align;->alignOfWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "height-align="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/samsung/android/sume/core/buffer/Align;->alignOfHeight:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, v1, v2, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/sume/core/Def;->contentToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist copy()Lcom/samsung/android/sume/core/buffer/Align;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sume/core/buffer/Align;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "fail to clone"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic blacklist copy()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/Align;->copy()Lcom/samsung/android/sume/core/buffer/Align;

    move-result-object p0

    return-object p0
.end method

.method public blacklist deepCopy()Lcom/samsung/android/sume/core/buffer/Align;
    .locals 4

    new-instance v0, Lcom/samsung/android/sume/core/buffer/Align;

    iget v1, p0, Lcom/samsung/android/sume/core/buffer/Align;->stride:I

    iget v2, p0, Lcom/samsung/android/sume/core/buffer/Align;->scanline:I

    iget v3, p0, Lcom/samsung/android/sume/core/buffer/Align;->alignOfWidth:I

    iget p0, p0, Lcom/samsung/android/sume/core/buffer/Align;->alignOfHeight:I

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/samsung/android/sume/core/buffer/Align;-><init>(IIII)V

    return-object v0
.end method

.method public bridge synthetic blacklist deepCopy()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/Align;->deepCopy()Lcom/samsung/android/sume/core/buffer/Align;

    move-result-object p0

    return-object p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getAlign()Landroid/util/Pair;
    .locals 2

    new-instance v0, Landroid/util/Pair;

    iget v1, p0, Lcom/samsung/android/sume/core/buffer/Align;->alignOfWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget p0, p0, Lcom/samsung/android/sume/core/buffer/Align;->alignOfHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public blacklist getAlignOfHeight()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sume/core/buffer/Align;->alignOfHeight:I

    return p0
.end method

.method public blacklist getAlignOfWidth()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sume/core/buffer/Align;->alignOfWidth:I

    return p0
.end method

.method public blacklist getDimension()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sume/core/buffer/Align;->stride:I

    if-lez v0, :cond_1

    iget p0, p0, Lcom/samsung/android/sume/core/buffer/Align;->scanline:I

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    mul-int/2addr v0, p0

    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getScanline()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sume/core/buffer/Align;->scanline:I

    return p0
.end method

.method public blacklist getStride()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sume/core/buffer/Align;->stride:I

    return p0
.end method

.method public blacklist set(II)Lcom/samsung/android/sume/core/buffer/Align;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sume/core/buffer/Align;->alignOfWidth:I

    iput p2, p0, Lcom/samsung/android/sume/core/buffer/Align;->alignOfHeight:I

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/Align;->adjustAlign()V

    return-object p0
.end method

.method public blacklist setAlignOfHeight(I)Lcom/samsung/android/sume/core/buffer/Align;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sume/core/buffer/Align;->alignOfHeight:I

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/Align;->adjustAlign()V

    return-object p0
.end method

.method public blacklist setAlignOfWidth(I)Lcom/samsung/android/sume/core/buffer/Align;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sume/core/buffer/Align;->alignOfWidth:I

    invoke-virtual {p0}, Lcom/samsung/android/sume/core/buffer/Align;->adjustAlign()V

    return-object p0
.end method

.method public blacklist setScanline(I)Lcom/samsung/android/sume/core/buffer/Align;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sume/core/buffer/Align;->scanline:I

    return-object p0
.end method

.method public blacklist setShape(II)Lcom/samsung/android/sume/core/buffer/Align;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sume/core/buffer/Align;->stride:I

    iput p2, p0, Lcom/samsung/android/sume/core/buffer/Align;->scanline:I

    return-object p0
.end method

.method public blacklist setStride(I)Lcom/samsung/android/sume/core/buffer/Align;
    .locals 0

    iput p1, p0, Lcom/samsung/android/sume/core/buffer/Align;->stride:I

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/samsung/android/sume/core/buffer/Align;->stride:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/samsung/android/sume/core/buffer/Align;->scanline:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
