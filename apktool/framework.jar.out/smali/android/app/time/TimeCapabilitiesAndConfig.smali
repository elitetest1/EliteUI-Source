.class public final Landroid/app/time/TimeCapabilitiesAndConfig;
.super Ljava/lang/Object;
.source "TimeCapabilitiesAndConfig.java"

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
            "Landroid/app/time/TimeCapabilitiesAndConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCapabilities:Landroid/app/time/TimeCapabilities;

.field private final blacklist mConfiguration:Landroid/app/time/TimeConfiguration;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smreadFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeCapabilitiesAndConfig;
    .locals 0

    invoke-static {p0}, Landroid/app/time/TimeCapabilitiesAndConfig;->readFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeCapabilitiesAndConfig;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/time/TimeCapabilitiesAndConfig$1;

    invoke-direct {v0}, Landroid/app/time/TimeCapabilitiesAndConfig$1;-><init>()V

    sput-object v0, Landroid/app/time/TimeCapabilitiesAndConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/time/TimeCapabilities;Landroid/app/time/TimeConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/time/TimeCapabilities;

    iput-object p1, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeCapabilities;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/time/TimeConfiguration;

    iput-object p1, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeConfiguration;

    return-void
.end method

.method private static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/app/time/TimeCapabilitiesAndConfig;
    .locals 3

    const-class v0, Landroid/app/time/TimeCapabilities;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/time/TimeCapabilities;

    const-class v2, Landroid/app/time/TimeConfiguration;

    invoke-virtual {p0, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/time/TimeConfiguration;

    new-instance v1, Landroid/app/time/TimeCapabilitiesAndConfig;

    invoke-direct {v1, v0, p0}, Landroid/app/time/TimeCapabilitiesAndConfig;-><init>(Landroid/app/time/TimeCapabilities;Landroid/app/time/TimeConfiguration;)V

    return-object v1
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
    check-cast p1, Landroid/app/time/TimeCapabilitiesAndConfig;

    iget-object v2, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeCapabilities;

    iget-object v3, p1, Landroid/app/time/TimeCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeCapabilities;

    invoke-virtual {v2, v3}, Landroid/app/time/TimeCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeConfiguration;

    iget-object p1, p1, Landroid/app/time/TimeCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeConfiguration;

    invoke-virtual {p0, p1}, Landroid/app/time/TimeConfiguration;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public whitelist getCapabilities()Landroid/app/time/TimeCapabilities;
    .locals 0

    iget-object p0, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeCapabilities;

    return-object p0
.end method

.method public whitelist getConfiguration()Landroid/app/time/TimeConfiguration;
    .locals 0

    iget-object p0, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeConfiguration;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-object v0, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeCapabilities;

    iget-object p0, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeConfiguration;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeCapabilitiesAndConfig{mCapabilities="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeConfiguration;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mCapabilities:Landroid/app/time/TimeCapabilities;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/app/time/TimeCapabilitiesAndConfig;->mConfiguration:Landroid/app/time/TimeConfiguration;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
