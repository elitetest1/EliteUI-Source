.class public final Landroid/telephony/satellite/SemSatelliteState;
.super Ljava/lang/Object;
.source "SemSatelliteState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SemSatelliteState;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist DBG:Z = true

.field static final blacklist LOG_TAG:Ljava/lang/String; = "SatelliteState"


# instance fields
.field private blacklist mSatelliteServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

.field private blacklist mSatelliteSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SemSatelliteState$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SemSatelliteState$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SemSatelliteState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/satellite/SemSatelliteServiceState;

    invoke-direct {v0}, Landroid/telephony/satellite/SemSatelliteServiceState;-><init>()V

    iput-object v0, p0, Landroid/telephony/satellite/SemSatelliteState;->mSatelliteServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

    new-instance v0, Landroid/telephony/satellite/SemSatelliteSignalStrength;

    invoke-direct {v0}, Landroid/telephony/satellite/SemSatelliteSignalStrength;-><init>()V

    iput-object v0, p0, Landroid/telephony/satellite/SemSatelliteState;->mSatelliteSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/telephony/satellite/SemSatelliteServiceState;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/satellite/SemSatelliteServiceState;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/SemSatelliteServiceState;

    iput-object v0, p0, Landroid/telephony/satellite/SemSatelliteState;->mSatelliteServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

    const-class v0, Landroid/telephony/satellite/SemSatelliteSignalStrength;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/satellite/SemSatelliteSignalStrength;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;

    iput-object p1, p0, Landroid/telephony/satellite/SemSatelliteState;->mSatelliteSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SemSatelliteState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SemSatelliteState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/satellite/SemSatelliteServiceState;Landroid/telephony/satellite/SemSatelliteSignalStrength;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/telephony/satellite/SemSatelliteServiceState;

    invoke-direct {v0, p1}, Landroid/telephony/satellite/SemSatelliteServiceState;-><init>(Landroid/telephony/satellite/SemSatelliteServiceState;)V

    iput-object v0, p0, Landroid/telephony/satellite/SemSatelliteState;->mSatelliteServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

    new-instance p1, Landroid/telephony/satellite/SemSatelliteSignalStrength;

    invoke-direct {p1, p2}, Landroid/telephony/satellite/SemSatelliteSignalStrength;-><init>(Landroid/telephony/satellite/SemSatelliteSignalStrength;)V

    iput-object p1, p0, Landroid/telephony/satellite/SemSatelliteState;->mSatelliteSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/satellite/SemSatelliteState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/satellite/SemSatelliteState;->copyFrom(Landroid/telephony/satellite/SemSatelliteState;)V

    return-void
.end method

.method private blacklist copy()Landroid/telephony/satellite/SemSatelliteState;
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/satellite/SemSatelliteState;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance p0, Landroid/telephony/satellite/SemSatelliteState;

    invoke-direct {p0, v0}, Landroid/telephony/satellite/SemSatelliteState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method


# virtual methods
.method protected blacklist copyFrom(Landroid/telephony/satellite/SemSatelliteState;)V
    .locals 2

    new-instance v0, Landroid/telephony/satellite/SemSatelliteServiceState;

    iget-object v1, p1, Landroid/telephony/satellite/SemSatelliteState;->mSatelliteServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

    invoke-direct {v0, v1}, Landroid/telephony/satellite/SemSatelliteServiceState;-><init>(Landroid/telephony/satellite/SemSatelliteServiceState;)V

    iput-object v0, p0, Landroid/telephony/satellite/SemSatelliteState;->mSatelliteServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

    new-instance v0, Landroid/telephony/satellite/SemSatelliteSignalStrength;

    iget-object p1, p1, Landroid/telephony/satellite/SemSatelliteState;->mSatelliteSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    invoke-direct {v0, p1}, Landroid/telephony/satellite/SemSatelliteSignalStrength;-><init>(Landroid/telephony/satellite/SemSatelliteSignalStrength;)V

    iput-object v0, p0, Landroid/telephony/satellite/SemSatelliteState;->mSatelliteSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getSatelliteServiceState()Landroid/telephony/satellite/SemSatelliteServiceState;
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SemSatelliteState;->mSatelliteServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

    return-object p0
.end method

.method public whitelist getSatelliteSignalStrength()Landroid/telephony/satellite/SemSatelliteSignalStrength;
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SemSatelliteState;->mSatelliteSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SatelliteState {serviceState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/satellite/SemSatelliteState;->mSatelliteServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " signalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/telephony/satellite/SemSatelliteState;->mSatelliteSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/satellite/SemSatelliteState;->mSatelliteServiceState:Landroid/telephony/satellite/SemSatelliteServiceState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/telephony/satellite/SemSatelliteState;->mSatelliteSignalStrength:Landroid/telephony/satellite/SemSatelliteSignalStrength;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
