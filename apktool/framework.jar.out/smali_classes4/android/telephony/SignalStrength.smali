.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DBG:Z = false

.field public static final whitelist INVALID:I = 0x7fffffff

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static final greylist NUM_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final greylist-max-p SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final greylist-max-p SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final greylist-max-p SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final greylist-max-p SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final greylist-max-p SIGNAL_STRENGTH_POOR:I = 0x1


# instance fields
.field blacklist mCdma:Landroid/telephony/CellSignalStrengthCdma;

.field blacklist mGsm:Landroid/telephony/CellSignalStrengthGsm;

.field blacklist mLte:Landroid/telephony/CellSignalStrengthLte;

.field private blacklist mLteAsPrimaryInNrNsa:Z

.field blacklist mNr:Landroid/telephony/CellSignalStrengthNr;

.field private blacklist mPrimaryRadioTechnology:I

.field private blacklist mSignalBarInfos:Landroid/telephony/SignalBarInfo;

.field blacklist mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

.field private blacklist mTimestampMillis:J

.field blacklist mWcdma:Landroid/telephony/CellSignalStrengthWcdma;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 7

    new-instance v1, Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v1}, Landroid/telephony/CellSignalStrengthCdma;-><init>()V

    new-instance v2, Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {v2}, Landroid/telephony/CellSignalStrengthGsm;-><init>()V

    new-instance v3, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v3}, Landroid/telephony/CellSignalStrengthWcdma;-><init>()V

    new-instance v4, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v4}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>()V

    new-instance v5, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v5}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    new-instance v6, Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v6}, Landroid/telephony/CellSignalStrengthNr;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mLteAsPrimaryInNrNsa:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mPrimaryRadioTechnology:I

    const-class v0, Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthCdma;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    const-class v0, Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthGsm;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    const-class v0, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthWcdma;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    const-class v0, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthTdscdma;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    const-class v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthLte;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    const-class v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthNr;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/SignalStrength;->mTimestampMillis:J

    const-class v0, Landroid/telephony/SignalBarInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalBarInfo;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/SignalStrength;->mPrimaryRadioTechnology:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mLteAsPrimaryInNrNsa:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mPrimaryRadioTechnology:I

    iput-object p1, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    iput-object p2, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    iput-object p3, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    iput-object p4, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    iput-object p5, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    iput-object p6, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/telephony/SignalStrength;->mTimestampMillis:J

    new-instance p1, Landroid/telephony/SignalBarInfo;

    invoke-direct {p1}, Landroid/telephony/SignalBarInfo;-><init>()V

    iput-object p1, p0, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    iget-object v3, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    iget-object v4, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    iget-object v5, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    iget-object v6, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    iget-object v7, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Landroid/telephony/SignalStrength;->updateSignalBarInfo(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V

    iput v0, v1, Landroid/telephony/SignalStrength;->mPrimaryRadioTechnology:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/telephony/SignalStrength;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mLteAsPrimaryInNrNsa:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mPrimaryRadioTechnology:I

    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method private blacklist getPrimary()Landroid/telephony/CellSignalStrength;
    .locals 1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->mLteAsPrimaryInNrNsa:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthNr;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    return-object p0

    :cond_1
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    return-object p0

    :cond_2
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->isValid()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    return-object p0

    :cond_3
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->isValid()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    return-object p0

    :cond_4
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    return-object p0

    :cond_5
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    return-object p0

    :cond_6
    iget-object p0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    return-object p0
.end method

.method private static greylist-max-o log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static greylist newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1

    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private blacklist selectPrimaryRadioTechnology()I
    .locals 3

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthLte;->isValid()Z

    move-result v0

    const/16 v1, 0xe

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthCdma;->isValid()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    const/4 v1, 0x6

    if-nez v0, :cond_1

    const-string/jumbo p0, "selectPrimaryRadioTechnology - mSignalBarInfos is null"

    invoke-static {p0}, Landroid/telephony/SignalStrength;->loge(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SignalBarInfo;->getCdmaLevel()I

    move-result v0

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    invoke-virtual {p0}, Landroid/telephony/SignalBarInfo;->getEvdoLevel()I

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/16 v2, 0x8

    if-nez v0, :cond_3

    return v2

    :cond_3
    if-ge v0, p0, :cond_4

    return v1

    :cond_4
    return v2

    :cond_5
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->isValid()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p0, 0x11

    return p0

    :cond_6
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthWcdma;->isValid()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 p0, 0x3

    return p0

    :cond_7
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthGsm;->isValid()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 p0, 0x10

    return p0

    :cond_8
    iget-object p0, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->isValid()Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x14

    return p0

    :cond_9
    return v1
.end method

.method private greylist-max-p setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Cdma"

    const-class v1, Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthCdma;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    const-string v0, "Gsm"

    const-class v1, Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthGsm;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    const-string v0, "Wcdma"

    const-class v1, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthWcdma;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    const-string v0, "Tdscdma"

    const-class v1, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthTdscdma;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    const-string v0, "Lte"

    const-class v1, Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthLte;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    const-string v0, "Nr"

    const-class v1, Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrengthNr;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    const-string v0, "SignalBarInfo"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalBarInfo;

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    const-string v0, "PrimaryRadioTechnology"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/telephony/SignalStrength;->mPrimaryRadioTechnology:I

    return-void
.end method

.method private blacklist updateSignalBarInfo(Landroid/telephony/CellSignalStrengthCdma;Landroid/telephony/CellSignalStrengthGsm;Landroid/telephony/CellSignalStrengthWcdma;Landroid/telephony/CellSignalStrengthTdscdma;Landroid/telephony/CellSignalStrengthLte;Landroid/telephony/CellSignalStrengthNr;)V
    .locals 2

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthCdma;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SignalBarInfo;->setCdmaLevel(I)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    invoke-virtual {p1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/telephony/SignalBarInfo;->setEvdoLevel(I)V

    :cond_0
    invoke-virtual {p2}, Landroid/telephony/CellSignalStrengthGsm;->isValid()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    invoke-virtual {p2}, Landroid/telephony/CellSignalStrengthGsm;->getLevel()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telephony/SignalBarInfo;->setGsmLevel(I)V

    :cond_1
    invoke-virtual {p3}, Landroid/telephony/CellSignalStrengthWcdma;->isValid()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    invoke-virtual {p3}, Landroid/telephony/CellSignalStrengthWcdma;->getLevel()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telephony/SignalBarInfo;->setWcdmaLevel(I)V

    :cond_2
    invoke-virtual {p4}, Landroid/telephony/CellSignalStrengthTdscdma;->isValid()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    invoke-virtual {p4}, Landroid/telephony/CellSignalStrengthTdscdma;->getLevel()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telephony/SignalBarInfo;->setTdscdmaLevel(I)V

    :cond_3
    invoke-virtual {p5}, Landroid/telephony/CellSignalStrengthLte;->isValid()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    invoke-virtual {p5}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/telephony/SignalBarInfo;->setLteLevel(I)V

    :cond_4
    invoke-virtual {p6}, Landroid/telephony/CellSignalStrengthNr;->isValid()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    invoke-virtual {p6}, Landroid/telephony/CellSignalStrengthNr;->getLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/telephony/SignalBarInfo;->setNrLevel(I)V

    :cond_5
    return-void
.end method


# virtual methods
.method protected greylist copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 2

    new-instance v0, Landroid/telephony/CellSignalStrengthCdma;

    iget-object v1, p1, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-direct {v0, v1}, Landroid/telephony/CellSignalStrengthCdma;-><init>(Landroid/telephony/CellSignalStrengthCdma;)V

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    new-instance v0, Landroid/telephony/CellSignalStrengthGsm;

    iget-object v1, p1, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-direct {v0, v1}, Landroid/telephony/CellSignalStrengthGsm;-><init>(Landroid/telephony/CellSignalStrengthGsm;)V

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    new-instance v0, Landroid/telephony/CellSignalStrengthWcdma;

    iget-object v1, p1, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-direct {v0, v1}, Landroid/telephony/CellSignalStrengthWcdma;-><init>(Landroid/telephony/CellSignalStrengthWcdma;)V

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    new-instance v0, Landroid/telephony/CellSignalStrengthTdscdma;

    iget-object v1, p1, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-direct {v0, v1}, Landroid/telephony/CellSignalStrengthTdscdma;-><init>(Landroid/telephony/CellSignalStrengthTdscdma;)V

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    new-instance v0, Landroid/telephony/CellSignalStrengthLte;

    iget-object v1, p1, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v0, v1}, Landroid/telephony/CellSignalStrengthLte;-><init>(Landroid/telephony/CellSignalStrengthLte;)V

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    new-instance v0, Landroid/telephony/CellSignalStrengthNr;

    iget-object v1, p1, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-direct {v0, v1}, Landroid/telephony/CellSignalStrengthNr;-><init>(Landroid/telephony/CellSignalStrengthNr;)V

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getTimestampMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/SignalStrength;->mTimestampMillis:J

    new-instance v0, Landroid/telephony/SignalBarInfo;

    iget-object v1, p1, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    invoke-direct {v0, v1}, Landroid/telephony/SignalBarInfo;-><init>(Landroid/telephony/SignalBarInfo;)V

    iput-object v0, p0, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    iget p1, p1, Landroid/telephony/SignalStrength;->mPrimaryRadioTechnology:I

    iput p1, p0, Landroid/telephony/SignalStrength;->mPrimaryRadioTechnology:I

    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/telephony/SignalStrength;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/telephony/SignalStrength;

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    iget-object v2, p1, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0, v2}, Landroid/telephony/CellSignalStrengthCdma;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    iget-object v2, p1, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v0, v2}, Landroid/telephony/CellSignalStrengthGsm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    iget-object v2, p1, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v0, v2}, Landroid/telephony/CellSignalStrengthWcdma;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    iget-object v2, p1, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v0, v2}, Landroid/telephony/CellSignalStrengthTdscdma;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    iget-object v2, p1, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0, v2}, Landroid/telephony/CellSignalStrengthLte;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    iget-object v2, p1, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    invoke-virtual {v0, v2}, Landroid/telephony/SignalBarInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mPrimaryRadioTechnology:I

    iget v2, p1, Landroid/telephony/SignalStrength;->mPrimaryRadioTechnology:I

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    iget-object p1, p1, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p0, p1}, Landroid/telephony/CellSignalStrengthNr;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public greylist-max-p fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "Cdma"

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "Gsm"

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "Wcdma"

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "Tdscdma"

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "Lte"

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "Nr"

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "SignalBarInfo"

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "PrimaryRadioTechnology"

    iget p0, p0, Landroid/telephony/SignalStrength;->mPrimaryRadioTechnology:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public greylist-max-p getAsuLevel()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/telephony/SignalStrength;->mPrimaryRadioTechnology:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0xe

    if-eq v0, v1, :cond_3

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getAsuLevel - Invalid radio technology: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/SignalStrength;->mPrimaryRadioTechnology:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->loge(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getPrimary()Landroid/telephony/CellSignalStrength;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrength;->getAsuLevel()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthTdscdma;->getAsuLevel()I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->getAsuLevel()I

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result p0

    return p0

    :cond_4
    iget-object p0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoAsuLevel()I

    move-result p0

    return p0

    :cond_5
    iget-object p0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getAsuLevel()I

    move-result p0

    return p0

    :cond_6
    iget-object p0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result p0

    return p0
.end method

.method public greylist-max-p getCdmaAsuLevel()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getAsuLevel()I

    move-result p0

    return p0
.end method

.method public whitelist getCdmaDbm()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result p0

    return p0
.end method

.method public whitelist getCdmaEcio()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result p0

    return p0
.end method

.method public greylist-max-p getCdmaLevel()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getLevel()I

    move-result p0

    return p0
.end method

.method public whitelist getCellSignalStrengths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/CellSignalStrength;",
            ">;"
        }
    .end annotation

    const-class v0, Landroid/telephony/CellSignalStrength;

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/telephony/CellSignalStrength;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    const-class v1, Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v1, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthTdscdma;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    const-class v1, Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    const-class v1, Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4

    const-class v1, Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v1, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthNr;->isValid()Z

    move-result v1

    if-eqz v1, :cond_5

    const-class v1, Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public greylist-max-p getDbm()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/telephony/SignalStrength;->mPrimaryRadioTechnology:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x6

    if-eq v0, v1, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0xe

    if-eq v0, v1, :cond_3

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDbm - Invalid radio technology: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/SignalStrength;->mPrimaryRadioTechnology:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->loge(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getPrimary()Landroid/telephony/CellSignalStrength;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthTdscdma;->getDbm()I

    move-result p0

    return p0

    :cond_1
    iget-object p0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result p0

    return p0

    :cond_2
    iget-object p0, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->getDbm()I

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result p0

    return p0

    :cond_4
    iget-object p0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result p0

    return p0

    :cond_5
    iget-object p0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result p0

    return p0

    :cond_6
    iget-object p0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result p0

    return p0
.end method

.method public greylist-max-p getEvdoAsuLevel()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoAsuLevel()I

    move-result p0

    return p0
.end method

.method public whitelist getEvdoDbm()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result p0

    return p0
.end method

.method public whitelist getEvdoEcio()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoEcio()I

    move-result p0

    return p0
.end method

.method public greylist-max-p getEvdoLevel()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoLevel()I

    move-result p0

    return p0
.end method

.method public whitelist getEvdoSnr()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result p0

    return p0
.end method

.method public greylist-max-p getGsmAsuLevel()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result p0

    return p0
.end method

.method public whitelist getGsmBitErrorRate()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->getBitErrorRate()I

    move-result p0

    return p0
.end method

.method public greylist-max-p getGsmDbm()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result p0

    return p0
.end method

.method public greylist-max-p getGsmLevel()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->getLevel()I

    move-result p0

    return p0
.end method

.method public whitelist getGsmSignalStrength()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthGsm;->getAsuLevel()I

    move-result p0

    return p0
.end method

.method public whitelist getLevel()I
    .locals 3

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getPrimary()Landroid/telephony/CellSignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getPrimary()Landroid/telephony/CellSignalStrength;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrength;->getLevel()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid Level "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", this="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/telephony/SignalStrength;->loge(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-p getLteAsuLevel()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getAsuLevel()I

    move-result p0

    return p0
.end method

.method public greylist-max-p getLteCqi()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getCqi()I

    move-result p0

    return p0
.end method

.method public greylist-max-p getLteDbm()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result p0

    return p0
.end method

.method public greylist-max-p getLteLevel()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result p0

    return p0
.end method

.method public greylist-max-p getLteRsrp()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result p0

    return p0
.end method

.method public greylist-max-p getLteRsrq()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getRsrq()I

    move-result p0

    return p0
.end method

.method public greylist-max-p getLteRssnr()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getRssnr()I

    move-result p0

    return p0
.end method

.method public greylist-max-p getLteSignalStrength()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getRssi()I

    move-result p0

    return p0
.end method

.method public blacklist getSignalBar()Landroid/telephony/SignalBarInfo;
    .locals 0

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-p getTdScdmaAsuLevel()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v0}, Landroid/telephony/CellSignalStrengthTdscdma;->getAsuLevel()I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthTdscdma;->getAsuLevel()I

    move-result p0

    return p0
.end method

.method public greylist-max-p getTdScdmaDbm()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthTdscdma;->getRscp()I

    move-result p0

    return p0
.end method

.method public greylist-max-p getTdScdmaLevel()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthTdscdma;->getLevel()I

    move-result p0

    return p0
.end method

.method public whitelist getTimestampMillis()J
    .locals 2

    iget-wide v0, p0, Landroid/telephony/SignalStrength;->mTimestampMillis:J

    return-wide v0
.end method

.method public blacklist getVendorLevel()I
    .locals 3

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    if-eqz v0, :cond_7

    iget v1, p0, Landroid/telephony/SignalStrength;->mPrimaryRadioTechnology:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v2, 0x6

    if-eq v1, v2, :cond_5

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    const/16 v2, 0xe

    if-eq v1, v2, :cond_3

    const/16 v2, 0x14

    if-eq v1, v2, :cond_2

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getVendorLevel - Invalid radio technology: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/SignalStrength;->mPrimaryRadioTechnology:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->loge(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SignalBarInfo;->getTdscdmaLevel()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SignalBarInfo;->getGsmLevel()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {v0}, Landroid/telephony/SignalBarInfo;->getNrLevel()I

    move-result p0

    return p0

    :cond_3
    invoke-virtual {v0}, Landroid/telephony/SignalBarInfo;->getLteLevel()I

    move-result p0

    return p0

    :cond_4
    invoke-virtual {v0}, Landroid/telephony/SignalBarInfo;->getEvdoLevel()I

    move-result p0

    return p0

    :cond_5
    invoke-virtual {v0}, Landroid/telephony/SignalBarInfo;->getCdmaLevel()I

    move-result p0

    return p0

    :cond_6
    invoke-virtual {v0}, Landroid/telephony/SignalBarInfo;->getWcdmaLevel()I

    move-result p0

    return p0

    :cond_7
    const-string v0, "getVendorLevel - mSignalBarInfos is null"

    invoke-static {v0}, Landroid/telephony/SignalStrength;->loge(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p0

    return p0
.end method

.method public greylist-max-o getWcdmaAsuLevel()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->getAsuLevel()I

    move-result p0

    return p0
.end method

.method public greylist-max-o getWcdmaDbm()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result p0

    return p0
.end method

.method public greylist-max-o getWcdmaLevel()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->getLevel()I

    move-result p0

    return p0
.end method

.method public greylist-max-o getWcdmaRscp()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthWcdma;->getRscp()I

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 8

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    iget-object v3, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    iget-object v4, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    iget-object v5, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    iget-object v6, p0, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    iget p0, p0, Landroid/telephony/SignalStrength;->mPrimaryRadioTechnology:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v0 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist isGsm()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getPrimary()Landroid/telephony/CellSignalStrength;

    move-result-object p0

    instance-of p0, p0, Landroid/telephony/CellSignalStrengthCdma;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public whitelist semGetVendorLevel()I
    .locals 0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getVendorLevel()I

    move-result p0

    return p0
.end method

.method public blacklist setSignalBar(Landroid/telephony/SignalBarInfo;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SignalStrength:{mCdma="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    const-string v2, "Invalid"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mGsm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mWcdma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mTdscdma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthTdscdma;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mLte="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->isValid()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    goto :goto_4

    :cond_4
    move-object v1, v2

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mNr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthNr;->isValid()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v2, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",rat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/SignalStrength;->mPrimaryRadioTechnology:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",primary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->getPrimary()Landroid/telephony/CellSignalStrength;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v0, "signal_strength_nr_nsa_use_lte_as_primary_bool"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->mLteAsPrimaryInNrNsa:Z

    :cond_0
    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthCdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthGsm;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthWcdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthTdscdma;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthLte;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/CellSignalStrengthNr;->updateLevel(Landroid/os/PersistableBundle;Landroid/telephony/ServiceState;)V

    invoke-direct {p0}, Landroid/telephony/SignalStrength;->selectPrimaryRadioTechnology()I

    move-result p1

    iput p1, p0, Landroid/telephony/SignalStrength;->mPrimaryRadioTechnology:I

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mCdma:Landroid/telephony/CellSignalStrengthCdma;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mGsm:Landroid/telephony/CellSignalStrengthGsm;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mWcdma:Landroid/telephony/CellSignalStrengthWcdma;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mTdscdma:Landroid/telephony/CellSignalStrengthTdscdma;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mLte:Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mNr:Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-wide v0, p0, Landroid/telephony/SignalStrength;->mTimestampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/telephony/SignalStrength;->mSignalBarInfos:Landroid/telephony/SignalBarInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p0, p0, Landroid/telephony/SignalStrength;->mPrimaryRadioTechnology:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
