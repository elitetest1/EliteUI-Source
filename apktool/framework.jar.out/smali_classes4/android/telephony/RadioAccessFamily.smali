.class public Landroid/telephony/RadioAccessFamily;
.super Ljava/lang/Object;
.source "RadioAccessFamily.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final greylist-max-o CDMA:I = 0x48

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/RadioAccessFamily;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o EVDO:I = 0x2830

.field private static final greylist-max-o GSM:I = 0x8003

.field private static final greylist-max-o HS:I = 0x4380

.field private static final greylist-max-o LTE:I = 0x41000

.field private static final blacklist NR:I = 0x80000

.field public static final greylist-max-o RAF_1xRTT:I = 0x40

.field public static final greylist-max-o RAF_EDGE:I = 0x2

.field public static final greylist-max-o RAF_EHRPD:I = 0x2000

.field public static final greylist-max-o RAF_EVDO_0:I = 0x10

.field public static final greylist-max-o RAF_EVDO_A:I = 0x20

.field public static final greylist-max-o RAF_EVDO_B:I = 0x800

.field public static final greylist-max-o RAF_GPRS:I = 0x1

.field public static final greylist-max-o RAF_GSM:I = 0x8000

.field public static final greylist-max-o RAF_HSDPA:I = 0x80

.field public static final greylist-max-o RAF_HSPA:I = 0x200

.field public static final greylist-max-o RAF_HSPAP:I = 0x4000

.field public static final greylist-max-o RAF_HSUPA:I = 0x100

.field public static final greylist-max-o RAF_IS95A:I = 0x8

.field public static final greylist-max-o RAF_IS95B:I = 0x8

.field public static final greylist-max-o RAF_LTE:I = 0x1000

.field public static final greylist-max-o RAF_LTE_CA:I = 0x40000

.field public static final blacklist RAF_NR:I = 0x80000

.field public static final greylist-max-o RAF_TD_SCDMA:I = 0x10000

.field public static final greylist-max-o RAF_UMTS:I = 0x4

.field public static final greylist-max-o RAF_UNKNOWN:I = 0x0

.field private static final greylist-max-o WCDMA:I = 0x4384


# instance fields
.field private greylist-max-o mPhoneId:I

.field private greylist-max-o mRadioAccessFamily:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/RadioAccessFamily$1;

    invoke-direct {v0}, Landroid/telephony/RadioAccessFamily$1;-><init>()V

    sput-object v0, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-r <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    iput p2, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    return-void
.end method

.method public static blacklist compare(JJ)I
    .locals 18

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    const/4 v4, 0x4

    new-array v5, v4, [J

    fill-array-data v5, :array_0

    not-long v6, v2

    and-long/2addr v6, v0

    not-long v8, v0

    and-long/2addr v8, v2

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v4, :cond_3

    aget-wide v12, v5, v11

    and-long v14, v6, v12

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_0

    const/4 v14, 0x1

    goto :goto_1

    :cond_0
    move v14, v10

    :goto_1
    and-long/2addr v12, v8

    cmp-long v12, v12, v16

    if-eqz v12, :cond_1

    add-int/lit8 v14, v14, -0x1

    :cond_1
    if-eqz v14, :cond_2

    return v14

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    sub-int/2addr v0, v1

    return v0

    :array_0
    .array-data 8
        0x80000
        0x61000
        0x16bb4
        0x804b
    .end array-data
.end method

.method private static greylist-max-o getAdjustedRaf(I)I
    .locals 2

    const v0, 0x8003

    and-int v1, p0, v0

    if-lez v1, :cond_0

    or-int/2addr p0, v0

    :cond_0
    and-int/lit16 v0, p0, 0x4384

    if-lez v0, :cond_1

    or-int/lit16 p0, p0, 0x4384

    :cond_1
    and-int/lit8 v0, p0, 0x48

    if-lez v0, :cond_2

    or-int/lit8 p0, p0, 0x48

    :cond_2
    and-int/lit16 v0, p0, 0x2830

    if-lez v0, :cond_3

    or-int/lit16 p0, p0, 0x2830

    :cond_3
    const v0, 0x41000

    and-int v1, p0, v0

    if-lez v1, :cond_4

    or-int/2addr p0, v0

    :cond_4
    const/high16 v0, 0x80000

    and-int v1, p0, v0

    if-lez v1, :cond_5

    or-int/2addr p0, v0

    :cond_5
    return p0
.end method

.method public static greylist-max-p getNetworkTypeFromRaf(I)I
    .locals 0

    invoke-static {p0}, Landroid/telephony/RadioAccessFamily;->getAdjustedRaf(I)I

    move-result p0

    sparse-switch p0, :sswitch_data_0

    sget p0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    return p0

    :sswitch_0
    const/16 p0, 0x21

    return p0

    :sswitch_1
    const/16 p0, 0x20

    return p0

    :sswitch_2
    const/16 p0, 0x1e

    return p0

    :sswitch_3
    const/16 p0, 0x1f

    return p0

    :sswitch_4
    const/16 p0, 0x1d

    return p0

    :sswitch_5
    const/16 p0, 0x1b

    return p0

    :sswitch_6
    const/16 p0, 0x1a

    return p0

    :sswitch_7
    const/16 p0, 0x1c

    return p0

    :sswitch_8
    const/16 p0, 0x19

    return p0

    :sswitch_9
    const/16 p0, 0x18

    return p0

    :sswitch_a
    const/16 p0, 0x17

    return p0

    :sswitch_b
    const/16 p0, 0x16

    return p0

    :sswitch_c
    const/16 p0, 0x14

    return p0

    :sswitch_d
    const/16 p0, 0x11

    return p0

    :sswitch_e
    const/16 p0, 0x13

    return p0

    :sswitch_f
    const/16 p0, 0xf

    return p0

    :sswitch_10
    const/16 p0, 0xa

    return p0

    :sswitch_11
    const/16 p0, 0x9

    return p0

    :sswitch_12
    const/16 p0, 0xc

    return p0

    :sswitch_13
    const/16 p0, 0x8

    return p0

    :sswitch_14
    const/16 p0, 0xb

    return p0

    :sswitch_15
    const/16 p0, 0x15

    return p0

    :sswitch_16
    const/16 p0, 0x12

    return p0

    :sswitch_17
    const/16 p0, 0x10

    return p0

    :sswitch_18
    const/16 p0, 0xe

    return p0

    :sswitch_19
    const/16 p0, 0xd

    return p0

    :sswitch_1a
    const/4 p0, 0x7

    return p0

    :sswitch_1b
    const/4 p0, 0x0

    return p0

    :sswitch_1c
    const/4 p0, 0x1

    return p0

    :sswitch_1d
    const/4 p0, 0x2

    return p0

    :sswitch_1e
    const/4 p0, 0x4

    return p0

    :sswitch_1f
    const/4 p0, 0x6

    return p0

    :sswitch_20
    const/4 p0, 0x5

    return p0

    :sswitch_data_0
    .sparse-switch
        0x48 -> :sswitch_20
        0x2830 -> :sswitch_1f
        0x2878 -> :sswitch_1e
        0x4384 -> :sswitch_1d
        0x8003 -> :sswitch_1c
        0xc387 -> :sswitch_1b
        0xebff -> :sswitch_1a
        0x10000 -> :sswitch_19
        0x14384 -> :sswitch_18
        0x18003 -> :sswitch_17
        0x1c387 -> :sswitch_16
        0x1ebff -> :sswitch_15
        0x41000 -> :sswitch_14
        0x43878 -> :sswitch_13
        0x45384 -> :sswitch_12
        0x4d387 -> :sswitch_11
        0x4fbff -> :sswitch_10
        0x51000 -> :sswitch_f
        0x55384 -> :sswitch_e
        0x59003 -> :sswitch_d
        0x5d387 -> :sswitch_c
        0x5fbff -> :sswitch_b
        0x80000 -> :sswitch_a
        0xc1000 -> :sswitch_9
        0xc3878 -> :sswitch_8
        0xc5384 -> :sswitch_7
        0xcd387 -> :sswitch_6
        0xcfbff -> :sswitch_5
        0xd1000 -> :sswitch_4
        0xd5384 -> :sswitch_3
        0xd9003 -> :sswitch_2
        0xdd387 -> :sswitch_1
        0xdfbff -> :sswitch_0
    .end sparse-switch
.end method

.method public static greylist-max-r getRafFromNetworkType(I)I
    .locals 1

    const v0, 0xc387

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const p0, 0xdfbff

    return p0

    :pswitch_1
    const p0, 0xdd387

    return p0

    :pswitch_2
    const p0, 0xd5384

    return p0

    :pswitch_3
    const p0, 0xd9003

    return p0

    :pswitch_4
    const p0, 0xd1000

    return p0

    :pswitch_5
    const p0, 0xc5384

    return p0

    :pswitch_6
    const p0, 0xcfbff

    return p0

    :pswitch_7
    const p0, 0xcd387

    return p0

    :pswitch_8
    const p0, 0xc3878

    return p0

    :pswitch_9
    const p0, 0xc1000

    return p0

    :pswitch_a
    const/high16 p0, 0x80000

    return p0

    :pswitch_b
    const p0, 0x5fbff

    return p0

    :pswitch_c
    const p0, 0x1ebff

    return p0

    :pswitch_d
    const p0, 0x5d387

    return p0

    :pswitch_e
    const p0, 0x55384

    return p0

    :pswitch_f
    const p0, 0x1c387

    return p0

    :pswitch_10
    const p0, 0x59003

    return p0

    :pswitch_11
    const p0, 0x18003

    return p0

    :pswitch_12
    const p0, 0x51000

    return p0

    :pswitch_13
    const p0, 0x14384

    return p0

    :pswitch_14
    const/high16 p0, 0x10000

    return p0

    :pswitch_15
    const p0, 0x45384

    return p0

    :pswitch_16
    const p0, 0x41000

    return p0

    :pswitch_17
    const p0, 0x4fbff

    return p0

    :pswitch_18
    const p0, 0x4d387

    return p0

    :pswitch_19
    const p0, 0x43878

    return p0

    :pswitch_1a
    const p0, 0xebff

    return p0

    :pswitch_1b
    const/16 p0, 0x2830

    return p0

    :pswitch_1c
    const/16 p0, 0x48

    return p0

    :pswitch_1d
    const/16 p0, 0x2878

    return p0

    :pswitch_1e
    return v0

    :pswitch_1f
    const/16 p0, 0x4384

    return p0

    :pswitch_20
    const p0, 0x8003

    return p0

    :pswitch_21
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o rafTypeFromString(Ljava/lang/String;)I
    .locals 4

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/RadioAccessFamily;->singleRafTypeFromString(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    return v3

    :cond_0
    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static greylist-max-o singleRafTypeFromString(Ljava/lang/String;)I
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "EVDO_B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v7, 0x16

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "EVDO_A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v7, 0x15

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "EVDO_0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v7, 0x14

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "WCDMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v7, 0x13

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "IS95B"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v7, 0x12

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "IS95A"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v7, 0x11

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "HSUPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    move v7, v1

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "HSPAP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v7, 0xf

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "HSDPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v7, 0xe

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "EHRPD"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v7, 0xd

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "1XRTT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v7, 0xc

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "UMTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v7, 0xb

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "HSPA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v7, 0xa

    goto/16 :goto_0

    :sswitch_d
    const-string v0, "GPRS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v7, 0x9

    goto/16 :goto_0

    :sswitch_e
    const-string v0, "EVDO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto/16 :goto_0

    :cond_e
    move v7, v6

    goto/16 :goto_0

    :sswitch_f
    const-string v0, "EDGE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v7, 0x7

    goto :goto_0

    :sswitch_10
    const-string v0, "CDMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_11
    const-string v0, "LTE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_12
    const-string v0, "GSM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_0

    :cond_12
    move v7, v2

    goto :goto_0

    :sswitch_13
    const-string v0, "NR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_13

    goto :goto_0

    :cond_13
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_14
    const-string v0, "HS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    goto :goto_0

    :cond_14
    move v7, v3

    goto :goto_0

    :sswitch_15
    const-string v0, "TD_SCDMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_15

    goto :goto_0

    :cond_15
    move v7, v4

    goto :goto_0

    :sswitch_16
    const-string v0, "LTE_CA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_0

    :cond_16
    move v7, v5

    :goto_0
    packed-switch v7, :pswitch_data_0

    return v5

    :pswitch_0
    const/16 p0, 0x800

    return p0

    :pswitch_1
    const/16 p0, 0x20

    return p0

    :pswitch_2
    return v1

    :pswitch_3
    const/16 p0, 0x4384

    return p0

    :pswitch_4
    return v6

    :pswitch_5
    const/16 p0, 0x100

    return p0

    :pswitch_6
    const/16 p0, 0x4000

    return p0

    :pswitch_7
    const/16 p0, 0x80

    return p0

    :pswitch_8
    const/16 p0, 0x2000

    return p0

    :pswitch_9
    const/16 p0, 0x40

    return p0

    :pswitch_a
    return v2

    :pswitch_b
    const/16 p0, 0x200

    return p0

    :pswitch_c
    return v4

    :pswitch_d
    const/16 p0, 0x2830

    return p0

    :pswitch_e
    return v3

    :pswitch_f
    const/16 p0, 0x48

    return p0

    :pswitch_10
    const/16 p0, 0x1000

    return p0

    :pswitch_11
    const p0, 0x8000

    return p0

    :pswitch_12
    const/high16 p0, 0x80000

    return p0

    :pswitch_13
    const/16 p0, 0x4380

    return p0

    :pswitch_14
    const/high16 p0, 0x10000

    return p0

    :pswitch_15
    const/high16 p0, 0x40000

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x798f2fe0 -> :sswitch_16
        -0x36280a07 -> :sswitch_15
        0x90b -> :sswitch_14
        0x9c4 -> :sswitch_13
        0x114e1 -> :sswitch_12
        0x127bd -> :sswitch_11
        0x1f7db5 -> :sswitch_10
        0x2065bd -> :sswitch_f
        0x20a8fc -> :sswitch_e
        0x217cea -> :sswitch_d
        0x21fc3c -> :sswitch_c
        0x27cf17 -> :sswitch_b
        0x2dbbeab -> :sswitch_a
        0x3ee4e43 -> :sswitch_9
        0x41d604a -> :sswitch_8
        0x41d8b94 -> :sswitch_7
        0x41da01b -> :sswitch_6
        0x42b4b3b -> :sswitch_5
        0x42b4b3c -> :sswitch_4
        0x4e97a8c -> :sswitch_3
        0x7a9a65ad -> :sswitch_2
        0x7a9a65be -> :sswitch_1
        0x7a9a65bf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-r getPhoneId()I
    .locals 0

    iget p0, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    return p0
.end method

.method public greylist-max-r getRadioAccessFamily()I
    .locals 0

    iget p0, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{ mPhoneId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRadioAccessFamily = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/RadioAccessFamily;->mPhoneId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/telephony/RadioAccessFamily;->mRadioAccessFamily:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
