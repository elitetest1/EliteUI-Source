.class public final Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceRootKeyServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeviceInfo"
.end annotation


# static fields
.field public static final blacklist DEVICE_INFO_ALL:I = 0xe

.field private static final blacklist DEVICE_INFO_EMPTY:I = 0x0

.field public static final blacklist DEVICE_INFO_IMEI:I = 0x4

.field public static final blacklist DEVICE_INFO_IMEI_MODEM:I = 0x6

.field public static final blacklist DEVICE_INFO_IMEI_SERIAL:I = 0xc

.field public static final blacklist DEVICE_INFO_INTEGRITY_STATUS:I = 0x1

.field public static final blacklist DEVICE_INFO_MODEM:I = 0x2

.field public static final blacklist DEVICE_INFO_MODEM_SERIAL:I = 0xa

.field public static final blacklist DEVICE_INFO_SERIAL:I = 0x8

.field private static final blacklist DEVICE_STATUS_IS_INVALID:B = 0x0t

.field private static final blacklist DEVICE_STATUS_IS_VALID:B = 0x1t

.field private static final blacklist MAX_SHA256_LENGTH:I = 0x20

.field private static final blacklist MAX_STATUS_LENGTH:I = 0x1

.field private static final blacklist TLV_EX_BASE:I = 0x64


# instance fields
.field private blacklist mImeiHash:[B

.field private blacklist mIsHuidMatched:Z

.field private blacklist mModemHash:[B

.field private blacklist mSerialHash:[B


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mImeiHash:[B

    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mModemHash:[B

    iput-object v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mSerialHash:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mIsHuidMatched:Z

    and-int/lit8 v1, p2, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->-$$Nest$fgetmTlvEx(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTlvValue(I)[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v3, v1

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->isValidLength(II)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mModemHash:[B

    :cond_0
    and-int/lit8 v1, p2, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->-$$Nest$fgetmTlvEx(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    move-result-object v1

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTlvValue(I)[B

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v3, v1

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->isValidLength(II)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iput-object v1, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mImeiHash:[B

    :cond_1
    const/16 v1, 0x8

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_2

    invoke-static {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->-$$Nest$fgetmTlvEx(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    move-result-object p2

    const/16 v1, 0x6c

    invoke-virtual {p2, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTlvValue(I)[B

    move-result-object p2

    if-eqz p2, :cond_2

    array-length v2, p2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->isValidLength(II)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    iput-object p2, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mSerialHash:[B

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;->-$$Nest$fgetmTlvEx(Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager;)Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;

    move-result-object p1

    const/16 p2, 0x65

    invoke-virtual {p1, p2}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$TlvEx;->getTlvValue(I)[B

    move-result-object p1

    if-eqz p1, :cond_4

    array-length v1, p1

    invoke-direct {p0, p2, v1}, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->isValidLength(II)Z

    move-result p2

    if-eqz p2, :cond_4

    aget-byte p1, p1, v0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    move v0, p2

    :cond_3
    iput-boolean v0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mIsHuidMatched:Z

    :cond_4
    return-void
.end method

.method private blacklist isValidLength(II)Z
    .locals 2

    add-int/lit8 p1, p1, -0x64

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    return p0

    :cond_0
    const/16 p1, 0x20

    if-eq p2, p1, :cond_2

    return p0

    :cond_1
    if-eq p2, v0, :cond_2

    return p0

    :cond_2
    return v0
.end method


# virtual methods
.method public blacklist getImei()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mImeiHash:[B

    return-object p0
.end method

.method public blacklist getModem()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mModemHash:[B

    return-object p0
.end method

.method public blacklist getSerial()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mSerialHash:[B

    return-object p0
.end method

.method public blacklist isHuidMatched()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/service/DeviceRootKeyService/DeviceRootKeyServiceManager$DeviceInfo;->mIsHuidMatched:Z

    return p0
.end method
