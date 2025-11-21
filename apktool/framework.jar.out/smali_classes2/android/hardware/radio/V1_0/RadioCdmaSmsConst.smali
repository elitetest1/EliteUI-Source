.class public final Landroid/hardware/radio/V1_0/RadioCdmaSmsConst;
.super Ljava/lang/Object;
.source "RadioCdmaSmsConst.java"


# static fields
.field public static final blacklist ADDRESS_MAX:I = 0x24

.field public static final blacklist BEARER_DATA_MAX:I = 0xff

.field public static final blacklist IP_ADDRESS_SIZE:I = 0x4

.field public static final blacklist MAX_UD_HEADERS:I = 0x7

.field public static final blacklist SUBADDRESS_MAX:I = 0x24

.field public static final blacklist UDH_ANIM_NUM_BITMAPS:I = 0x4

.field public static final blacklist UDH_EO_DATA_SEGMENT_MAX:I = 0x83

.field public static final blacklist UDH_LARGE_BITMAP_SIZE:I = 0x20

.field public static final blacklist UDH_LARGE_PIC_SIZE:I = 0x80

.field public static final blacklist UDH_MAX_SND_SIZE:I = 0x80

.field public static final blacklist UDH_OTHER_SIZE:I = 0xe2

.field public static final blacklist UDH_SMALL_BITMAP_SIZE:I = 0x8

.field public static final blacklist UDH_SMALL_PIC_SIZE:I = 0x20

.field public static final blacklist UDH_VAR_PIC_SIZE:I = 0x86

.field public static final blacklist USER_DATA_MAX:I = 0xe5


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x24

    const/16 v2, 0x24

    if-ne v1, v2, :cond_0

    const-string v3, "ADDRESS_MAX"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-ne v1, v2, :cond_1

    const-string v1, "SUBADDRESS_MAX"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    and-int/lit16 v1, p0, 0xff

    const/16 v3, 0xff

    if-ne v1, v3, :cond_2

    const-string v1, "BEARER_DATA_MAX"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    :cond_2
    and-int/lit16 v1, p0, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_3

    const-string v4, "UDH_MAX_SND_SIZE"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x80

    :cond_3
    and-int/lit16 v4, p0, 0x83

    const/16 v5, 0x83

    if-ne v4, v5, :cond_4

    const-string v4, "UDH_EO_DATA_SEGMENT_MAX"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x83

    :cond_4
    and-int/lit8 v4, p0, 0x7

    const/4 v5, 0x7

    if-ne v4, v5, :cond_5

    const-string v4, "MAX_UD_HEADERS"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7

    :cond_5
    and-int/lit16 v4, p0, 0xe5

    const/16 v5, 0xe5

    if-ne v4, v5, :cond_6

    const-string v4, "USER_DATA_MAX"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0xe5

    :cond_6
    if-ne v1, v3, :cond_7

    const-string v1, "UDH_LARGE_PIC_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x80

    :cond_7
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_8

    const-string v4, "UDH_SMALL_PIC_SIZE"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x20

    :cond_8
    and-int/lit16 v4, p0, 0x86

    const/16 v5, 0x86

    if-ne v4, v5, :cond_9

    const-string v4, "UDH_VAR_PIC_SIZE"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x86

    :cond_9
    and-int/lit8 v4, p0, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_a

    const-string v6, "UDH_ANIM_NUM_BITMAPS"

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_a
    if-ne v1, v3, :cond_b

    const-string v1, "UDH_LARGE_BITMAP_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x20

    :cond_b
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_c

    const-string v1, "UDH_SMALL_BITMAP_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_c
    and-int/lit16 v1, p0, 0xe2

    const/16 v3, 0xe2

    if-ne v1, v3, :cond_d

    const-string v1, "UDH_OTHER_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0xe2

    :cond_d
    if-ne v4, v5, :cond_e

    const-string v1, "IP_ADDRESS_SIZE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_e
    if-eq p0, v2, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "0x"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x24

    if-ne p0, v0, :cond_0

    const-string p0, "ADDRESS_MAX"

    return-object p0

    :cond_0
    if-ne p0, v0, :cond_1

    const-string p0, "SUBADDRESS_MAX"

    return-object p0

    :cond_1
    const/16 v0, 0xff

    if-ne p0, v0, :cond_2

    const-string p0, "BEARER_DATA_MAX"

    return-object p0

    :cond_2
    const/16 v0, 0x80

    if-ne p0, v0, :cond_3

    const-string p0, "UDH_MAX_SND_SIZE"

    return-object p0

    :cond_3
    const/16 v1, 0x83

    if-ne p0, v1, :cond_4

    const-string p0, "UDH_EO_DATA_SEGMENT_MAX"

    return-object p0

    :cond_4
    const/4 v1, 0x7

    if-ne p0, v1, :cond_5

    const-string p0, "MAX_UD_HEADERS"

    return-object p0

    :cond_5
    const/16 v1, 0xe5

    if-ne p0, v1, :cond_6

    const-string p0, "USER_DATA_MAX"

    return-object p0

    :cond_6
    if-ne p0, v0, :cond_7

    const-string p0, "UDH_LARGE_PIC_SIZE"

    return-object p0

    :cond_7
    const/16 v0, 0x20

    if-ne p0, v0, :cond_8

    const-string p0, "UDH_SMALL_PIC_SIZE"

    return-object p0

    :cond_8
    const/16 v1, 0x86

    if-ne p0, v1, :cond_9

    const-string p0, "UDH_VAR_PIC_SIZE"

    return-object p0

    :cond_9
    const/4 v1, 0x4

    if-ne p0, v1, :cond_a

    const-string p0, "UDH_ANIM_NUM_BITMAPS"

    return-object p0

    :cond_a
    if-ne p0, v0, :cond_b

    const-string p0, "UDH_LARGE_BITMAP_SIZE"

    return-object p0

    :cond_b
    const/16 v0, 0x8

    if-ne p0, v0, :cond_c

    const-string p0, "UDH_SMALL_BITMAP_SIZE"

    return-object p0

    :cond_c
    const/16 v0, 0xe2

    if-ne p0, v0, :cond_d

    const-string p0, "UDH_OTHER_SIZE"

    return-object p0

    :cond_d
    if-ne p0, v1, :cond_e

    const-string p0, "IP_ADDRESS_SIZE"

    return-object p0

    :cond_e
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
