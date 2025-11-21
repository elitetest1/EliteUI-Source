.class public Lcom/android/modules/utils/ModifiedUtf8;
.super Ljava/lang/Object;
.source "ModifiedUtf8.java"


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist countBytes(Ljava/lang/String;Z)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eqz v4, :cond_0

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_0

    const-wide/16 v4, 0x1

    goto :goto_1

    :cond_0
    const/16 v5, 0x7ff

    if-gt v4, v5, :cond_1

    const-wide/16 v4, 0x2

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x3

    :goto_1
    add-long/2addr v1, v4

    if-eqz p1, :cond_3

    const-wide/32 v4, 0xffff

    cmp-long v4, v1, v4

    if-gtz v4, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/io/UTFDataFormatException;

    const-string p1, "String more than 65535 UTF bytes long"

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-wide v1
.end method

.method public static blacklist decode([B[CII)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UTFDataFormatException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p3, :cond_7

    add-int/lit8 v3, v1, 0x1

    add-int v4, p2, v1

    aget-byte v4, p0, v4

    int-to-char v4, v4

    aput-char v4, p1, v2

    const/16 v5, 0x80

    if-ge v4, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_0

    :cond_0
    and-int/lit16 v6, v4, 0xe0

    const/16 v7, 0xc0

    if-ne v6, v7, :cond_3

    const-string v6, "bad second byte at "

    if-ge v3, p3, :cond_2

    add-int/lit8 v7, v1, 0x2

    add-int/2addr v3, p2

    aget-byte v3, p0, v3

    and-int/lit16 v8, v3, 0xc0

    if-ne v8, v5, :cond_1

    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v4, v4, 0x1f

    shl-int/lit8 v4, v4, 0x6

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, p1, v2

    :goto_1
    move v2, v1

    move v1, v7

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/UTFDataFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/UTFDataFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    and-int/lit16 v6, v4, 0xf0

    const/16 v7, 0xe0

    if-ne v6, v7, :cond_6

    add-int/lit8 v6, v1, 0x2

    if-ge v6, p3, :cond_5

    add-int/2addr v3, p2

    aget-byte v3, p0, v3

    add-int/lit8 v7, v1, 0x3

    add-int/2addr v6, p2

    aget-byte v6, p0, v6

    and-int/lit16 v8, v3, 0xc0

    if-ne v8, v5, :cond_4

    and-int/lit16 v8, v6, 0xc0

    if-ne v8, v5, :cond_4

    add-int/lit8 v1, v2, 0x1

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0xc

    and-int/lit8 v3, v3, 0x3f

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v3, v4

    and-int/lit8 v4, v6, 0x3f

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, p1, v2

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/io/UTFDataFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "bad second or third byte at "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/io/UTFDataFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "bad third byte at "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/io/UTFDataFormatException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "bad byte at "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/UTFDataFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v2}, Ljava/lang/String;-><init>([CII)V

    return-object p0
.end method

.method public static blacklist encode([BILjava/lang/String;)V
    .locals 6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0x7f

    if-gt v2, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    move p1, v3

    goto :goto_1

    :cond_0
    const/16 v3, 0x7ff

    if-gt v2, v3, :cond_1

    add-int/lit8 v3, p1, 0x1

    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x1f

    or-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    add-int/lit8 p1, p1, 0x2

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, p1, 0x1

    shr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/lit16 v4, v4, 0xe0

    int-to-byte v4, v4

    aput-byte v4, p0, p1

    add-int/lit8 v4, p1, 0x2

    shr-int/lit8 v5, v2, 0x6

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, p0, v3

    add-int/lit8 p1, p1, 0x3

    and-int/lit8 v2, v2, 0x3f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, p0, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
