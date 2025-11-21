.class final Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;
.super Ljava/lang/Object;
.source "DeviceRootKeyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TlvEx"
.end annotation


# static fields
.field private static final blacklist LENGTH_FIELD_SIZE:I = 0x2

.field private static final blacklist TAGLENGTH_FIELD_SIZE:I = 0x3

.field private static final blacklist TAG_FIELD_SIZE:I = 0x1

.field private static final blacklist TLV_TAG_START:I = 0xfe


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


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->mTlvList:Ljava/util/HashMap;

    invoke-direct {p0, p2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->parseTlv([B)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to parse Tlv."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist getLength([BI)I
    .locals 0

    add-int/lit8 p0, p2, 0x1

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    return p0
.end method

.method private blacklist getTag([BI)I
    .locals 0

    aget-byte p0, p1, p2

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private blacklist parseTlv([B)Z
    .locals 7

    const-string v0, "DEVROOT#MGR"

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    array-length v2, p1

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTag([BI)I

    move-result v2

    const/4 v4, 0x1

    invoke-direct {p0, p1, v4}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getLength([BI)I

    move-result v5

    const/16 v6, 0xfe

    if-ne v2, v6, :cond_4

    add-int/2addr v5, v3

    array-length v2, p1

    if-eq v5, v2, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    add-int/lit8 v0, v3, 0x3

    array-length v2, p1

    if-gt v0, v2, :cond_3

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTag([BI)I

    move-result v0

    add-int/lit8 v2, v3, 0x1

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getLength([BI)I

    move-result v2

    add-int/lit8 v3, v3, 0x3

    add-int v5, v3, v2

    array-length v6, p1

    if-gt v5, v6, :cond_2

    new-array v6, v2, [B

    invoke-static {p1, v3, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->mTlvList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    return v4

    :cond_4
    :goto_1
    const-string p0, "Failed to read TLV header"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    :goto_2
    const-string p0, "Invalid argument"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method


# virtual methods
.method public blacklist getTlvValue(I)[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->mTlvList:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method
