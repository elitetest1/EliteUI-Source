.class public Landroid/text/style/BulletSpan;
.super Ljava/lang/Object;
.source "BulletSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;
.implements Landroid/text/ParcelableSpan;


# static fields
.field private static final greylist-max-o STANDARD_BULLET_RADIUS:I = 0x4

.field private static final greylist-max-o STANDARD_COLOR:I = 0x0

.field public static final whitelist STANDARD_GAP_WIDTH:I = 0x2


# instance fields
.field private final greylist-max-o mBulletRadius:I

.field private final greylist-max-p mColor:I

.field private final greylist-max-p mGapWidth:I

.field private final greylist-max-p mWantColor:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v0, v1}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    return-void
.end method

.method public constructor whitelist <init>(III)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/style/BulletSpan;-><init>(IIZI)V

    return-void
.end method

.method public constructor greylist-max-o <init>(IIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    iput p4, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    iput p2, p0, Landroid/text/style/BulletSpan;->mColor:I

    iput-boolean p3, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/text/style/BulletSpan;->mColor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    check-cast p8, Landroid/text/Spanned;

    invoke-interface {p8, p0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p6

    if-ne p6, p9, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p6

    iget-boolean p8, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    if-eqz p8, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getColor()I

    move-result p8

    iget p10, p0, Landroid/text/style/BulletSpan;->mColor:I

    invoke-virtual {p2, p10}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    const/4 p8, 0x0

    :goto_0
    sget-object p10, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    if-eqz p12, :cond_1

    invoke-virtual {p12, p9}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p9

    invoke-virtual {p12, p9}, Landroid/text/Layout;->getLineExtra(I)I

    move-result p9

    sub-int/2addr p7, p9

    :cond_1
    add-int/2addr p5, p7

    int-to-float p5, p5

    const/high16 p7, 0x40000000    # 2.0f

    div-float/2addr p5, p7

    iget p7, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    mul-int/2addr p4, p7

    add-int/2addr p3, p4

    int-to-float p3, p3

    int-to-float p4, p7

    invoke-virtual {p1, p3, p5, p4, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-boolean p0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    if-eqz p0, :cond_2

    invoke-virtual {p2, p8}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    invoke-virtual {p2, p6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_3
    return-void
.end method

.method public whitelist getBulletRadius()I
    .locals 0

    iget p0, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    return p0
.end method

.method public whitelist getColor()I
    .locals 0

    iget p0, p0, Landroid/text/style/BulletSpan;->mColor:I

    return p0
.end method

.method public whitelist getGapWidth()I
    .locals 0

    iget p0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    return p0
.end method

.method public whitelist getLeadingMargin(Z)I
    .locals 0

    iget p1, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    mul-int/lit8 p1, p1, 0x2

    iget p0, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    add-int/2addr p1, p0

    return p1
.end method

.method public whitelist getSpanTypeId()I
    .locals 0

    invoke-virtual {p0}, Landroid/text/style/BulletSpan;->getSpanTypeIdInternal()I

    move-result p0

    return p0
.end method

.method public greylist-max-o getSpanTypeIdInternal()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public blacklist getWantColor()Z
    .locals 0

    iget-boolean p0, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BulletSpan{gapWidth="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/text/style/BulletSpan;->getGapWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bulletRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/text/style/BulletSpan;->getBulletRadius()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/text/style/BulletSpan;->getColor()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%08X"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/text/style/BulletSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public greylist-max-o writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/text/style/BulletSpan;->mGapWidth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/text/style/BulletSpan;->mWantColor:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/text/style/BulletSpan;->mColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/text/style/BulletSpan;->mBulletRadius:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
