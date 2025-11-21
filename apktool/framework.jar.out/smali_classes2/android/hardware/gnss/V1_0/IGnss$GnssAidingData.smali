.class public final Landroid/hardware/gnss/V1_0/IGnss$GnssAidingData;
.super Ljava/lang/Object;
.source "IGnss.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssAidingData"
.end annotation


# static fields
.field public static final blacklist DELETE_ALL:S = -0x1s

.field public static final blacklist DELETE_ALMANAC:S = 0x2s

.field public static final blacklist DELETE_CELLDB_INFO:S = -0x8000s

.field public static final blacklist DELETE_EPHEMERIS:S = 0x1s

.field public static final blacklist DELETE_HEALTH:S = 0x40s

.field public static final blacklist DELETE_IONO:S = 0x10s

.field public static final blacklist DELETE_POSITION:S = 0x4s

.field public static final blacklist DELETE_RTI:S = 0x400s

.field public static final blacklist DELETE_SADATA:S = 0x200s

.field public static final blacklist DELETE_SVDIR:S = 0x80s

.field public static final blacklist DELETE_SVSTEER:S = 0x100s

.field public static final blacklist DELETE_TIME:S = 0x8s

.field public static final blacklist DELETE_UTC:S = 0x20s


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(S)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "DELETE_EPHEMERIS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-short v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string v2, "DELETE_ALMANAC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    :cond_1
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    const-string v2, "DELETE_POSITION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    :cond_2
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    const-string v2, "DELETE_TIME"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    :cond_3
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    const-string v2, "DELETE_IONO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    :cond_4
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    const-string v2, "DELETE_UTC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x20

    int-to-short v1, v1

    :cond_5
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    const-string v2, "DELETE_HEALTH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v1, v1, 0x40

    int-to-short v1, v1

    :cond_6
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    const-string v2, "DELETE_SVDIR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x80

    int-to-short v1, v1

    :cond_7
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    const-string v2, "DELETE_SVSTEER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x100

    int-to-short v1, v1

    :cond_8
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9

    const-string v2, "DELETE_SADATA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x200

    int-to-short v1, v1

    :cond_9
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_a

    const-string v2, "DELETE_RTI"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x400

    int-to-short v1, v1

    :cond_a
    and-int/lit16 v2, p0, -0x8000

    const/16 v3, -0x8000

    if-ne v2, v3, :cond_b

    const-string v2, "DELETE_CELLDB_INFO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, -0x8000

    int-to-short v1, v1

    :cond_b
    const/4 v2, -0x1

    if-ne p0, v2, :cond_c

    const-string v1, "DELETE_ALL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-short v1, v2

    :cond_c
    if-eq p0, v1, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    not-int v1, v1

    and-int/2addr p0, v1

    int-to-short p0, p0

    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(S)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "DELETE_EPHEMERIS"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "DELETE_ALMANAC"

    return-object p0

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    const-string p0, "DELETE_POSITION"

    return-object p0

    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    const-string p0, "DELETE_TIME"

    return-object p0

    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    const-string p0, "DELETE_IONO"

    return-object p0

    :cond_4
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    const-string p0, "DELETE_UTC"

    return-object p0

    :cond_5
    const/16 v0, 0x40

    if-ne p0, v0, :cond_6

    const-string p0, "DELETE_HEALTH"

    return-object p0

    :cond_6
    const/16 v0, 0x80

    if-ne p0, v0, :cond_7

    const-string p0, "DELETE_SVDIR"

    return-object p0

    :cond_7
    const/16 v0, 0x100

    if-ne p0, v0, :cond_8

    const-string p0, "DELETE_SVSTEER"

    return-object p0

    :cond_8
    const/16 v0, 0x200

    if-ne p0, v0, :cond_9

    const-string p0, "DELETE_SADATA"

    return-object p0

    :cond_9
    const/16 v0, 0x400

    if-ne p0, v0, :cond_a

    const-string p0, "DELETE_RTI"

    return-object p0

    :cond_a
    const/16 v0, -0x8000

    if-ne p0, v0, :cond_b

    const-string p0, "DELETE_CELLDB_INFO"

    return-object p0

    :cond_b
    const/4 v0, -0x1

    if-ne p0, v0, :cond_c

    const-string p0, "DELETE_ALL"

    return-object p0

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
