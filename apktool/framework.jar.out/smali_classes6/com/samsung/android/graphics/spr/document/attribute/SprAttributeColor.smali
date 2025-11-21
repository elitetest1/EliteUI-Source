.class public abstract Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;
.super Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
.source "SprAttributeColor.java"


# static fields
.field public static final blacklist TYPE_ARGB:B = 0x1t

.field public static final blacklist TYPE_LINEAR_GRADIENT:B = 0x3t

.field public static final blacklist TYPE_LINK:B = 0x2t

.field public static final blacklist TYPE_NONE:B = 0x0t

.field public static final blacklist TYPE_RADIAL_GRADIENT:B = 0x4t


# instance fields
.field public blacklist color:I

.field public blacklist colorType:B

.field public blacklist gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;


# direct methods
.method public constructor blacklist <init>(B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    return-void
.end method

.method public constructor blacklist <init>(BBI)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    iput-byte p2, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    if-eqz p2, :cond_2

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "unexpected stroke type:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput p3, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    :cond_2
    return-void
.end method

.method public constructor blacklist <init>(BBLcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    iput-byte p2, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    if-eqz p2, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "unexpected stroke type:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iput-object p3, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    :cond_2
    return-void
.end method

.method public constructor blacklist <init>(BLcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;-><init>(B)V

    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    invoke-virtual {p0, p2}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic blacklist clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;

    move-result-object p0

    return-object p0
.end method

.method public blacklist clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;

    iget-object p0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->clone()Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    move-result-object p0

    iput-object p0, v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->clone()Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;

    move-result-object p0

    return-object p0
.end method

.method public blacklist fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;

    invoke-direct {v0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprRadialGradient;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown fill type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte p0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;

    invoke-direct {v0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprLinearGradient;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    return-void
.end method

.method public blacklist getSPRSize()I
    .locals 3

    iget-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown fill type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte p0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->getSPRSize()I

    move-result p0

    add-int/2addr p0, v1

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist toSPR(Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown fill type:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte p0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->colorType:B

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->gradient:Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;

    invoke-virtual {p0, p1}, Lcom/samsung/android/graphics/spr/document/attribute/impl/SprGradientBase;->toSPR(Ljava/io/DataOutputStream;)V

    return-void

    :cond_2
    iget p0, p0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeColor;->color:I

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void

    :cond_3
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/io/DataOutputStream;->writeInt(I)V

    return-void
.end method
