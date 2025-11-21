.class public final Landroid/media/SuggestedDeviceInfo$Builder;
.super Ljava/lang/Object;
.source "SuggestedDeviceInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SuggestedDeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDeviceDisplayName:Ljava/lang/String;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mRouteId:Ljava/lang/String;

.field private blacklist mType:Ljava/lang/Integer;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDeviceDisplayName(Landroid/media/SuggestedDeviceInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mDeviceDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/media/SuggestedDeviceInfo$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRouteId(Landroid/media/SuggestedDeviceInfo$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mRouteId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/media/SuggestedDeviceInfo$Builder;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mType:Ljava/lang/Integer;

    return-object p0
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/media/SuggestedDeviceInfo;
    .locals 2

    iget-object v0, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mDeviceDisplayName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mRouteId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mType:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/media/SuggestedDeviceInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/SuggestedDeviceInfo;-><init>(Landroid/media/SuggestedDeviceInfo$Builder;Landroid/media/SuggestedDeviceInfo-IA;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Extras cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Device type cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Route ID cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Device display name cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setDeviceDisplayName(Ljava/lang/String;)Landroid/media/SuggestedDeviceInfo$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mDeviceDisplayName:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Device display name cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setExtras(Landroid/os/Bundle;)Landroid/media/SuggestedDeviceInfo$Builder;
    .locals 1

    const-string v0, "extras must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public blacklist setRouteId(Ljava/lang/String;)Landroid/media/SuggestedDeviceInfo$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mRouteId:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Device display name cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist setType(I)Landroid/media/SuggestedDeviceInfo$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/media/SuggestedDeviceInfo$Builder;->mType:Ljava/lang/Integer;

    return-object p0
.end method
