.class public final Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
.super Ljava/lang/Object;
.source "Tlv.java"


# static fields
.field public static final blacklist TAG_LENGTH_FIELD_LEN:I = 0x3

.field public static final blacklist TLV_TAG_DN_QUALIFIER:I = 0x6

.field public static final blacklist TLV_TAG_EXPONENT:I = 0x1

.field public static final blacklist TLV_TAG_EXT_KEYUSAGE:I = 0x7

.field public static final blacklist TLV_TAG_HASH_ALGO:I = 0x3

.field public static final blacklist TLV_TAG_ISSUER:I = 0x2

.field public static final blacklist TLV_TAG_KEYUSAGE:I = 0x5

.field private static final blacklist TLV_TAG_MAX:I = 0x1e

.field public static final blacklist TLV_TAG_SUBJECT:I = 0x4

.field public static final blacklist TLV_TAG_SUBJECT_ALTER_NAME:I = 0x1d


# instance fields
.field private blacklist mTlvList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private blacklist mTotalLength:I


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTotalLength:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTlvList:Ljava/util/HashMap;

    return-void
.end method

.method public static blacklist decodeTlv([BII)Lcom/samsung/android/service/DeviceRootKeyService/Tlv;
    .locals 8

    new-instance v0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;

    invoke-direct {v0}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ge p2, v2, :cond_0

    return-object v1

    :cond_0
    const/4 v3, 0x0

    aget-byte v4, p0, v3

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v1, p1, 0x1

    const/4 v4, 0x2

    invoke-static {p0, v1, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTotalSize(I)V

    :goto_0
    if-ge v2, p2, :cond_2

    aget-byte v1, p0, v2

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    add-int/lit8 v5, v2, 0x1

    add-int/2addr v5, p1

    invoke-static {p0, v5, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    add-int/lit8 v2, v2, 0x3

    new-array v6, v5, [B

    add-int v7, p1, v2

    invoke-static {p0, v7, v6, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v5

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->setTlvOnly(I[B)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public blacklist encodeTlv()[B
    .locals 10

    iget v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTotalLength:I

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v2, -0x2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTotalLength:I

    int-to-short v5, v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x1

    invoke-static {v4, v3, v0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTlvList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    iget-object v7, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTlvList:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    array-length v9, v7

    int-to-short v9, v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Integer;->byteValue()B

    move-result v6

    aput-byte v6, v0, v5

    add-int/lit8 v6, v5, 0x1

    array-length v9, v8

    invoke-static {v8, v3, v0, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v1

    array-length v6, v7

    invoke-static {v7, v3, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v7

    add-int/2addr v5, v6

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public blacklist getTlvValue(I)[B
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1e

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTlvList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getTotalSize()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTotalLength:I

    return p0
.end method

.method public blacklist setTlv(I[B)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v1, 0x1e

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTlvList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTotalLength:I

    array-length p2, p2

    add-int/lit8 p2, p2, 0x3

    add-int/2addr p1, p2

    iput p1, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTotalLength:I

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setTlvOnly(I[B)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/16 v1, 0x1e

    if-ge p1, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTlvList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setTotalSize(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/service/DeviceRootKeyService/Tlv;->mTotalLength:I

    return-void
.end method
