.class public final Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback$GnssNavigationMessageType;
.super Ljava/lang/Object;
.source "IGnssNavigationMessageCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V1_0/IGnssNavigationMessageCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssNavigationMessageType"
.end annotation


# static fields
.field public static final blacklist BDS_D1:S = 0x501s

.field public static final blacklist BDS_D2:S = 0x502s

.field public static final blacklist GAL_F:S = 0x602s

.field public static final blacklist GAL_I:S = 0x601s

.field public static final blacklist GLO_L1CA:S = 0x301s

.field public static final blacklist GPS_CNAV2:S = 0x104s

.field public static final blacklist GPS_L1CA:S = 0x101s

.field public static final blacklist GPS_L2CNAV:S = 0x102s

.field public static final blacklist GPS_L5CNAV:S = 0x103s

.field public static final blacklist UNKNOWN:S


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

    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit16 v1, p0, 0x101

    const/16 v2, 0x101

    if-ne v1, v2, :cond_0

    const-string v1, "GPS_L1CA"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-short v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    and-int/lit16 v2, p0, 0x102

    const/16 v3, 0x102

    if-ne v2, v3, :cond_1

    const-string v2, "GPS_L2CNAV"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x102

    int-to-short v1, v1

    :cond_1
    and-int/lit16 v2, p0, 0x103

    const/16 v3, 0x103

    if-ne v2, v3, :cond_2

    const-string v2, "GPS_L5CNAV"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x103

    int-to-short v1, v1

    :cond_2
    and-int/lit16 v2, p0, 0x104

    const/16 v3, 0x104

    if-ne v2, v3, :cond_3

    const-string v2, "GPS_CNAV2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x104

    int-to-short v1, v1

    :cond_3
    and-int/lit16 v2, p0, 0x301

    const/16 v3, 0x301

    if-ne v2, v3, :cond_4

    const-string v2, "GLO_L1CA"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x301

    int-to-short v1, v1

    :cond_4
    and-int/lit16 v2, p0, 0x501

    const/16 v3, 0x501

    if-ne v2, v3, :cond_5

    const-string v2, "BDS_D1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x501

    int-to-short v1, v1

    :cond_5
    and-int/lit16 v2, p0, 0x502

    const/16 v3, 0x502

    if-ne v2, v3, :cond_6

    const-string v2, "BDS_D2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x502

    int-to-short v1, v1

    :cond_6
    and-int/lit16 v2, p0, 0x601

    const/16 v3, 0x601

    if-ne v2, v3, :cond_7

    const-string v2, "GAL_I"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x601

    int-to-short v1, v1

    :cond_7
    and-int/lit16 v2, p0, 0x602

    const/16 v3, 0x602

    if-ne v2, v3, :cond_8

    const-string v2, "GAL_F"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v1, v1, 0x602

    int-to-short v1, v1

    :cond_8
    if-eq p0, v1, :cond_9

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

    :cond_9
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(S)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const/16 v0, 0x101

    if-ne p0, v0, :cond_1

    const-string p0, "GPS_L1CA"

    return-object p0

    :cond_1
    const/16 v0, 0x102

    if-ne p0, v0, :cond_2

    const-string p0, "GPS_L2CNAV"

    return-object p0

    :cond_2
    const/16 v0, 0x103

    if-ne p0, v0, :cond_3

    const-string p0, "GPS_L5CNAV"

    return-object p0

    :cond_3
    const/16 v0, 0x104

    if-ne p0, v0, :cond_4

    const-string p0, "GPS_CNAV2"

    return-object p0

    :cond_4
    const/16 v0, 0x301

    if-ne p0, v0, :cond_5

    const-string p0, "GLO_L1CA"

    return-object p0

    :cond_5
    const/16 v0, 0x501

    if-ne p0, v0, :cond_6

    const-string p0, "BDS_D1"

    return-object p0

    :cond_6
    const/16 v0, 0x502

    if-ne p0, v0, :cond_7

    const-string p0, "BDS_D2"

    return-object p0

    :cond_7
    const/16 v0, 0x601

    if-ne p0, v0, :cond_8

    const-string p0, "GAL_I"

    return-object p0

    :cond_8
    const/16 v0, 0x602

    if-ne p0, v0, :cond_9

    const-string p0, "GAL_F"

    return-object p0

    :cond_9
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
