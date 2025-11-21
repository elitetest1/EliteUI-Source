.class public Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;
.super Ljava/lang/Object;
.source "SemMobileWipsWifiSsid.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final blacklist CHARSET_ALL:Ljava/lang/String; = "EUC-KR"

.field private static final blacklist CHARSET_CN:Ljava/lang/String; = "gbk"

.field private static final blacklist CHARSET_KOR:Ljava/lang/String; = "ksc5601"

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist HEX_RADIX:I = 0x10

.field public static final blacklist NONE:Ljava/lang/String; = "<unknown ssid>"

.field private static final blacklist TAG:Ljava/lang/String; = "SemMobileWipsWifiSsid"


# instance fields
.field private final blacklist CONFIG_CHARSET:Ljava/lang/String;

.field public final blacklist octets:Ljava/io/ByteArrayOutputStream;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->getCharacterSet()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->CONFIG_CHARSET:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/wifi/SemMobileWipsWifiSsid-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;-><init>()V

    return-void
.end method

.method private blacklist convertToBytes(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_b

    if-eq v3, v2, :cond_a

    const/16 v2, 0x65

    if-eq v3, v2, :cond_9

    const/16 v2, 0x6e

    if-eq v3, v2, :cond_8

    const/16 v2, 0x72

    if-eq v3, v2, :cond_7

    const/16 v2, 0x74

    if-eq v3, v2, :cond_6

    const/16 v2, 0x78

    if-eq v3, v2, :cond_3

    packed-switch v3, :pswitch_data_0

    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    sub-int/2addr v1, v2

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x37

    if-lt v4, v2, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v5, :cond_1

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v1, v3

    sub-int/2addr v1, v2

    add-int/lit8 v3, v0, 0x3

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-lt v0, v2, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-gt v0, v5, :cond_2

    mul-int/lit8 v1, v1, 0x8

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/2addr v1, v0

    sub-int/2addr v1, v2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v0, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v0, 0x4

    const/4 v3, -0x1

    const/16 v4, 0x10

    :try_start_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-gez v3, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-gez v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v0, v2

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    :cond_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist createFromAsciiEncoded(Ljava/lang/String;)Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;
    .locals 1

    new-instance v0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;-><init>()V

    invoke-direct {v0, p0}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->convertToBytes(Ljava/lang/String;)V

    return-object v0
.end method

.method public static blacklist createFromByteArray([B)Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;
    .locals 4

    new-instance v0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;-><init>()V

    if-eqz p0, :cond_0

    iget-object v1, v0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/4 v2, 0x0

    array-length v3, p0

    invoke-virtual {v1, p0, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    return-object v0
.end method

.method public static blacklist createFromHex(Ljava/lang/String;)Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;
    .locals 5

    new-instance v0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;-><init>()V

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "0x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0X"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3

    add-int/lit8 v3, v2, 0x2

    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v2, v1

    :goto_1
    iget-object v4, v0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v2, v3

    goto :goto_0

    :cond_3
    :goto_2
    return-object v0
.end method

.method private blacklist getCharacterSet()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "zh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "GBK"

    return-object p0

    :cond_0
    const-string p0, "EUC-KR"

    return-object p0
.end method

.method private blacklist isArrayAllZeroes([B)Z
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-byte v1, p1, v0

    if-eqz v1, :cond_0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static blacklist isUCNVString([BI)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v3, v0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_3

    aget-byte v4, p0, v2

    const/16 v5, 0xff

    and-int/2addr v4, v5

    int-to-char v4, v4

    const/16 v6, 0x81

    if-lt v4, v6, :cond_1

    if-ge v4, v5, :cond_1

    add-int/lit8 v6, v2, 0x1

    if-ge v6, p1, :cond_1

    aget-byte v2, p0, v6

    and-int/2addr v2, v5

    int-to-char v2, v2

    const/16 v3, 0x40

    if-lt v2, v3, :cond_0

    if-ge v2, v5, :cond_0

    const/16 v3, 0x7f

    if-eq v2, v3, :cond_0

    move v3, v1

    move v2, v6

    goto :goto_1

    :cond_0
    return v1

    :cond_1
    const/16 v5, 0x80

    if-ge v4, v5, :cond_2

    :goto_1
    add-int/2addr v2, v0

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    if-eqz v3, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method static blacklist isUTF8String([BJ)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    move v3, v2

    move v4, v1

    :goto_0
    int-to-long v5, v2

    cmp-long v5, v5, p1

    if-gez v5, :cond_9

    aget-byte v5, p0, v2

    and-int/lit16 v5, v5, 0xff

    int-to-char v5, v5

    and-int/lit16 v6, v5, 0x80

    if-eqz v6, :cond_0

    move v4, v0

    :cond_0
    const/16 v6, 0x80

    if-nez v3, :cond_6

    if-lt v5, v6, :cond_8

    const/16 v3, 0xfc

    if-lt v5, v3, :cond_1

    const/16 v3, 0xfd

    if-gt v5, v3, :cond_1

    const/4 v3, 0x6

    goto :goto_1

    :cond_1
    const/16 v3, 0xf8

    if-lt v5, v3, :cond_2

    const/4 v3, 0x5

    goto :goto_1

    :cond_2
    const/16 v3, 0xf0

    if-lt v5, v3, :cond_3

    const/4 v3, 0x4

    goto :goto_1

    :cond_3
    const/16 v3, 0xe0

    if-lt v5, v3, :cond_4

    const/4 v3, 0x3

    goto :goto_1

    :cond_4
    const/16 v3, 0xc0

    if-lt v5, v3, :cond_5

    const/4 v3, 0x2

    goto :goto_1

    :cond_5
    return v0

    :cond_6
    and-int/lit16 v5, v5, 0xc0

    if-eq v5, v6, :cond_7

    return v0

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, -0x1

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    if-gtz v3, :cond_b

    if-eqz v4, :cond_a

    goto :goto_2

    :cond_a
    return v1

    :cond_b
    :goto_2
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    iget-object p0, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    iget-object p1, p1, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public blacklist getHexString()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->getOctets()[B

    move-result-object v0

    const-string v1, "0x"

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    aget-byte v4, v0, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02x"

    invoke-static {v1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-lez p0, :cond_1

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getOctets()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public blacklist isHidden()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->isArrayAllZeroes([B)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_7

    invoke-direct {p0, v0}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->isArrayAllZeroes([B)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "<unknown ssid>"

    return-object p0

    :cond_1
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->CONFIG_CHARSET:Ljava/lang/String;

    const-string v5, "gbk"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "EUC-KR"

    const-string v7, "ksc5601"

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->CONFIG_CHARSET:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->CONFIG_CHARSET:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    int-to-long v8, v3

    invoke-static {v0, v8, v9}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->isUTF8String([BJ)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v0, v3}, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->isUCNVString([BI)Z

    move-result v3

    if-eqz v3, :cond_6

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->CONFIG_CHARSET:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->CONFIG_CHARSET:Ljava/lang/String;

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1

    :cond_6
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_0
    return-void
.end method
