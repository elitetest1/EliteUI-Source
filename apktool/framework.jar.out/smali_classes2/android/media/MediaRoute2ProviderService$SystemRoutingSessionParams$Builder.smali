.class public final Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;
.super Ljava/lang/Object;
.source "MediaRoute2ProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPackageName(Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->mPackageName:Ljava/lang/String;

    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;
    .locals 2

    new-instance v0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams;-><init>(Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;Landroid/media/MediaRoute2ProviderService-IA;)V

    return-object v0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/media/MediaRoute2ProviderService$SystemRoutingSessionParams$Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method
