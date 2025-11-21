.class public final Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;
.super Ljava/lang/Object;
.source "SharedConnectivitySettingsState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mInstantTetherEnabled:Z

.field private final blacklist mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$1;

    invoke-direct {v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState$1;-><init>()V

    sput-object v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ZLandroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->validate(Landroid/app/PendingIntent;)V

    iput-boolean p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    iput-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    iput-object p3, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(ZLandroid/app/PendingIntent;Landroid/os/Bundle;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;-><init>(ZLandroid/app/PendingIntent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static blacklist readFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;
    .locals 3

    invoke-static {p0}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p0

    new-instance v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    invoke-direct {v2, v1, v0, p0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;-><init>(ZLandroid/app/PendingIntent;Landroid/os/Bundle;)V

    return-object v2
.end method

.method private static blacklist validate(Landroid/app/PendingIntent;)V
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Pending intent must be immutable"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    iget-boolean v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->isInstantTetherEnabled()Z

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->getInstantTetherSettingsPendingIntent()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist getInstantTetherSettingsPendingIntent()Landroid/app/PendingIntent;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    iget-boolean v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist isInstantTetherEnabled()Z
    .locals 0

    iget-boolean p0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SharedConnectivitySettingsState[instantTetherEnabled="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "PendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherSettingsPendingIntent:Landroid/app/PendingIntent;

    invoke-static {p2, p1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    iget-boolean p2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mInstantTetherEnabled:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
