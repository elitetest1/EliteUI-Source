.class public final Landroid/app/AppOpsManager$NotedOp;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotedOp"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$NotedOp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAttributionTag:Ljava/lang/String;

.field private final blacklist mMessage:Ljava/lang/String;

.field private final blacklist mOp:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mShouldCollectAsyncNotedOp:Z

.field private final blacklist mShouldCollectMessage:Z

.field private final blacklist mUid:I

.field private final blacklist mVirtualDeviceId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/AppOpsManager$NotedOp$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$NotedOp$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$NotedOp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    iput p2, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    iput-object p3, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    iput p5, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    iput-object p6, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    iput-boolean p7, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    iput-boolean p8, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

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
    check-cast p1, Landroid/app/AppOpsManager$NotedOp;

    iget v2, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    iget v3, p1, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    iget v3, p1, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    iget v3, p1, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    iget-object v3, p1, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p1, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean p0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iget-boolean p1, p1, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getAttributionTag()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getOp()I
    .locals 0

    iget p0, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    return p0
.end method

.method public blacklist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getShouldCollectAsyncNotedOp()Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    return p0
.end method

.method public blacklist getShouldCollectMessage()Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    return p0
.end method

.method public blacklist getUid()I
    .locals 0

    iget p0, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    return p0
.end method

.method public blacklist getVirtualDeviceId()I
    .locals 0

    iget p0, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 9

    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    iget v0, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    iget-boolean v0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-boolean p0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotedOp{mOp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPackageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAttributionTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mVirtualDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mShouldCollectAsyncNotedOp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mShouldCollectMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/app/AppOpsManager$NotedOp;->mOp:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/app/AppOpsManager$NotedOp;->mUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/app/AppOpsManager$NotedOp;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/app/AppOpsManager$NotedOp;->mAttributionTag:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Landroid/app/AppOpsManager$NotedOp;->mVirtualDeviceId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/app/AppOpsManager$NotedOp;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectAsyncNotedOp:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p0, p0, Landroid/app/AppOpsManager$NotedOp;->mShouldCollectMessage:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
