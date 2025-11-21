.class public final Lcom/samsung/android/edge/EdgeLightingPolicy;
.super Ljava/lang/Object;
.source "EdgeLightingPolicy.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/edge/EdgeLightingPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist TYPE_EXCLUDE_BLACK_LIST:I = 0x4

.field public static final blacklist TYPE_EXCLUDE_SYSTEM_APP:I = 0x2

.field public static final blacklist TYPE_INCLUDE_ALL_APP:I = 0x1

.field public static final blacklist TYPE_NOT_CONNECTED_MODE:I = 0x8


# instance fields
.field private blacklist mPolicyInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/edge/EdgeLightingPolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mType:I

.field private blacklist mVersion:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/edge/EdgeLightingPolicy$1;

    invoke-direct {v0}, Lcom/samsung/android/edge/EdgeLightingPolicy$1;-><init>()V

    sput-object v0, Lcom/samsung/android/edge/EdgeLightingPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mVersion:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mPolicyInfoList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mType:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mVersion:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mVersion:J

    iget-object p0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mPolicyInfoList:Ljava/util/ArrayList;

    sget-object v0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    return-void
.end method


# virtual methods
.method public blacklist addEdgeLightingPolicyInfo(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getEdgeLightingPolicyInfoList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/edge/EdgeLightingPolicyInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mPolicyInfoList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public blacklist getPolicyType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mType:I

    return p0
.end method

.method public blacklist getPolicyVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mVersion:J

    return-wide v0
.end method

.method public blacklist setPolicyType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mType:I

    return-void
.end method

.method public blacklist setPolicyVersion(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mVersion:J

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EdgeLightingPolicy{Type = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mVersion:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object p0, p0, Lcom/samsung/android/edge/EdgeLightingPolicy;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
