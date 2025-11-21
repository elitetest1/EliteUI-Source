.class public final Landroid/hardware/radio/V1_2/RadioConst;
.super Ljava/lang/Object;
.source "RadioConst.java"


# static fields
.field public static final blacklist CARD_MAX_APPS:I = 0x8

.field public static final blacklist CDMA_ALPHA_INFO_BUFFER_LENGTH:I = 0x40

.field public static final blacklist CDMA_MAX_NUMBER_OF_INFO_RECS:I = 0xa

.field public static final blacklist CDMA_NUMBER_INFO_BUFFER_LENGTH:I = 0x51

.field public static final blacklist MAX_CLIENT_ID_LENGTH:I = 0x2

.field public static final blacklist MAX_DEBUG_SOCKET_NAME_LENGTH:I = 0xc

.field public static final blacklist MAX_QEMU_PIPE_NAME_LENGTH:I = 0xb

.field public static final blacklist MAX_RILDS:I = 0x3

.field public static final blacklist MAX_SOCKET_NAME_LENGTH:I = 0x6

.field public static final blacklist MAX_UUID_LENGTH:I = 0x40

.field public static final blacklist NUM_SERVICE_CLASSES:I = 0x7

.field public static final blacklist NUM_TX_POWER_LEVELS:I = 0x5

.field public static final blacklist RADIO_ACCESS_SPECIFIER_MAX_SIZE:I = 0x8

.field public static final blacklist SS_INFO_MAX:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    const-string v3, "CDMA_ALPHA_INFO_BUFFER_LENGTH"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    and-int/lit8 v4, p0, 0x51

    const/16 v5, 0x51

    if-ne v4, v5, :cond_1

    const-string v3, "CDMA_NUMBER_INFO_BUFFER_LENGTH"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v5

    :cond_1
    and-int/lit8 v4, p0, 0x3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    const-string v4, "MAX_RILDS"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x3

    :cond_2
    and-int/lit8 v4, p0, 0x6

    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    const-string v4, "MAX_SOCKET_NAME_LENGTH"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x6

    :cond_3
    and-int/lit8 v4, p0, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    const-string v4, "MAX_CLIENT_ID_LENGTH"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x2

    :cond_4
    and-int/lit8 v4, p0, 0xc

    const/16 v5, 0xc

    if-ne v4, v5, :cond_5

    const-string v4, "MAX_DEBUG_SOCKET_NAME_LENGTH"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0xc

    :cond_5
    and-int/lit8 v4, p0, 0xb

    const/16 v5, 0xb

    if-ne v4, v5, :cond_6

    const-string v4, "MAX_QEMU_PIPE_NAME_LENGTH"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0xb

    :cond_6
    if-ne v1, v2, :cond_7

    const-string v1, "MAX_UUID_LENGTH"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x40

    :cond_7
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    const-string v4, "CARD_MAX_APPS"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x8

    :cond_8
    and-int/lit8 v4, p0, 0xa

    const/16 v5, 0xa

    if-ne v4, v5, :cond_9

    const-string v4, "CDMA_MAX_NUMBER_OF_INFO_RECS"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0xa

    :cond_9
    and-int/lit8 v4, p0, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    const-string v4, "SS_INFO_MAX"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x4

    :cond_a
    and-int/lit8 v4, p0, 0x7

    const/4 v5, 0x7

    if-ne v4, v5, :cond_b

    const-string v4, "NUM_SERVICE_CLASSES"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x7

    :cond_b
    and-int/lit8 v4, p0, 0x5

    const/4 v5, 0x5

    if-ne v4, v5, :cond_c

    const-string v4, "NUM_TX_POWER_LEVELS"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x5

    :cond_c
    if-ne v1, v2, :cond_d

    const-string v1, "RADIO_ACCESS_SPECIFIER_MAX_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v3, v3, 0x8

    :cond_d
    if-eq p0, v3, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    not-int v2, v3

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x40

    if-ne p0, v0, :cond_0

    const-string p0, "CDMA_ALPHA_INFO_BUFFER_LENGTH"

    return-object p0

    :cond_0
    const/16 v1, 0x51

    if-ne p0, v1, :cond_1

    const-string p0, "CDMA_NUMBER_INFO_BUFFER_LENGTH"

    return-object p0

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    const-string p0, "MAX_RILDS"

    return-object p0

    :cond_2
    const/4 v1, 0x6

    if-ne p0, v1, :cond_3

    const-string p0, "MAX_SOCKET_NAME_LENGTH"

    return-object p0

    :cond_3
    const/4 v1, 0x2

    if-ne p0, v1, :cond_4

    const-string p0, "MAX_CLIENT_ID_LENGTH"

    return-object p0

    :cond_4
    const/16 v1, 0xc

    if-ne p0, v1, :cond_5

    const-string p0, "MAX_DEBUG_SOCKET_NAME_LENGTH"

    return-object p0

    :cond_5
    const/16 v1, 0xb

    if-ne p0, v1, :cond_6

    const-string p0, "MAX_QEMU_PIPE_NAME_LENGTH"

    return-object p0

    :cond_6
    if-ne p0, v0, :cond_7

    const-string p0, "MAX_UUID_LENGTH"

    return-object p0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string p0, "CARD_MAX_APPS"

    return-object p0

    :cond_8
    const/16 v1, 0xa

    if-ne p0, v1, :cond_9

    const-string p0, "CDMA_MAX_NUMBER_OF_INFO_RECS"

    return-object p0

    :cond_9
    const/4 v1, 0x4

    if-ne p0, v1, :cond_a

    const-string p0, "SS_INFO_MAX"

    return-object p0

    :cond_a
    const/4 v1, 0x7

    if-ne p0, v1, :cond_b

    const-string p0, "NUM_SERVICE_CLASSES"

    return-object p0

    :cond_b
    const/4 v1, 0x5

    if-ne p0, v1, :cond_c

    const-string p0, "NUM_TX_POWER_LEVELS"

    return-object p0

    :cond_c
    if-ne p0, v0, :cond_d

    const-string p0, "RADIO_ACCESS_SPECIFIER_MAX_SIZE"

    return-object p0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
