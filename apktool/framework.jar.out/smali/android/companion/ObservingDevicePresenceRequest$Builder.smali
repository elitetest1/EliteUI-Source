.class public final Landroid/companion/ObservingDevicePresenceRequest$Builder;
.super Landroid/provider/OneTimeUseBuilder;
.source "ObservingDevicePresenceRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/ObservingDevicePresenceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/provider/OneTimeUseBuilder<",
        "Landroid/companion/ObservingDevicePresenceRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private blacklist mAssociationId:I

.field private blacklist mUuid:Landroid/os/ParcelUuid;


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/provider/OneTimeUseBuilder;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mAssociationId:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/companion/ObservingDevicePresenceRequest;
    .locals 3

    invoke-virtual {p0}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->markUsed()V

    iget-object v0, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_1

    iget v1, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mAssociationId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot observe device presence based on both ParcelUuid and association ID. Choose one or the other."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v0, :cond_3

    iget v0, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mAssociationId:I

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Must provide either a ParcelUuid or a valid association ID to observe device presence."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    new-instance v0, Landroid/companion/ObservingDevicePresenceRequest;

    iget v1, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mAssociationId:I

    iget-object p0, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mUuid:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/companion/ObservingDevicePresenceRequest;-><init>(ILandroid/os/ParcelUuid;Landroid/companion/ObservingDevicePresenceRequest-IA;)V

    return-object v0
.end method

.method public bridge synthetic blacklist build()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    move-result-object p0

    return-object p0
.end method

.method public whitelist setAssociationId(I)Landroid/companion/ObservingDevicePresenceRequest$Builder;
    .locals 0

    invoke-virtual {p0}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->checkNotUsed()V

    iput p1, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mAssociationId:I

    return-object p0
.end method

.method public whitelist setUuid(Landroid/os/ParcelUuid;)Landroid/companion/ObservingDevicePresenceRequest$Builder;
    .locals 0

    invoke-virtual {p0}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->checkNotUsed()V

    iput-object p1, p0, Landroid/companion/ObservingDevicePresenceRequest$Builder;->mUuid:Landroid/os/ParcelUuid;

    return-object p0
.end method
