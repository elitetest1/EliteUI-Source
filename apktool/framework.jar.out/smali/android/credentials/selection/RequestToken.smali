.class public final Landroid/credentials/selection/RequestToken;
.super Ljava/lang/Object;
.source "RequestToken.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mToken:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/credentials/selection/RequestToken;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    instance-of v0, p1, Landroid/credentials/selection/RequestToken;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Landroid/credentials/selection/RequestToken;

    iget-object p0, p0, Landroid/credentials/selection/RequestToken;->mToken:Landroid/os/IBinder;

    iget-object p1, p1, Landroid/credentials/selection/RequestToken;->mToken:Landroid/os/IBinder;

    invoke-interface {p0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getToken()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/credentials/selection/RequestToken;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Landroid/credentials/selection/RequestToken;->mToken:Landroid/os/IBinder;

    invoke-interface {p0}, Landroid/os/IBinder;->hashCode()I

    move-result p0

    return p0
.end method
