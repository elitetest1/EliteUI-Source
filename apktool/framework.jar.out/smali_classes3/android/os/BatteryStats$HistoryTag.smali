.class public final Landroid/os/BatteryStats$HistoryTag;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoryTag"
.end annotation


# static fields
.field public static final blacklist HISTORY_TAG_POOL_OVERFLOW:I = -0x1


# instance fields
.field public greylist-max-o poolIdx:I

.field public greylist-max-o string:Ljava/lang/String;

.field public greylist-max-o uid:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/os/BatteryStats$HistoryTag;

    iget v2, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget v3, p1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object p0, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget-object p1, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    add-int/2addr v0, p0

    return v0
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    const/4 p1, -0x1

    iput p1, p0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    return-void
.end method

.method public greylist-max-o setTo(Landroid/os/BatteryStats$HistoryTag;)V
    .locals 1

    iget-object v0, p1, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iput-object v0, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iget v0, p1, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iput v0, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    iget p1, p1, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    iput p1, p0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    return-void
.end method

.method public greylist-max-o setTo(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    iput p2, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    const/4 p1, -0x1

    iput p1, p0, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    return-void
.end method

.method public greylist-max-o writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
