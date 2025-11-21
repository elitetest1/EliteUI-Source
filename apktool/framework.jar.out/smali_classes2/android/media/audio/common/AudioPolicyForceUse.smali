.class public final Landroid/media/audio/common/AudioPolicyForceUse;
.super Ljava/lang/Object;
.source "AudioPolicyForceUse.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audio/common/AudioPolicyForceUse$MediaDeviceCategory;,
        Landroid/media/audio/common/AudioPolicyForceUse$Tag;,
        Landroid/media/audio/common/AudioPolicyForceUse$EncodedSurroundConfig;,
        Landroid/media/audio/common/AudioPolicyForceUse$DockType;,
        Landroid/media/audio/common/AudioPolicyForceUse$CommunicationDeviceCategory;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/audio/common/AudioPolicyForceUse;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist dock:I = 0x4

.field public static final blacklist encodedSurround:I = 0x7

.field public static final blacklist forCommunication:I = 0x1

.field public static final blacklist forMedia:I = 0x0

.field public static final blacklist forRecord:I = 0x2

.field public static final blacklist forVibrateRinging:I = 0x3

.field public static final blacklist hdmiSystemAudio:I = 0x6

.field public static final blacklist systemSounds:I = 0x5


# instance fields
.field private blacklist _tag:I

.field private blacklist _value:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse$1;

    invoke-direct {v0}, Landroid/media/audio/common/AudioPolicyForceUse$1;-><init>()V

    sput-object v0, Landroid/media/audio/common/AudioPolicyForceUse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_tag:I

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_tag:I

    iput-object p2, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/audio/common/AudioPolicyForceUse-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private blacklist _assertTag(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "bad access: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getTag()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_tagString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is available."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist _set(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_tag:I

    iput-object p2, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    return-void
.end method

.method private blacklist _tagString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown field: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string p0, "encodedSurround"

    return-object p0

    :pswitch_1
    const-string p0, "hdmiSystemAudio"

    return-object p0

    :pswitch_2
    const-string p0, "systemSounds"

    return-object p0

    :pswitch_3
    const-string p0, "dock"

    return-object p0

    :pswitch_4
    const-string p0, "forVibrateRinging"

    return-object p0

    :pswitch_5
    const-string p0, "forRecord"

    return-object p0

    :pswitch_6
    const-string p0, "forCommunication"

    return-object p0

    :pswitch_7
    const-string p0, "forMedia"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist dock(B)Landroid/media/audio/common/AudioPolicyForceUse;
    .locals 2

    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x4

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist encodedSurround(B)Landroid/media/audio/common/AudioPolicyForceUse;
    .locals 2

    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x7

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist forCommunication(B)Landroid/media/audio/common/AudioPolicyForceUse;
    .locals 2

    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x1

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist forMedia(B)Landroid/media/audio/common/AudioPolicyForceUse;
    .locals 2

    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist forRecord(B)Landroid/media/audio/common/AudioPolicyForceUse;
    .locals 2

    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x2

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist forVibrateRinging(B)Landroid/media/audio/common/AudioPolicyForceUse;
    .locals 2

    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x3

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist hdmiSystemAudio(Z)Landroid/media/audio/common/AudioPolicyForceUse;
    .locals 2

    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x6

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static blacklist systemSounds(Z)Landroid/media/audio/common/AudioPolicyForceUse;
    .locals 2

    new-instance v0, Landroid/media/audio/common/AudioPolicyForceUse;

    const/4 v1, 0x5

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Landroid/media/audio/common/AudioPolicyForceUse;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getTag()I

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getDock()B
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    iget-object p0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public blacklist getEncodedSurround()B
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    iget-object p0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public blacklist getForCommunication()B
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    iget-object p0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public blacklist getForMedia()B
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    iget-object p0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public blacklist getForRecord()B
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    iget-object p0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public blacklist getForVibrateRinging()B
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    iget-object p0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public blacklist getHdmiSystemAudio()Z
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    iget-object p0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final whitelist getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist getSystemSounds()Z
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Landroid/media/audio/common/AudioPolicyForceUse;->_assertTag(I)V

    iget-object p0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public blacklist getTag()I
    .locals 0

    iget p0, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_tag:I

    return p0
.end method

.method public blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "union: unknown tag: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    return-void

    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public blacklist setDock(B)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setEncodedSurround(B)V
    .locals 1

    const/4 v0, 0x7

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setForCommunication(B)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setForMedia(B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setForRecord(B)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setForVibrateRinging(B)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setHdmiSystemAudio(Z)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public blacklist setSystemSounds(Z)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Landroid/media/audio/common/AudioPolicyForceUse;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_tag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/media/audio/common/AudioPolicyForceUse;->_tag:I

    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getEncodedSurround()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :pswitch_1
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getHdmiSystemAudio()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_2
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getSystemSounds()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void

    :pswitch_3
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getDock()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :pswitch_4
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getForVibrateRinging()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :pswitch_5
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getForRecord()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :pswitch_6
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getForCommunication()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    :pswitch_7
    invoke-virtual {p0}, Landroid/media/audio/common/AudioPolicyForceUse;->getForMedia()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
