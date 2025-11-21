.class final Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;
.super Ljava/lang/Object;
.source "FadeManagerConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/FadeManagerConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FadeVolumeShaperConfigsWrapper"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

.field private blacklist mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper$1;

    invoke-direct {v0}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper$1;-><init>()V

    sput-object v0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Fade volume shaper configs wrapper cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    iget-object p1, p1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    iput-object p1, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/media/VolumeShaper$Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/VolumeShaper$Configuration;

    iput-object v0, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    sget-object v0, Landroid/media/VolumeShaper$Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/VolumeShaper$Configuration;

    iput-object p1, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

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
    instance-of v1, p1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-nez v1, :cond_2

    return v0

    :cond_2
    iget-object v1, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-eqz v1, :cond_3

    iget-object v3, p1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    invoke-virtual {v1, v3}, Landroid/media/VolumeShaper$Configuration;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v1, p1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-eqz v1, :cond_4

    return v2

    :cond_4
    move v1, v0

    :goto_0
    iget-object p0, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-eqz p0, :cond_6

    if-eqz v1, :cond_5

    iget-object p1, p1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    invoke-virtual {p0, p1}, Landroid/media/VolumeShaper$Configuration;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    return v2

    :cond_6
    iget-object p0, p1, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-eqz p0, :cond_7

    return v2

    :cond_7
    return v1
.end method

.method public blacklist getFadeInVolShaperConfig()Landroid/media/VolumeShaper$Configuration;
    .locals 0

    iget-object p0, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    return-object p0
.end method

.method public blacklist getFadeOutVolShaperConfig()Landroid/media/VolumeShaper$Configuration;
    .locals 0

    iget-object p0, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    iget-object p0, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method blacklist isFadeInConfigActive()Z
    .locals 0

    iget-object p0, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist isFadeOutConfigActive()Z
    .locals 0

    iget-object p0, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isInactive()Z
    .locals 1

    invoke-virtual {p0}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->isFadeOutConfigActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->isFadeInConfigActive()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setFadeInVolShaperConfig(Landroid/media/VolumeShaper$Configuration;)V
    .locals 0

    iput-object p1, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    return-void
.end method

.method public blacklist setFadeOutVolShaperConfig(Landroid/media/VolumeShaper$Configuration;)V
    .locals 0

    iput-object p1, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeOutVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/media/VolumeShaper$Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p0, p0, Landroid/media/FadeManagerConfiguration$FadeVolumeShaperConfigsWrapper;->mFadeInVolShaperConfig:Landroid/media/VolumeShaper$Configuration;

    invoke-virtual {p0, p1, p2}, Landroid/media/VolumeShaper$Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
