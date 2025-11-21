.class public final Lvendor/samsung/hardware/thermal/V1_0/SehTempStatus;
.super Ljava/lang/Object;
.source "SehTempStatus.java"


# static fields
.field public static final blacklist DISABLED:I = -0x309

.field public static final blacklist NOT_EXIST:I = -0x3e7

.field public static final blacklist NOT_READABLE:I = -0x378


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

    and-int/lit16 v1, p0, -0x3e7

    const/16 v2, -0x3e7

    if-ne v1, v2, :cond_0

    const-string v1, "NOT_EXIST"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit16 v1, p0, -0x378

    const/16 v3, -0x378

    if-ne v1, v3, :cond_1

    const-string v1, "NOT_READABLE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, -0x378

    :cond_1
    and-int/lit16 v1, p0, -0x309

    const/16 v3, -0x309

    if-ne v1, v3, :cond_2

    const-string v1, "DISABLED"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, -0x309

    :cond_2
    if-eq p0, v2, :cond_3

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

    :cond_3
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final blacklist toString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, -0x3e7

    if-ne p0, v0, :cond_0

    const-string p0, "NOT_EXIST"

    return-object p0

    :cond_0
    const/16 v0, -0x378

    if-ne p0, v0, :cond_1

    const-string p0, "NOT_READABLE"

    return-object p0

    :cond_1
    const/16 v0, -0x309

    if-ne p0, v0, :cond_2

    const-string p0, "DISABLED"

    return-object p0

    :cond_2
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
