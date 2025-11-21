.class public Lcom/samsung/android/media/SemQuramDngFingerPrint;
.super Ljava/lang/Object;
.source "SemQuramDngFingerPrint.java"


# static fields
.field static final blacklist kDNGFingerprintSize:I = 0x10


# instance fields
.field blacklist data:[B


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/media/SemQuramDngFingerPrint;->data:[B

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/media/SemQuramDngFingerPrint;->data:[B

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/media/SemQuramDngFingerPrint;->data:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist getData()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/media/SemQuramDngFingerPrint;->data:[B

    return-object p0
.end method

.method public blacklist isNull()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/media/SemQuramDngFingerPrint;->data:[B

    aget-byte v2, v2, v1

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isValid()Z
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/media/SemQuramDngFingerPrint;->isNull()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
