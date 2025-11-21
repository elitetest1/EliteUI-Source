.class public final Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback$GnssMeasurementFlags;
.super Ljava/lang/Object;
.source "IGnssMeasurementCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/gnss/V2_1/IGnssMeasurementCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GnssMeasurementFlags"
.end annotation


# static fields
.field public static final blacklist HAS_AUTOMATIC_GAIN_CONTROL:I = 0x2000

.field public static final blacklist HAS_CARRIER_CYCLES:I = 0x400

.field public static final blacklist HAS_CARRIER_FREQUENCY:I = 0x200

.field public static final blacklist HAS_CARRIER_PHASE:I = 0x800

.field public static final blacklist HAS_CARRIER_PHASE_UNCERTAINTY:I = 0x1000

.field public static final blacklist HAS_FULL_ISB:I = 0x10000

.field public static final blacklist HAS_FULL_ISB_UNCERTAINTY:I = 0x20000

.field public static final blacklist HAS_SATELLITE_ISB:I = 0x40000

.field public static final blacklist HAS_SATELLITE_ISB_UNCERTAINTY:I = 0x80000

.field public static final blacklist HAS_SNR:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final blacklist dumpBitfield(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "HAS_SNR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit16 v1, p0, 0x200

    const/16 v3, 0x200

    if-ne v1, v3, :cond_1

    const-string v1, "HAS_CARRIER_FREQUENCY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x200

    :cond_1
    and-int/lit16 v1, p0, 0x400

    const/16 v3, 0x400

    if-ne v1, v3, :cond_2

    const-string v1, "HAS_CARRIER_CYCLES"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x400

    :cond_2
    and-int/lit16 v1, p0, 0x800

    const/16 v3, 0x800

    if-ne v1, v3, :cond_3

    const-string v1, "HAS_CARRIER_PHASE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x800

    :cond_3
    and-int/lit16 v1, p0, 0x1000

    const/16 v3, 0x1000

    if-ne v1, v3, :cond_4

    const-string v1, "HAS_CARRIER_PHASE_UNCERTAINTY"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x1000

    :cond_4
    and-int/lit16 v1, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_5

    const-string v1, "HAS_AUTOMATIC_GAIN_CONTROL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x2000

    :cond_5
    const/high16 v1, 0x10000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_6

    const-string v3, "HAS_FULL_ISB"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v1

    :cond_6
    const/high16 v1, 0x20000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_7

    const-string v3, "HAS_FULL_ISB_UNCERTAINTY"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v1

    :cond_7
    const/high16 v1, 0x40000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_8

    const-string v3, "HAS_SATELLITE_ISB"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v1

    :cond_8
    const/high16 v1, 0x80000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_9

    const-string v3, "HAS_SATELLITE_ISB_UNCERTAINTY"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v1

    :cond_9
    if-eq p0, v2, :cond_a

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

    :cond_a
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "HAS_SNR"

    return-object p0

    :cond_0
    const/16 v0, 0x200

    if-ne p0, v0, :cond_1

    const-string p0, "HAS_CARRIER_FREQUENCY"

    return-object p0

    :cond_1
    const/16 v0, 0x400

    if-ne p0, v0, :cond_2

    const-string p0, "HAS_CARRIER_CYCLES"

    return-object p0

    :cond_2
    const/16 v0, 0x800

    if-ne p0, v0, :cond_3

    const-string p0, "HAS_CARRIER_PHASE"

    return-object p0

    :cond_3
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_4

    const-string p0, "HAS_CARRIER_PHASE_UNCERTAINTY"

    return-object p0

    :cond_4
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_5

    const-string p0, "HAS_AUTOMATIC_GAIN_CONTROL"

    return-object p0

    :cond_5
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_6

    const-string p0, "HAS_FULL_ISB"

    return-object p0

    :cond_6
    const/high16 v0, 0x20000

    if-ne p0, v0, :cond_7

    const-string p0, "HAS_FULL_ISB_UNCERTAINTY"

    return-object p0

    :cond_7
    const/high16 v0, 0x40000

    if-ne p0, v0, :cond_8

    const-string p0, "HAS_SATELLITE_ISB"

    return-object p0

    :cond_8
    const/high16 v0, 0x80000

    if-ne p0, v0, :cond_9

    const-string p0, "HAS_SATELLITE_ISB_UNCERTAINTY"

    return-object p0

    :cond_9
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
