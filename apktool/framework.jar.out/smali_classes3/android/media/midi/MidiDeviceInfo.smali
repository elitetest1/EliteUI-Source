.class public final Landroid/media/midi/MidiDeviceInfo;
.super Ljava/lang/Object;
.source "MidiDeviceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/midi/MidiDeviceInfo$PortInfo;,
        Landroid/media/midi/MidiDeviceInfo$Protocol;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/midi/MidiDeviceInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o PROPERTY_ALSA_CARD:Ljava/lang/String; = "alsa_card"

.field public static final greylist-max-o PROPERTY_ALSA_DEVICE:Ljava/lang/String; = "alsa_device"

.field public static final whitelist PROPERTY_BLUETOOTH_DEVICE:Ljava/lang/String; = "bluetooth_device"

.field public static final whitelist PROPERTY_MANUFACTURER:Ljava/lang/String; = "manufacturer"

.field public static final whitelist PROPERTY_NAME:Ljava/lang/String; = "name"

.field public static final whitelist PROPERTY_PRODUCT:Ljava/lang/String; = "product"

.field public static final whitelist PROPERTY_SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field public static final greylist-max-o PROPERTY_SERVICE_INFO:Ljava/lang/String; = "service_info"

.field public static final whitelist PROPERTY_USB_DEVICE:Ljava/lang/String; = "usb_device"

.field public static final whitelist PROPERTY_VERSION:Ljava/lang/String; = "version"

.field public static final whitelist PROTOCOL_UMP_MIDI_1_0_UP_TO_128_BITS:I = 0x3

.field public static final whitelist PROTOCOL_UMP_MIDI_1_0_UP_TO_128_BITS_AND_JRTS:I = 0x4

.field public static final whitelist PROTOCOL_UMP_MIDI_1_0_UP_TO_64_BITS:I = 0x1

.field public static final whitelist PROTOCOL_UMP_MIDI_1_0_UP_TO_64_BITS_AND_JRTS:I = 0x2

.field public static final whitelist PROTOCOL_UMP_MIDI_2_0:I = 0x11

.field public static final whitelist PROTOCOL_UMP_MIDI_2_0_AND_JRTS:I = 0x12

.field public static final whitelist PROTOCOL_UMP_USE_MIDI_CI:I = 0x0

.field public static final whitelist PROTOCOL_UNKNOWN:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "MidiDeviceInfo"

.field public static final whitelist TYPE_BLUETOOTH:I = 0x3

.field public static final whitelist TYPE_USB:I = 0x1

.field public static final whitelist TYPE_VIRTUAL:I = 0x2


# instance fields
.field private final blacklist mDefaultProtocol:I

.field private final greylist-max-o mId:I

.field private final greylist-max-o mInputPortCount:I

.field private final greylist-max-o mInputPortNames:[Ljava/lang/String;

.field private final greylist-max-o mIsPrivate:Z

.field private final greylist-max-o mOutputPortCount:I

.field private final greylist-max-o mOutputPortNames:[Ljava/lang/String;

.field private final greylist-max-o mProperties:Landroid/os/Bundle;

.field private final greylist-max-o mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/midi/MidiDeviceInfo$1;

    invoke-direct {v0}, Landroid/media/midi/MidiDeviceInfo$1;-><init>()V

    sput-object v0, Landroid/media/midi/MidiDeviceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIII[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p3, :cond_3

    const/16 v0, 0x100

    if-gt p3, v0, :cond_3

    if-ltz p4, :cond_2

    if-gt p4, v0, :cond_2

    iput p1, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    iput p2, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    iput p3, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    iput p4, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    if-nez p5, :cond_0

    new-array p1, p3, [Ljava/lang/String;

    iput-object p1, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p5, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    :goto_0
    if-nez p6, :cond_1

    new-array p1, p4, [Ljava/lang/String;

    iput-object p1, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    goto :goto_1

    :cond_1
    iput-object p6, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    :goto_1
    iput-object p7, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    iput-boolean p8, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    iput p9, p0, Landroid/media/midi/MidiDeviceInfo;->mDefaultProtocol:I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "numOutputPorts out of range = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "numInputPorts out of range = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-o getBasicProperties([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    iget-object v4, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Unsupported property type: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MidiDeviceInfo"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Landroid/media/midi/MidiDeviceInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Landroid/media/midi/MidiDeviceInfo;

    iget p1, p1, Landroid/media/midi/MidiDeviceInfo;->mId:I

    iget p0, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public whitelist getDefaultProtocol()I
    .locals 0

    iget p0, p0, Landroid/media/midi/MidiDeviceInfo;->mDefaultProtocol:I

    return p0
.end method

.method public whitelist getId()I
    .locals 0

    iget p0, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    return p0
.end method

.method public whitelist getInputPortCount()I
    .locals 0

    iget p0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    return p0
.end method

.method public whitelist getOutputPortCount()I
    .locals 0

    iget p0, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    return p0
.end method

.method public whitelist getPorts()[Landroid/media/midi/MidiDeviceInfo$PortInfo;
    .locals 8

    iget v0, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    iget v1, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    add-int/2addr v0, v1

    new-array v0, v0, [Landroid/media/midi/MidiDeviceInfo$PortInfo;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    if-ge v2, v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    new-instance v5, Landroid/media/midi/MidiDeviceInfo$PortInfo;

    iget-object v6, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    aget-object v6, v6, v2

    const/4 v7, 0x1

    invoke-direct {v5, v7, v2, v6}, Landroid/media/midi/MidiDeviceInfo$PortInfo;-><init>(IILjava/lang/String;)V

    aput-object v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_0

    :cond_0
    :goto_1
    iget v2, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, v3, 0x1

    new-instance v4, Landroid/media/midi/MidiDeviceInfo$PortInfo;

    iget-object v5, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    aget-object v5, v5, v1

    const/4 v6, 0x2

    invoke-direct {v4, v6, v1, v5}, Landroid/media/midi/MidiDeviceInfo$PortInfo;-><init>(IILjava/lang/String;)V

    aput-object v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v2

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public whitelist getProperties()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist getType()I
    .locals 0

    iget p0, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget p0, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    return p0
.end method

.method public whitelist isPrivate()Z
    .locals 0

    iget-boolean p0, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MidiDeviceInfo[mType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mInputPortCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mOutputPortCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mIsPrivate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mDefaultProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/media/midi/MidiDeviceInfo;->mDefaultProtocol:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    iget p2, p0, Landroid/media/midi/MidiDeviceInfo;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/midi/MidiDeviceInfo;->mId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/media/midi/MidiDeviceInfo;->mInputPortNames:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object p2, p0, Landroid/media/midi/MidiDeviceInfo;->mOutputPortNames:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/media/midi/MidiDeviceInfo;->mIsPrivate:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/midi/MidiDeviceInfo;->mDefaultProtocol:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const-string v5, "alsa_card"

    const-string v6, "alsa_device"

    const-string/jumbo v0, "name"

    const-string/jumbo v1, "manufacturer"

    const-string/jumbo v2, "product"

    const-string/jumbo v3, "version"

    const-string/jumbo v4, "serial_number"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Landroid/media/midi/MidiDeviceInfo;->getBasicProperties([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object p0, p0, Landroid/media/midi/MidiDeviceInfo;->mProperties:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
