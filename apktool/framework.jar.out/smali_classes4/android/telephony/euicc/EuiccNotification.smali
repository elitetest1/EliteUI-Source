.class public final Landroid/telephony/euicc/EuiccNotification;
.super Ljava/lang/Object;
.source "EuiccNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/euicc/EuiccNotification$Event;
    }
.end annotation


# static fields
.field public static final whitelist ALL_EVENTS:I = 0xf

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EVENT_DELETE:I = 0x8

.field public static final whitelist EVENT_DISABLE:I = 0x4

.field public static final whitelist EVENT_ENABLE:I = 0x2

.field public static final whitelist EVENT_INSTALL:I = 0x1


# instance fields
.field private final greylist-max-o mData:[B

.field private final greylist-max-o mEvent:I

.field private final greylist-max-o mSeq:I

.field private final greylist-max-o mTargetAddr:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/euicc/EuiccNotification$1;

    invoke-direct {v0}, Landroid/telephony/euicc/EuiccNotification$1;-><init>()V

    sput-object v0, Landroid/telephony/euicc/EuiccNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(ILjava/lang/String;I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    iput-object p2, p0, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    iput p3, p0, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    iput-object p4, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/euicc/EuiccNotification-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/euicc/EuiccNotification;-><init>(Landroid/os/Parcel;)V

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
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/telephony/euicc/EuiccNotification;

    iget v2, p0, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    iget v3, p1, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    iget-object v3, p1, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    iget v3, p1, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    if-ne v2, v3, :cond_2

    iget-object p0, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    iget-object p1, p1, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getData()[B
    .locals 0

    iget-object p0, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    return-object p0
.end method

.method public whitelist getEvent()I
    .locals 0

    iget p0, p0, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    return p0
.end method

.method public whitelist getSeq()I
    .locals 0

    iget p0, p0, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    return p0
.end method

.method public whitelist getTargetAddr()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object p0, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EuiccNotification (seq="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    if-nez v1, :cond_0

    const-string/jumbo p0, "null"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byte["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/euicc/EuiccNotification;->mSeq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/telephony/euicc/EuiccNotification;->mTargetAddr:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/telephony/euicc/EuiccNotification;->mEvent:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Landroid/telephony/euicc/EuiccNotification;->mData:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
