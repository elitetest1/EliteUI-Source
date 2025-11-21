.class public final Lcom/android/internal/os/BatteryStatsHistory$VarintParceler;
.super Ljava/lang/Object;
.source "BatteryStatsHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VarintParceler"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist readLongArray(Landroid/os/Parcel;[J)V
    .locals 11

    array-length p0, p2

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x4

    move v2, v0

    move v3, v1

    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_5

    const-wide/16 v4, 0x0

    move v6, v0

    :goto_1
    const/16 v7, 0x40

    if-ge v6, v7, :cond_3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    move v3, v1

    :cond_1
    int-to-byte v8, p0

    shr-int/lit8 p0, p0, 0x8

    add-int/lit8 v3, v3, -0x1

    and-int/lit8 v9, v8, 0x7f

    int-to-long v9, v9

    shl-long/2addr v9, v6

    or-long/2addr v4, v9

    and-int/lit16 v8, v8, 0x80

    if-nez v8, :cond_2

    aput-wide v4, p2, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x7

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v6, v7, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Landroid/os/ParcelFormatException;

    const-string p1, "Invalid varint format"

    invoke-direct {p0, p1}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_3
    return-void
.end method

.method public blacklist writeLongArray(Landroid/os/Parcel;[J)V
    .locals 12

    array-length p0, p2

    if-nez p0, :cond_0

    goto :goto_3

    :cond_0
    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, p0, :cond_4

    aget-wide v4, p2, v1

    move v6, v0

    :goto_1
    if-nez v6, :cond_3

    const-wide/16 v7, -0x80

    and-long/2addr v7, v4

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_1

    long-to-int v6, v4

    int-to-byte v6, v6

    const/4 v7, 0x1

    move v11, v7

    move v7, v6

    move v6, v11

    goto :goto_2

    :cond_1
    long-to-int v7, v4

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    const/4 v8, 0x7

    ushr-long/2addr v4, v8

    :goto_2
    const/16 v8, 0x20

    if-ne v2, v8, :cond_2

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v2, v0

    move v3, v2

    :cond_2
    and-int/lit16 v7, v7, 0xff

    shl-int/2addr v7, v2

    or-int/2addr v3, v7

    add-int/lit8 v2, v2, 0x8

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_5
    :goto_3
    return-void
.end method
