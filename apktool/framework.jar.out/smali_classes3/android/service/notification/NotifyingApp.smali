.class public final Landroid/service/notification/NotifyingApp;
.super Ljava/lang/Object;
.source "NotifyingApp.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/service/notification/NotifyingApp;",
        ">;"
    }
.end annotation


# static fields
.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/notification/NotifyingApp;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mLastNotified:J

.field private greylist-max-o mPkg:Ljava/lang/String;

.field private blacklist mUserId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/notification/NotifyingApp$1;

    invoke-direct {v0}, Landroid/service/notification/NotifyingApp$1;-><init>()V

    sput-object v0, Landroid/service/notification/NotifyingApp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/NotifyingApp;->mUserId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/service/notification/NotifyingApp;->mLastNotified:J

    return-void
.end method


# virtual methods
.method public greylist-max-o compareTo(Landroid/service/notification/NotifyingApp;)I
    .locals 4

    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result p0

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    neg-int p0, p0

    return p0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/service/notification/NotifyingApp;

    invoke-virtual {p0, p1}, Landroid/service/notification/NotifyingApp;->compareTo(Landroid/service/notification/NotifyingApp;)I

    move-result p0

    return p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 6

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
    check-cast p1, Landroid/service/notification/NotifyingApp;

    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v2

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object p0, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    iget-object p1, p1, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public greylist-max-o getLastNotified()J
    .locals 2

    iget-wide v0, p0, Landroid/service/notification/NotifyingApp;->mLastNotified:J

    return-wide v0
.end method

.method public greylist-max-o getPackage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getUserId()I
    .locals 0

    iget p0, p0, Landroid/service/notification/NotifyingApp;->mUserId:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getUserId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/service/notification/NotifyingApp;->getLastNotified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public greylist-max-o setLastNotified(J)Landroid/service/notification/NotifyingApp;
    .locals 0

    iput-wide p1, p0, Landroid/service/notification/NotifyingApp;->mLastNotified:J

    return-object p0
.end method

.method public greylist-max-o setPackage(Ljava/lang/String;)Landroid/service/notification/NotifyingApp;
    .locals 0

    iput-object p1, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setUserId(I)Landroid/service/notification/NotifyingApp;
    .locals 0

    iput p1, p0, Landroid/service/notification/NotifyingApp;->mUserId:I

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotifyingApp{mUserId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/service/notification/NotifyingApp;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPkg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', mLastNotified="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/service/notification/NotifyingApp;->mLastNotified:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget p2, p0, Landroid/service/notification/NotifyingApp;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/service/notification/NotifyingApp;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Landroid/service/notification/NotifyingApp;->mLastNotified:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
