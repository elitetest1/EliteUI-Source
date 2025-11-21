.class public final Landroid/hardware/contexthub/HubEndpointInfo;
.super Ljava/lang/Object;
.source "HubEndpointInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;,
        Landroid/hardware/contexthub/HubEndpointInfo$EndpointType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/contexthub/HubEndpointInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TYPE_APP:I = 0x2

.field public static final whitelist TYPE_FRAMEWORK:I = 0x1

.field public static final whitelist TYPE_HUB_ENDPOINT:I = 0x5

.field public static final whitelist TYPE_NANOAPP:I = 0x4

.field public static final whitelist TYPE_NATIVE:I = 0x3


# instance fields
.field private final blacklist mHubServiceInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/HubServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mId:Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mRequiredPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mTag:Ljava/lang/String;

.field private final blacklist mType:I

.field private final blacklist mVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/contexthub/HubEndpointInfo$1;

    invoke-direct {v0}, Landroid/hardware/contexthub/HubEndpointInfo$1;-><init>()V

    sput-object v0, Landroid/hardware/contexthub/HubEndpointInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/contexthub/EndpointInfo;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    iget-object v1, p1, Landroid/hardware/contexthub/EndpointInfo;->id:Landroid/hardware/contexthub/EndpointId;

    iget-wide v1, v1, Landroid/hardware/contexthub/EndpointId;->hubId:J

    iget-object v3, p1, Landroid/hardware/contexthub/EndpointInfo;->id:Landroid/hardware/contexthub/EndpointId;

    iget-wide v3, v3, Landroid/hardware/contexthub/EndpointId;->id:J

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;-><init>(JJ)V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mId:Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    iget v0, p1, Landroid/hardware/contexthub/EndpointInfo;->type:I

    iput v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mType:I

    iget-object v0, p1, Landroid/hardware/contexthub/EndpointInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mName:Ljava/lang/String;

    iget v0, p1, Landroid/hardware/contexthub/EndpointInfo;->version:I

    iput v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mVersion:I

    iget-object v0, p1, Landroid/hardware/contexthub/EndpointInfo;->tag:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mTag:Ljava/lang/String;

    iget-object v0, p1, Landroid/hardware/contexthub/EndpointInfo;->requiredPermissions:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mRequiredPermissions:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mHubServiceInfos:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mHubServiceInfos:Ljava/util/List;

    new-instance v2, Landroid/hardware/contexthub/HubServiceInfo;

    iget-object v3, p1, Landroid/hardware/contexthub/EndpointInfo;->services:[Landroid/hardware/contexthub/Service;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Landroid/hardware/contexthub/HubServiceInfo;-><init>(Landroid/hardware/contexthub/Service;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    new-instance v4, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;-><init>(JJ)V

    iput-object v4, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mId:Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mVersion:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mRequiredPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mHubServiceInfos:Ljava/util/List;

    sget-object p0, Landroid/hardware/contexthub/HubServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, p0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/hardware/contexthub/HubEndpointInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/contexthub/HubEndpointInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/hardware/contexthub/HubServiceInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->invalid()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mId:Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mType:I

    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mName:Ljava/lang/String;

    iput p2, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mVersion:I

    iput-object p3, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mTag:Ljava/lang/String;

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mRequiredPermissions:Ljava/util/List;

    iput-object p4, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mHubServiceInfos:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 2

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mHubServiceInfos:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contexthub/HubServiceInfo;

    invoke-virtual {v1}, Landroid/hardware/contexthub/HubServiceInfo;->describeContents()I

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public whitelist getIdentifier()Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mId:Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    return-object p0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getRequiredPermissions()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mRequiredPermissions:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getServiceInfoCollection()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/hardware/contexthub/HubServiceInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mHubServiceInfos:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getType()I
    .locals 0

    iget p0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mType:I

    return p0
.end method

.method public whitelist getVersion()I
    .locals 0

    iget p0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mVersion:I

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Endpoint [0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mId:Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    invoke-virtual {v1}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@ Hub 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mId:Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    invoke-virtual {v1}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getHub()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mTag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mId:Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getHub()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mId:Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;

    invoke-virtual {v0}, Landroid/hardware/contexthub/HubEndpointInfo$HubEndpointIdentifier;->getEndpoint()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mVersion:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mRequiredPermissions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object p0, p0, Landroid/hardware/contexthub/HubEndpointInfo;->mHubServiceInfos:Ljava/util/List;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    return-void
.end method
