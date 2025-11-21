.class Lcom/samsung/android/wifi/SemMobileWipsScanResult$1;
.super Ljava/lang/Object;
.source "SemMobileWipsScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemMobileWipsScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/wifi/SemMobileWipsScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemMobileWipsScanResult;
    .locals 21

    move-object/from16 v0, p1

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v4, v1

    new-instance v3, Lcom/samsung/android/wifi/SemMobileWipsScanResult;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v17

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v18

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v19

    const/16 v20, 0x0

    invoke-direct/range {v3 .. v20}, Lcom/samsung/android/wifi/SemMobileWipsScanResult;-><init>(Lcom/samsung/android/wifi/SemMobileWipsWifiSsid;Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;IIJIIIIIZ)V

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-static {v3, v1}, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->-$$Nest$fputmWifiStandard(Lcom/samsung/android/wifi/SemMobileWipsScanResult;I)V

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->seen:J

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    iput-boolean v2, v3, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->untrusted:Z

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v3, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->numUsage:I

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->venueName:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, v3, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->flags:J

    sget-object v1, Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

    iput-object v1, v3, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->informationElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$InformationElement;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v3, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpLines:Ljava/util/List;

    move v2, v4

    :goto_2
    if-ge v2, v1, :cond_2

    iget-object v5, v3, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpLines:Ljava/util/List;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    new-array v2, v1, [Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    iput-object v2, v3, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    move v2, v4

    :goto_3
    if-ge v2, v1, :cond_3

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    new-array v7, v7, [B

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->readByteArray([B)V

    iget-object v8, v3, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->anqpElements:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    new-instance v9, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;

    invoke-direct {v9, v5, v6, v7}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$AnqpInformationElement;-><init>(II[B)V

    aput-object v9, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    new-array v2, v1, [Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    iput-object v2, v3, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    :goto_4
    if-ge v4, v1, :cond_4

    iget-object v2, v3, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    new-instance v5, Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    invoke-direct {v5}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;-><init>()V

    aput-object v5, v2, v4

    iget-object v2, v3, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    aget-object v2, v2, v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;->id:I

    iget-object v2, v3, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->radioChainInfos:[Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;

    aget-object v2, v2, v4

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v2, Lcom/samsung/android/wifi/SemMobileWipsScanResult$RadioChainInfo;->level:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/samsung/android/wifi/SemMobileWipsScanResult;->ifaceName:Ljava/lang/String;

    return-object v3
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/wifi/SemMobileWipsScanResult;

    move-result-object p0

    return-object p0
.end method

.method public blacklist newArray(I)[Lcom/samsung/android/wifi/SemMobileWipsScanResult;
    .locals 0

    new-array p0, p1, [Lcom/samsung/android/wifi/SemMobileWipsScanResult;

    return-object p0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/SemMobileWipsScanResult$1;->newArray(I)[Lcom/samsung/android/wifi/SemMobileWipsScanResult;

    move-result-object p0

    return-object p0
.end method
