.class public final Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;
.super Ljava/lang/Object;
.source "SemSatelliteIotRegistrationStateResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist DBG:Z = true

.field static final blacklist LOG_TAG:Ljava/lang/String; = "SatelliteIotRegState"

.field public static final blacklist SATELLITE_IOT_NOT_REGISTERED:I = 0x0

.field public static final blacklist SATELLITE_IOT_REGISTERED:I = 0x1

.field public static final blacklist SATELLITE_REGISTERED_TYPE_AM:I = 0x1

.field public static final blacklist SATELLITE_REGISTERED_TYPE_NONE:I = 0x0

.field public static final blacklist SATELLITE_REGISTERED_TYPE_TM:I = 0x2


# instance fields
.field private blacklist mRegType:I

.field private blacklist mState:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmRegType(Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmState(Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;)I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$1;

    invoke-direct {v0}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    iput p2, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->copyFrom(Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;)V

    return-void
.end method

.method private blacklist copy()Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;

    invoke-direct {p0, v0}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0
.end method

.method public static blacklist regTypeToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown iot reg type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "IOT_REG_TYPE_TM"

    return-object p0

    :cond_1
    const-string p0, "IOT_REG_TYPE_AM"

    return-object p0

    :cond_2
    const-string p0, "IOT_REG_TYPE_NONE"

    return-object p0
.end method

.method public static blacklist stateToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown iot reg state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "IOT_REGISTERED"

    return-object p0

    :cond_1
    const-string p0, "IOT_NOT_REGISTERED"

    return-object p0
.end method


# virtual methods
.method protected blacklist copyFrom(Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;)V
    .locals 1

    iget v0, p1, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    iput v0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    iget p1, p1, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    iput p1, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    return-void
.end method

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
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    instance-of v2, p1, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;

    iget v2, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    iget v3, p1, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    iget p1, p1, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getRegType()I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    return p0
.end method

.method public blacklist getState()I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget v0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SatelliteIotRegistrationStateResult { state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    invoke-static {v1}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " regType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    invoke-static {p0}, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->regTypeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/telephony/satellite/SemSatelliteIotRegistrationStateResult;->mRegType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
