.class public final Landroid/telephony/satellite/AntennaPosition;
.super Ljava/lang/Object;
.source "AntennaPosition.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/AntennaPosition;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAntennaDirection:Landroid/telephony/satellite/AntennaDirection;

.field private blacklist mSuggestedHoldPosition:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/satellite/AntennaPosition$1;

    invoke-direct {v0}, Landroid/telephony/satellite/AntennaPosition$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/AntennaPosition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/telephony/satellite/AntennaPosition;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/AntennaPosition-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/satellite/AntennaPosition;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/satellite/AntennaDirection;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telephony/satellite/AntennaPosition;->mAntennaDirection:Landroid/telephony/satellite/AntennaDirection;

    iput p2, p0, Landroid/telephony/satellite/AntennaPosition;->mSuggestedHoldPosition:I

    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    const-class v0, Landroid/telephony/satellite/AntennaDirection;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/satellite/AntennaDirection;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/satellite/AntennaDirection;

    iput-object v0, p0, Landroid/telephony/satellite/AntennaPosition;->mAntennaDirection:Landroid/telephony/satellite/AntennaDirection;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/telephony/satellite/AntennaPosition;->mSuggestedHoldPosition:I

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
    check-cast p1, Landroid/telephony/satellite/AntennaPosition;

    iget-object v2, p0, Landroid/telephony/satellite/AntennaPosition;->mAntennaDirection:Landroid/telephony/satellite/AntennaDirection;

    iget-object v3, p1, Landroid/telephony/satellite/AntennaPosition;->mAntennaDirection:Landroid/telephony/satellite/AntennaDirection;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget p0, p0, Landroid/telephony/satellite/AntennaPosition;->mSuggestedHoldPosition:I

    iget p1, p1, Landroid/telephony/satellite/AntennaPosition;->mSuggestedHoldPosition:I

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getAntennaDirection()Landroid/telephony/satellite/AntennaDirection;
    .locals 0

    iget-object p0, p0, Landroid/telephony/satellite/AntennaPosition;->mAntennaDirection:Landroid/telephony/satellite/AntennaDirection;

    return-object p0
.end method

.method public whitelist getSuggestedHoldPosition()I
    .locals 0

    iget p0, p0, Landroid/telephony/satellite/AntennaPosition;->mSuggestedHoldPosition:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/telephony/satellite/AntennaPosition;->mAntennaDirection:Landroid/telephony/satellite/AntennaDirection;

    iget p0, p0, Landroid/telephony/satellite/AntennaPosition;->mSuggestedHoldPosition:I

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

    const-string v1, "antennaDirection:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/satellite/AntennaPosition;->mAntennaDirection:Landroid/telephony/satellite/AntennaDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",suggestedHoldPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/telephony/satellite/AntennaPosition;->mSuggestedHoldPosition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/satellite/AntennaPosition;->mAntennaDirection:Landroid/telephony/satellite/AntennaDirection;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget p0, p0, Landroid/telephony/satellite/AntennaPosition;->mSuggestedHoldPosition:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
