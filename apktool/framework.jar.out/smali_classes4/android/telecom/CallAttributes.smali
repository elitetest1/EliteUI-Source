.class public final Landroid/telecom/CallAttributes;
.super Ljava/lang/Object;
.source "CallAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/CallAttributes$Builder;,
        Landroid/telecom/CallAttributes$CallCapability;,
        Landroid/telecom/CallAttributes$CallType;,
        Landroid/telecom/CallAttributes$Direction;
    }
.end annotation


# static fields
.field public static final whitelist AUDIO_CALL:I = 0x1

.field public static final blacklist CALLER_PID_KEY:Ljava/lang/String; = "CallerPid"

.field public static final blacklist CALLER_UID_KEY:Ljava/lang/String; = "CallerUid"

.field public static final blacklist CALL_CAPABILITIES_KEY:Ljava/lang/String; = "TelecomCapabilities"

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/CallAttributes;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DIRECTION_INCOMING:I = 0x1

.field public static final whitelist DIRECTION_OUTGOING:I = 0x2

.field public static final blacklist DISPLAY_NAME_KEY:Ljava/lang/String; = "DisplayName"

.field public static final whitelist SUPPORTS_SET_INACTIVE:I = 0x2

.field public static final whitelist SUPPORTS_STREAM:I = 0x4

.field public static final whitelist SUPPORTS_TRANSFER:I = 0x8

.field public static final whitelist SUPPORTS_VIDEO_CALLING:I = 0x10

.field public static final whitelist VIDEO_CALL:I = 0x2


# instance fields
.field private final blacklist mAddress:Landroid/net/Uri;

.field private final blacklist mCallCapabilities:I

.field private final blacklist mCallType:I

.field private final blacklist mDirection:I

.field private final blacklist mDisplayName:Ljava/lang/CharSequence;

.field private final blacklist mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telecom/CallAttributes$1;

    invoke-direct {v0}, Landroid/telecom/CallAttributes$1;-><init>()V

    sput-object v0, Landroid/telecom/CallAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;Landroid/net/Uri;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/CallAttributes;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iput-object p2, p0, Landroid/telecom/CallAttributes;->mDisplayName:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/telecom/CallAttributes;->mAddress:Landroid/net/Uri;

    iput p4, p0, Landroid/telecom/CallAttributes;->mDirection:I

    iput p5, p0, Landroid/telecom/CallAttributes;->mCallType:I

    iput p6, p0, Landroid/telecom/CallAttributes;->mCallCapabilities:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;Landroid/net/Uri;IIILandroid/telecom/CallAttributes-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/telecom/CallAttributes;-><init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;Landroid/net/Uri;III)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Landroid/telecom/CallAttributes;

    iget v1, p0, Landroid/telecom/CallAttributes;->mDirection:I

    iget v2, p1, Landroid/telecom/CallAttributes;->mDirection:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/telecom/CallAttributes;->mCallType:I

    iget v2, p1, Landroid/telecom/CallAttributes;->mCallType:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/telecom/CallAttributes;->mCallCapabilities:I

    iget v2, p1, Landroid/telecom/CallAttributes;->mCallCapabilities:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/telecom/CallAttributes;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p1, Landroid/telecom/CallAttributes;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/telecom/CallAttributes;->mAddress:Landroid/net/Uri;

    iget-object v2, p1, Landroid/telecom/CallAttributes;->mAddress:Landroid/net/Uri;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroid/telecom/CallAttributes;->mDisplayName:Ljava/lang/CharSequence;

    iget-object p1, p1, Landroid/telecom/CallAttributes;->mDisplayName:Ljava/lang/CharSequence;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public whitelist getAddress()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/telecom/CallAttributes;->mAddress:Landroid/net/Uri;

    return-object p0
.end method

.method public whitelist getCallCapabilities()I
    .locals 0

    iget p0, p0, Landroid/telecom/CallAttributes;->mCallCapabilities:I

    return p0
.end method

.method public whitelist getCallType()I
    .locals 0

    iget p0, p0, Landroid/telecom/CallAttributes;->mCallType:I

    return p0
.end method

.method public whitelist getDirection()I
    .locals 0

    iget p0, p0, Landroid/telecom/CallAttributes;->mDirection:I

    return p0
.end method

.method public whitelist getDisplayName()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/telecom/CallAttributes;->mDisplayName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 0

    iget-object p0, p0, Landroid/telecom/CallAttributes;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    iget-object v0, p0, Landroid/telecom/CallAttributes;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v1, p0, Landroid/telecom/CallAttributes;->mAddress:Landroid/net/Uri;

    iget-object v2, p0, Landroid/telecom/CallAttributes;->mDisplayName:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/telecom/CallAttributes;->mDirection:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Landroid/telecom/CallAttributes;->mCallType:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget p0, p0, Landroid/telecom/CallAttributes;->mCallCapabilities:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{ CallAttributes: [phoneAccountHandle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telecom/CallAttributes;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], [contactName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telecom/CallAttributes;->mDisplayName:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], [address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telecom/CallAttributes;->mAddress:Landroid/net/Uri;

    invoke-static {v1}, Landroid/telecom/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], [direction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telecom/CallAttributes;->mDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], [callType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telecom/CallAttributes;->mCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], [mCallCapabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telecom/CallAttributes;->mCallCapabilities:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]  }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/telecom/CallAttributes;->mPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/telecom/CallAttributes;->mDisplayName:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/telecom/CallAttributes;->mAddress:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p2, p0, Landroid/telecom/CallAttributes;->mDirection:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/telecom/CallAttributes;->mCallType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/telecom/CallAttributes;->mCallCapabilities:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
