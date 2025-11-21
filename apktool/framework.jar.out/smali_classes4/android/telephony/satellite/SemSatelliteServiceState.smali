.class public final Landroid/telephony/satellite/SemSatelliteServiceState;
.super Ljava/lang/Object;
.source "SemSatelliteServiceState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/SemSatelliteServiceState$SatelliteRadioState;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SemSatelliteServiceState;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist DBG:Z = true

.field static final blacklist LOG_TAG:Ljava/lang/String; = "SemSatelliteServiceState"

.field public static final whitelist SATELLITE_RADIO_POWER_OFF:I = 0x0

.field public static final whitelist SATELLITE_RADIO_POWER_ON:I = 0x1

.field public static final whitelist SATELLITE_RADIO_POWER_UNAVAILABLE:I = 0x2


# instance fields
.field private blacklist mRadioState:I

.field private blacklist mRegState:Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SemSatelliteServiceState$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SemSatelliteServiceState$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SemSatelliteServiceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteServiceState;->mRadioState:I

    new-instance v0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    invoke-direct {v0}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;-><init>()V

    iput-object v0, p0, Landroid/telephony/satellite/SemSatelliteServiceState;->mRegState:Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/telephony/satellite/SemSatelliteRegistrationStateResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/satellite/SemSatelliteServiceState;->mRadioState:I

    new-instance p1, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    invoke-direct {p1, p2}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;-><init>(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)V

    iput-object p1, p0, Landroid/telephony/satellite/SemSatelliteServiceState;->mRegState:Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteServiceState;->mRadioState:I

    const-class v0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    iput-object p1, p0, Landroid/telephony/satellite/SemSatelliteServiceState;->mRegState:Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SemSatelliteServiceState-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SemSatelliteServiceState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/satellite/SemSatelliteServiceState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/satellite/SemSatelliteServiceState;->copyFrom(Landroid/telephony/satellite/SemSatelliteServiceState;)V

    return-void
.end method

.method private blacklist copy()Landroid/telephony/satellite/SemSatelliteServiceState;
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/satellite/SemSatelliteServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance p0, Landroid/telephony/satellite/SemSatelliteServiceState;

    invoke-direct {p0, v0}, Landroid/telephony/satellite/SemSatelliteServiceState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method private static blacklist equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static blacklist radioStateToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown radio state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "RADIO_UNAVAILABLE"

    return-object p0

    :cond_1
    const-string p0, "RADIO_POWER_ON"

    return-object p0

    :cond_2
    const-string p0, "RADIO_POWER_OFF"

    return-object p0
.end method


# virtual methods
.method protected blacklist copyFrom(Landroid/telephony/satellite/SemSatelliteServiceState;)V
    .locals 1

    iget v0, p1, Landroid/telephony/satellite/SemSatelliteServiceState;->mRadioState:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteServiceState;->mRadioState:I

    new-instance v0, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    iget-object p1, p1, Landroid/telephony/satellite/SemSatelliteServiceState;->mRegState:Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    invoke-direct {v0, p1}, Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;-><init>(Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;)V

    iput-object v0, p0, Landroid/telephony/satellite/SemSatelliteServiceState;->mRegState:Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/telephony/satellite/SemSatelliteServiceState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/telephony/satellite/SemSatelliteServiceState;

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteServiceState;->mRadioState:I

    iget v2, p1, Landroid/telephony/satellite/SemSatelliteServiceState;->mRadioState:I

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Landroid/telephony/satellite/SemSatelliteServiceState;->mRegState:Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    iget-object p1, p1, Landroid/telephony/satellite/SemSatelliteServiceState;->mRegState:Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    invoke-static {p0, p1}, Landroid/telephony/satellite/SemSatelliteServiceState;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist getRadioState()I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteServiceState;->mRadioState:I

    return p0
.end method

.method public whitelist getRegistrationState()Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/SemSatelliteServiceState;->mRegState:Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteServiceState;->mRadioState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Landroid/telephony/satellite/SemSatelliteServiceState;->mRegState:Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SemSatelliteServiceState {radioState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteServiceState;->mRadioState:I

    invoke-static {v1}, Landroid/telephony/satellite/SemSatelliteServiceState;->radioStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " RegistrationStateResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/telephony/satellite/SemSatelliteServiceState;->mRegState:Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteServiceState;->mRadioState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/telephony/satellite/SemSatelliteServiceState;->mRegState:Landroid/telephony/satellite/SemSatelliteRegistrationStateResult;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
