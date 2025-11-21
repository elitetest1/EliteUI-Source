.class public Landroid/hardware/radio/voice/StkCcUnsolSsResult;
.super Ljava/lang/Object;
.source "StkCcUnsolSsResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/radio/voice/StkCcUnsolSsResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist REQUEST_TYPE_ACTIVATION:I = 0x0

.field public static final blacklist REQUEST_TYPE_DEACTIVATION:I = 0x1

.field public static final blacklist REQUEST_TYPE_ERASURE:I = 0x4

.field public static final blacklist REQUEST_TYPE_INTERROGATION:I = 0x2

.field public static final blacklist REQUEST_TYPE_REGISTRATION:I = 0x3

.field public static final blacklist SERVICE_TYPE_ALL_BARRING:I = 0x10

.field public static final blacklist SERVICE_TYPE_BAIC:I = 0xe

.field public static final blacklist SERVICE_TYPE_BAIC_ROAMING:I = 0xf

.field public static final blacklist SERVICE_TYPE_BAOC:I = 0xb

.field public static final blacklist SERVICE_TYPE_BAOIC:I = 0xc

.field public static final blacklist SERVICE_TYPE_BAOIC_EXC_HOME:I = 0xd

.field public static final blacklist SERVICE_TYPE_CFU:I = 0x0

.field public static final blacklist SERVICE_TYPE_CF_ALL:I = 0x4

.field public static final blacklist SERVICE_TYPE_CF_ALL_CONDITIONAL:I = 0x5

.field public static final blacklist SERVICE_TYPE_CF_BUSY:I = 0x1

.field public static final blacklist SERVICE_TYPE_CF_NOT_REACHABLE:I = 0x3

.field public static final blacklist SERVICE_TYPE_CF_NO_REPLY:I = 0x2

.field public static final blacklist SERVICE_TYPE_CLIP:I = 0x6

.field public static final blacklist SERVICE_TYPE_CLIR:I = 0x7

.field public static final blacklist SERVICE_TYPE_COLP:I = 0x8

.field public static final blacklist SERVICE_TYPE_COLR:I = 0x9

.field public static final blacklist SERVICE_TYPE_INCOMING_BARRING:I = 0x12

.field public static final blacklist SERVICE_TYPE_OUTGOING_BARRING:I = 0x11

.field public static final blacklist SERVICE_TYPE_WAIT:I = 0xa

.field public static final blacklist SUPP_SERVICE_CLASS_DATA:I = 0x2

.field public static final blacklist SUPP_SERVICE_CLASS_DATA_ASYNC:I = 0x20

.field public static final blacklist SUPP_SERVICE_CLASS_DATA_SYNC:I = 0x10

.field public static final blacklist SUPP_SERVICE_CLASS_FAX:I = 0x4

.field public static final blacklist SUPP_SERVICE_CLASS_MAX:I = 0x80

.field public static final blacklist SUPP_SERVICE_CLASS_NONE:I = 0x0

.field public static final blacklist SUPP_SERVICE_CLASS_PACKET:I = 0x40

.field public static final blacklist SUPP_SERVICE_CLASS_PAD:I = 0x80

.field public static final blacklist SUPP_SERVICE_CLASS_SMS:I = 0x8

.field public static final blacklist SUPP_SERVICE_CLASS_VOICE:I = 0x1

.field public static final blacklist TELESERVICE_TYPE_ALL_DATA_TELESERVICES:I = 0x3

.field public static final blacklist TELESERVICE_TYPE_ALL_TELESERVICES_EXCEPT_SMS:I = 0x5

.field public static final blacklist TELESERVICE_TYPE_ALL_TELESEVICES:I = 0x1

.field public static final blacklist TELESERVICE_TYPE_ALL_TELE_AND_BEARER_SERVICES:I = 0x0

.field public static final blacklist TELESERVICE_TYPE_SMS_SERVICES:I = 0x4

.field public static final blacklist TELESERVICE_TYPE_TELEPHONY:I = 0x2


# instance fields
.field public blacklist cfData:[Landroid/hardware/radio/voice/CfData;

.field public blacklist requestType:I

.field public blacklist result:I

.field public blacklist serviceClass:I

.field public blacklist serviceType:I

.field public blacklist ssInfo:[Landroid/hardware/radio/voice/SsInfoData;

.field public blacklist teleserviceType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/radio/voice/StkCcUnsolSsResult$1;

    invoke-direct {v0}, Landroid/hardware/radio/voice/StkCcUnsolSsResult$1;-><init>()V

    sput-object v0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->serviceType:I

    iput v0, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->requestType:I

    iput v0, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->teleserviceType:I

    iput v0, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->serviceClass:I

    iput v0, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->result:I

    return-void
.end method

.method private blacklist describeContents(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p1, v0

    invoke-direct {p0, v3}, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    instance-of p0, p1, Landroid/os/Parcelable;

    if-eqz p0, :cond_3

    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->ssInfo:[Landroid/hardware/radio/voice/SsInfoData;

    invoke-direct {p0, v0}, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->describeContents(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->cfData:[Landroid/hardware/radio/voice/CfData;

    invoke-direct {p0, v1}, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final whitelist getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 5

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_f

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    :goto_0
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void

    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->serviceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->requestType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->teleserviceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    goto :goto_0

    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->serviceClass:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    goto :goto_0

    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->result:I

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a

    goto :goto_0

    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    :try_start_6
    sget-object v2, Landroid/hardware/radio/voice/SsInfoData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/voice/SsInfoData;

    iput-object v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->ssInfo:[Landroid/hardware/radio/voice/SsInfoData;

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c

    goto/16 :goto_0

    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    :try_start_7
    sget-object v2, Landroid/hardware/radio/voice/CfData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/hardware/radio/voice/CfData;

    iput-object v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->cfData:[Landroid/hardware/radio/voice/CfData;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e

    goto/16 :goto_0

    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_f
    :try_start_8
    new-instance p0, Landroid/os/BadParcelableException;

    const-string v2, "Parcelable too small"

    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_1
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_10

    new-instance p0, Landroid/os/BadParcelableException;

    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "{"

    const-string v2, "}"

    const-string v3, ", "

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "serviceType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->serviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "requestType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->requestType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "teleserviceType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->teleserviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "serviceClass: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->serviceClass:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "result: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->result:I

    invoke-static {v2}, Landroid/hardware/radio/RadioError$$;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ssInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->ssInfo:[Landroid/hardware/radio/voice/SsInfoData;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cfData: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->cfData:[Landroid/hardware/radio/voice/CfData;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "StkCcUnsolSsResult"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->serviceType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->requestType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->teleserviceType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->serviceClass:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->result:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->ssInfo:[Landroid/hardware/radio/voice/SsInfoData;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/hardware/radio/voice/StkCcUnsolSsResult;->cfData:[Landroid/hardware/radio/voice/CfData;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
