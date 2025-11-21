.class public Landroid/telephony/SignalBarInfo;
.super Ljava/lang/Object;
.source "SignalBarInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SignalBarInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mCdmaLevel:I

.field private blacklist mEvdoLevel:I

.field private blacklist mGsmLevel:I

.field private blacklist mLteLevel:I

.field private blacklist mNrLevel:I

.field private blacklist mTdscdmaLevel:I

.field private blacklist mWcdmaLevel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/SignalBarInfo$1;

    invoke-direct {v0}, Landroid/telephony/SignalBarInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalBarInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/SignalBarInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/SignalBarInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/SignalBarInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/telephony/SignalBarInfo;->getCdmaLevel()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    invoke-virtual {p1}, Landroid/telephony/SignalBarInfo;->getEvdoLevel()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    invoke-virtual {p1}, Landroid/telephony/SignalBarInfo;->getGsmLevel()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    invoke-virtual {p1}, Landroid/telephony/SignalBarInfo;->getWcdmaLevel()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    invoke-virtual {p1}, Landroid/telephony/SignalBarInfo;->getTdscdmaLevel()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    invoke-virtual {p1}, Landroid/telephony/SignalBarInfo;->getLteLevel()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    invoke-virtual {p1}, Landroid/telephony/SignalBarInfo;->getNrLevel()I

    move-result p1

    iput p1, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    return-void
.end method

.method public constructor blacklist <init>(Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->cdmaLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    iget v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->evdoLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    iget v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->gsmLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    iget v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->wcdmaLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    iget v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->tdscdmaLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    iget v0, p1, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->lteLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    iget p1, p1, Lvendor/samsung/hardware/radio/V2_0/SehSignalBar;->nrLevel:I

    iput p1, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    return-void
.end method

.method public constructor blacklist <init>(Lvendor/samsung/hardware/radio/network/SehSignalBar;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lvendor/samsung/hardware/radio/network/SehSignalBar;->cdmaLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    iget v0, p1, Lvendor/samsung/hardware/radio/network/SehSignalBar;->evdoLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    iget v0, p1, Lvendor/samsung/hardware/radio/network/SehSignalBar;->gsmLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    iget v0, p1, Lvendor/samsung/hardware/radio/network/SehSignalBar;->wcdmaLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    iget v0, p1, Lvendor/samsung/hardware/radio/network/SehSignalBar;->tdscdmaLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    iget v0, p1, Lvendor/samsung/hardware/radio/network/SehSignalBar;->lteLevel:I

    iput v0, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    iget p1, p1, Lvendor/samsung/hardware/radio/network/SehSignalBar;->nrLevel:I

    iput p1, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/telephony/SignalBarInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/telephony/SignalBarInfo;

    iget v1, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    iget v3, p1, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    iget v3, p1, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    iget v3, p1, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    iget v3, p1, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    iget v3, p1, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    iget v3, p1, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    iget p1, p1, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist getCdmaLevel()I
    .locals 0

    iget p0, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    return p0
.end method

.method public blacklist getEvdoLevel()I
    .locals 0

    iget p0, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    return p0
.end method

.method public blacklist getGsmLevel()I
    .locals 0

    iget p0, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    return p0
.end method

.method public blacklist getLteLevel()I
    .locals 0

    iget p0, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    return p0
.end method

.method public blacklist getNrLevel()I
    .locals 0

    iget p0, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    return p0
.end method

.method public blacklist getTdscdmaLevel()I
    .locals 0

    iget p0, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    return p0
.end method

.method public blacklist getWcdmaLevel()I
    .locals 0

    iget p0, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 8

    iget v0, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget p0, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist setCdmaLevel(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    return-void
.end method

.method public blacklist setEvdoLevel(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    return-void
.end method

.method public blacklist setGsmLevel(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    return-void
.end method

.method public blacklist setLteLevel(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    return-void
.end method

.method public blacklist setNrLevel(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    return-void
.end method

.method public blacklist setTdscdmaLevel(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    return-void
.end method

.method public blacklist setWcdmaLevel(I)V
    .locals 0

    iput p1, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "SignalBarInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, " cdmaLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    if-eqz v3, :cond_1

    const-string v1, " evdoLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_1
    iget v3, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    if-eqz v3, :cond_2

    const-string v1, " gsmLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_2
    iget v3, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    if-eqz v3, :cond_3

    const-string v1, " wcdmaLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_3
    iget v3, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    if-eqz v3, :cond_4

    const-string v1, " tdscdmaLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_4
    iget v3, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    if-eqz v3, :cond_5

    const-string v1, " lteLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v1, v2

    :cond_5
    iget v3, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    if-eqz v3, :cond_6

    const-string v1, " nrLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    move v2, v1

    :goto_1
    if-nez v2, :cond_7

    const-string p0, " no level"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/SignalBarInfo;->mCdmaLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/SignalBarInfo;->mEvdoLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/SignalBarInfo;->mGsmLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/SignalBarInfo;->mWcdmaLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/SignalBarInfo;->mTdscdmaLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/SignalBarInfo;->mLteLevel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/telephony/SignalBarInfo;->mNrLevel:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
