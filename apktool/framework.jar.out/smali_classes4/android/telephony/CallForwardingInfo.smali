.class public final Landroid/telephony/CallForwardingInfo;
.super Ljava/lang/Object;
.source "CallForwardingInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/CallForwardingInfo$CallForwardingReason;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/CallForwardingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist REASON_ALL:I = 0x4

.field public static final whitelist REASON_ALL_CONDITIONAL:I = 0x5

.field public static final whitelist REASON_BUSY:I = 0x1

.field public static final whitelist REASON_NOT_REACHABLE:I = 0x3

.field public static final whitelist REASON_NO_REPLY:I = 0x2

.field public static final whitelist REASON_UNCONDITIONAL:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "CallForwardingInfo"


# instance fields
.field private blacklist mEnabled:Z

.field private blacklist mNumber:Ljava/lang/String;

.field private blacklist mReason:I

.field private blacklist mTimeSeconds:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/CallForwardingInfo$1;

    invoke-direct {v0}, Landroid/telephony/CallForwardingInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/CallForwardingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/CallForwardingInfo;->mEnabled:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/CallForwardingInfo;->mReason:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/CallForwardingInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/CallForwardingInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(ZILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/telephony/CallForwardingInfo;->mEnabled:Z

    iput p2, p0, Landroid/telephony/CallForwardingInfo;->mReason:I

    iput-object p3, p0, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    iput p4, p0, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

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
    instance-of v1, p1, Landroid/telephony/CallForwardingInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/telephony/CallForwardingInfo;

    iget-boolean v1, p0, Landroid/telephony/CallForwardingInfo;->mEnabled:Z

    iget-boolean v3, p1, Landroid/telephony/CallForwardingInfo;->mEnabled:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/telephony/CallForwardingInfo;->mReason:I

    iget v3, p1, Landroid/telephony/CallForwardingInfo;->mReason:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    iget p1, p1, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public whitelist getNumber()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getReason()I
    .locals 0

    iget p0, p0, Landroid/telephony/CallForwardingInfo;->mReason:I

    return p0
.end method

.method public whitelist getTimeoutSeconds()I
    .locals 0

    iget p0, p0, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget-boolean v0, p0, Landroid/telephony/CallForwardingInfo;->mEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    iget v2, p0, Landroid/telephony/CallForwardingInfo;->mReason:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget p0, p0, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist isEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/CallForwardingInfo;->mEnabled:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CallForwardingInfo: enabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/telephony/CallForwardingInfo;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reason= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CallForwardingInfo;->mReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeSec= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seconds, number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CallForwardingInfo"

    iget-object p0, p0, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/telephony/CallForwardingInfo;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/telephony/CallForwardingInfo;->mEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget p2, p0, Landroid/telephony/CallForwardingInfo;->mReason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Landroid/telephony/CallForwardingInfo;->mTimeSeconds:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
