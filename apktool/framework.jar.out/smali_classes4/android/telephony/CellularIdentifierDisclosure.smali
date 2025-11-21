.class public final Landroid/telephony/CellularIdentifierDisclosure;
.super Ljava/lang/Object;
.source "CellularIdentifierDisclosure.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CellularIdentifierDisclosure$CellularIdentifier;,
        Landroid/telephony/CellularIdentifierDisclosure$NasProtocolMessage;
    }
.end annotation


# static fields
.field public static final whitelist CELLULAR_IDENTIFIER_IMEI:I = 0x2

.field public static final whitelist CELLULAR_IDENTIFIER_IMSI:I = 0x1

.field public static final whitelist CELLULAR_IDENTIFIER_SUCI:I = 0x3

.field public static final whitelist CELLULAR_IDENTIFIER_UNKNOWN:I = 0x0

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CellularIdentifierDisclosure;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NAS_PROTOCOL_MESSAGE_ATTACH_REQUEST:I = 0x1

.field public static final whitelist NAS_PROTOCOL_MESSAGE_AUTHENTICATION_AND_CIPHERING_RESPONSE:I = 0x6

.field public static final whitelist NAS_PROTOCOL_MESSAGE_CM_REESTABLISHMENT_REQUEST:I = 0x9

.field public static final whitelist NAS_PROTOCOL_MESSAGE_CM_SERVICE_REQUEST:I = 0xa

.field public static final whitelist NAS_PROTOCOL_MESSAGE_DEREGISTRATION_REQUEST:I = 0x8

.field public static final whitelist NAS_PROTOCOL_MESSAGE_DETACH_REQUEST:I = 0x3

.field public static final whitelist NAS_PROTOCOL_MESSAGE_IDENTITY_RESPONSE:I = 0x2

.field public static final whitelist NAS_PROTOCOL_MESSAGE_IMSI_DETACH_INDICATION:I = 0xb

.field public static final whitelist NAS_PROTOCOL_MESSAGE_LOCATION_UPDATE_REQUEST:I = 0x5

.field public static final whitelist NAS_PROTOCOL_MESSAGE_REGISTRATION_REQUEST:I = 0x7

.field public static final blacklist NAS_PROTOCOL_MESSAGE_THREAT_IDENTIFIER_FALSE:I = 0xc

.field public static final blacklist NAS_PROTOCOL_MESSAGE_THREAT_IDENTIFIER_TRUE:I = 0xd

.field public static final whitelist NAS_PROTOCOL_MESSAGE_TRACKING_AREA_UPDATE_REQUEST:I = 0x4

.field public static final whitelist NAS_PROTOCOL_MESSAGE_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "CellularIdentifierDisclosure"


# instance fields
.field private blacklist mCellularIdentifier:I

.field private blacklist mIsEmergency:Z

.field private blacklist mNasProtocolMessage:I

.field private blacklist mPlmn:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/CellularIdentifierDisclosure$1;

    invoke-direct {v0}, Landroid/telephony/CellularIdentifierDisclosure$1;-><init>()V

    sput-object v0, Landroid/telephony/CellularIdentifierDisclosure;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    iput p2, p0, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    iput-object p3, p0, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    iput-boolean p4, p0, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/telephony/CellularIdentifierDisclosure;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CellularIdentifierDisclosure-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/CellularIdentifierDisclosure;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

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
    instance-of v1, p1, Landroid/telephony/CellularIdentifierDisclosure;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/telephony/CellularIdentifierDisclosure;

    iget v1, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    iget v3, p1, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    iget v3, p1, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    iget-boolean v3, p1, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    iget-object p1, p1, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public whitelist getCellularIdentifier()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    return p0
.end method

.method public whitelist getNasProtocolMessage()I
    .locals 0

    iget p0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    return p0
.end method

.method public whitelist getPlmn()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object p0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist isBenign()Z
    .locals 1

    iget p0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    const/16 v0, 0xc

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isEmergency()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CellularIdentifierDisclosure:{ mNasProtocolMessage = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCellularIdentifier = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsEmergency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPlmn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/CellularIdentifierDisclosure;->mNasProtocolMessage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telephony/CellularIdentifierDisclosure;->mCellularIdentifier:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/telephony/CellularIdentifierDisclosure;->mIsEmergency:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p0, p0, Landroid/telephony/CellularIdentifierDisclosure;->mPlmn:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    return-void
.end method
