.class public final Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;
.super Ljava/lang/Object;
.source "Asn1Decoder.java"


# instance fields
.field private final blacklist mEnd:I

.field private blacklist mPosition:I

.field private final blacklist mSrc:[B


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([BII)V

    return-void
.end method

.method public constructor blacklist <init>([BII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    iput p2, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    iput v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Out of the bounds: bytes=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], offset="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", length="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getPosition()I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    return p0
.end method

.method public blacklist hasNextNode()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    iget p0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    iget v0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v1, v1, v0

    const/16 v3, 0x1f

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_0

    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    if-ge v2, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0x80

    move v2, v3

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    const/4 v3, 0x0

    if-ge v2, v1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    sub-int v4, v2, v0

    invoke-static {v1, v0, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToInt([BII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v4, v2, 0x80

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    and-int/lit8 v2, v2, 0x7f

    add-int v4, v3, v2

    iget v5, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    const-string v6, "Cannot parse length at position: "

    if-gt v4, v5, :cond_3

    :try_start_1
    invoke-static {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToInt([BII)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move v3, v4

    :goto_1
    add-int v1, v3, v2

    iget v4, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    if-gt v1, v4, :cond_2

    new-instance v4, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mSrc:[B

    invoke-direct {v4, v0, v5, v3, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;-><init>(I[BII)V

    iput v1, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mPosition:I

    return-object v4

    :cond_2
    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Incomplete data at position: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", expected bytes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", actual bytes: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->mEnd:I

    sub-int/2addr p0, v3

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_0
    move-exception p0

    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    new-instance p0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Cannot parse tag at position: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0, p0}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance p0, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid length at position: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No bytes to parse."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
