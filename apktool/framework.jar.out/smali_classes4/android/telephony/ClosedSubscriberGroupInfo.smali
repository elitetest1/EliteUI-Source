.class public final Landroid/telephony/ClosedSubscriberGroupInfo;
.super Ljava/lang/Object;
.source "ClosedSubscriberGroupInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ClosedSubscriberGroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "ClosedSubscriberGroupInfo"


# instance fields
.field private final blacklist mCsgIdentity:I

.field private final blacklist mCsgIndicator:Z

.field private final blacklist mHomeNodebName:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ClosedSubscriberGroupInfo$1;

    invoke-direct {v0}, Landroid/telephony/ClosedSubscriberGroupInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ClosedSubscriberGroupInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Landroid/telephony/ClosedSubscriberGroupInfo;-><init>(ZLjava/lang/String;I)V

    return-void
.end method

.method public constructor blacklist <init>(ZLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIndicator:Z

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    iput-object p2, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mHomeNodebName:Ljava/lang/String;

    iput p3, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIdentity:I

    return-void
.end method

.method protected static blacklist createFromParcelBody(Landroid/os/Parcel;)Landroid/telephony/ClosedSubscriberGroupInfo;
    .locals 1

    new-instance v0, Landroid/telephony/ClosedSubscriberGroupInfo;

    invoke-direct {v0, p0}, Landroid/telephony/ClosedSubscriberGroupInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/telephony/ClosedSubscriberGroupInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/telephony/ClosedSubscriberGroupInfo;

    iget-boolean v0, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIndicator:Z

    iget-boolean v2, p1, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIndicator:Z

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Landroid/telephony/ClosedSubscriberGroupInfo;->mHomeNodebName:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mHomeNodebName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p0, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIdentity:I

    iget p1, p1, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIdentity:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist getCsgIdentity()I
    .locals 0

    iget p0, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIdentity:I

    return p0
.end method

.method public whitelist getCsgIndicator()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIndicator:Z

    return p0
.end method

.method public whitelist getHomeNodebName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mHomeNodebName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-boolean v0, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIndicator:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mHomeNodebName:Ljava/lang/String;

    iget p0, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIdentity:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClosedSubscriberGroupInfo:{ mCsgIndicator = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIndicator:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mHomeNodebName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mHomeNodebName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCsgIdentity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIdentity:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-boolean p2, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIndicator:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p2, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mHomeNodebName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p0, p0, Landroid/telephony/ClosedSubscriberGroupInfo;->mCsgIdentity:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
