.class public final Landroid/telephony/SignalStrengthUpdateRequest;
.super Ljava/lang/Object;
.source "SignalStrengthUpdateRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SignalStrengthUpdateRequest$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SignalStrengthUpdateRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mIsReportingRequestedWhileIdle:Z

.field private final blacklist mIsSystemThresholdReportingRequestedWhileIdle:Z

.field private final blacklist mLiveToken:Landroid/os/IBinder;

.field private final blacklist mSignalThresholdInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/telephony/SignalStrengthUpdateRequest$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrengthUpdateRequest$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrengthUpdateRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/telephony/SignalThresholdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mSignalThresholdInfos:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsReportingRequestedWhileIdle:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsSystemThresholdReportingRequestedWhileIdle:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mLiveToken:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/SignalStrengthUpdateRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/SignalStrengthUpdateRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p3}, Landroid/telephony/SignalStrengthUpdateRequest;->validate(Ljava/util/Collection;Z)V

    iput-object p1, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mSignalThresholdInfos:Ljava/util/List;

    iput-boolean p2, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsReportingRequestedWhileIdle:Z

    iput-boolean p3, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsSystemThresholdReportingRequestedWhileIdle:Z

    new-instance p1, Landroid/os/Binder;

    invoke-direct {p1}, Landroid/os/Binder;-><init>()V

    iput-object p1, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mLiveToken:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;ZZLandroid/telephony/SignalStrengthUpdateRequest-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/SignalStrengthUpdateRequest;-><init>(Ljava/util/List;ZZ)V

    return-void
.end method

.method private static blacklist validate(Ljava/util/Collection;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SignalThresholdInfo;

    invoke-virtual {v0}, Landroid/telephony/SignalThresholdInfo;->getRadioAccessNetworkType()I

    move-result v1

    invoke-virtual {v0}, Landroid/telephony/SignalThresholdInfo;->getSignalMeasurementType()I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "SignalMeasurementType "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for RAN "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is not unique"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "SignalThresholdInfo collection is null or empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
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
    instance-of v1, p1, Landroid/telephony/SignalStrengthUpdateRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/telephony/SignalStrengthUpdateRequest;

    iget-object v1, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mSignalThresholdInfos:Ljava/util/List;

    iget-object v3, p1, Landroid/telephony/SignalStrengthUpdateRequest;->mSignalThresholdInfos:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsReportingRequestedWhileIdle:Z

    iget-boolean v3, p1, Landroid/telephony/SignalStrengthUpdateRequest;->mIsReportingRequestedWhileIdle:Z

    if-ne v1, v3, :cond_2

    iget-boolean p0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsSystemThresholdReportingRequestedWhileIdle:Z

    iget-boolean p1, p1, Landroid/telephony/SignalStrengthUpdateRequest;->mIsSystemThresholdReportingRequestedWhileIdle:Z

    if-ne p0, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public blacklist getLiveToken()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mLiveToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public whitelist getSignalThresholdInfos()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/telephony/SignalThresholdInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mSignalThresholdInfos:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mSignalThresholdInfos:Ljava/util/List;

    iget-boolean v1, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsReportingRequestedWhileIdle:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean p0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsSystemThresholdReportingRequestedWhileIdle:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist isReportingRequestedWhileIdle()Z
    .locals 0

    iget-boolean p0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsReportingRequestedWhileIdle:Z

    return p0
.end method

.method public whitelist isSystemThresholdReportingRequestedWhileIdle()Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean p0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsSystemThresholdReportingRequestedWhileIdle:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SignalStrengthUpdateRequest{mSignalThresholdInfos="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mSignalThresholdInfos:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mIsReportingRequestedWhileIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsReportingRequestedWhileIdle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsSystemThresholdReportingRequestedWhileIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsSystemThresholdReportingRequestedWhileIdle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLiveToken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mLiveToken:Landroid/os/IBinder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mSignalThresholdInfos:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    iget-boolean p2, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsReportingRequestedWhileIdle:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean p2, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mIsSystemThresholdReportingRequestedWhileIdle:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p0, p0, Landroid/telephony/SignalStrengthUpdateRequest;->mLiveToken:Landroid/os/IBinder;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return-void
.end method
