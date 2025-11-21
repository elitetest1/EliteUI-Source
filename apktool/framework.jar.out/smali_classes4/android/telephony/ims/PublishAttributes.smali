.class public final Landroid/telephony/ims/PublishAttributes;
.super Ljava/lang/Object;
.source "PublishAttributes.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/PublishAttributes$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/PublishAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mPresenceTuples:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactPresenceTuple;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mPublishState:I

.field private blacklist mSipDetails:Landroid/telephony/ims/SipDetails;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputmPresenceTuples(Landroid/telephony/ims/PublishAttributes;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/PublishAttributes;->mPresenceTuples:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSipDetails(Landroid/telephony/ims/PublishAttributes;Landroid/telephony/ims/SipDetails;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/PublishAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/ims/PublishAttributes$1;

    invoke-direct {v0}, Landroid/telephony/ims/PublishAttributes$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/PublishAttributes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/ims/PublishAttributes;->mPublishState:I

    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/telephony/ims/PublishAttributes-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/PublishAttributes;-><init>(I)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/PublishAttributes;->mPublishState:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/PublishAttributes;->mPresenceTuples:Ljava/util/List;

    const/4 v1, 0x0

    const-class v2, Landroid/telephony/ims/RcsContactPresenceTuple;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;Ljava/lang/Class;)V

    const-class v0, Landroid/telephony/ims/SipDetails;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/ims/SipDetails;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/SipDetails;

    iput-object p1, p0, Landroid/telephony/ims/PublishAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/PublishAttributes-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/PublishAttributes;-><init>(Landroid/os/Parcel;)V

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
    check-cast p1, Landroid/telephony/ims/PublishAttributes;

    iget v2, p0, Landroid/telephony/ims/PublishAttributes;->mPublishState:I

    iget v3, p1, Landroid/telephony/ims/PublishAttributes;->mPublishState:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/telephony/ims/PublishAttributes;->mPresenceTuples:Ljava/util/List;

    iget-object v3, p1, Landroid/telephony/ims/PublishAttributes;->mPresenceTuples:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/telephony/ims/PublishAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    iget-object p1, p1, Landroid/telephony/ims/PublishAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getPresenceTuples()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RcsContactPresenceTuple;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/ims/PublishAttributes;->mPresenceTuples:Ljava/util/List;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public whitelist getPublishState()I
    .locals 0

    iget p0, p0, Landroid/telephony/ims/PublishAttributes;->mPublishState:I

    return p0
.end method

.method public whitelist getSipDetails()Landroid/telephony/ims/SipDetails;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/PublishAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget v0, p0, Landroid/telephony/ims/PublishAttributes;->mPublishState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/PublishAttributes;->mPresenceTuples:Ljava/util/List;

    iget-object p0, p0, Landroid/telephony/ims/PublishAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PublishAttributes { publishState= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/telephony/ims/PublishAttributes;->mPublishState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", presenceTuples=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/telephony/ims/PublishAttributes;->mPresenceTuples:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]SipDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/telephony/ims/PublishAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/telephony/ims/PublishAttributes;->mPublishState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/telephony/ims/PublishAttributes;->mPresenceTuples:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    iget-object p0, p0, Landroid/telephony/ims/PublishAttributes;->mSipDetails:Landroid/telephony/ims/SipDetails;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
