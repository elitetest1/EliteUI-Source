.class public final Landroid/content/AttributionSource$Builder;
.super Ljava/lang/Object;
.source "AttributionSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AttributionSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mAttributionSourceState:Landroid/content/AttributionSourceState;

.field private blacklist mHasBeenUsed:Z


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/AttributionSourceState;

    invoke-direct {v0}, Landroid/content/AttributionSourceState;-><init>()V

    iput-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput p1, v0, Landroid/content/AttributionSourceState;->uid:I

    const/4 p0, -0x1

    iput p0, v0, Landroid/content/AttributionSourceState;->pid:I

    const/4 p0, 0x0

    iput p0, v0, Landroid/content/AttributionSourceState;->deviceId:I

    invoke-static {}, Landroid/content/AttributionSource;->-$$Nest$sfgetsDefaultToken()Landroid/os/Binder;

    move-result-object p0

    iput-object p0, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/AttributionSource;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/AttributionSourceState;

    invoke-direct {v0}, Landroid/content/AttributionSourceState;-><init>()V

    iput-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result p0

    iput p0, v0, Landroid/content/AttributionSourceState;->uid:I

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPid()I

    move-result p0

    iput p0, v0, Landroid/content/AttributionSourceState;->pid:I

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/AttributionSource;->-$$Nest$fgetmAttributionSourceState(Landroid/content/AttributionSource;)Landroid/content/AttributionSourceState;

    move-result-object p0

    iget-object p0, p0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    iput-object p0, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getDeviceId()I

    move-result p0

    iput p0, v0, Landroid/content/AttributionSourceState;->deviceId:I

    invoke-static {p1}, Landroid/content/AttributionSource;->-$$Nest$fgetmAttributionSourceState(Landroid/content/AttributionSource;)Landroid/content/AttributionSourceState;

    move-result-object p0

    iget-object p0, p0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    iput-object p0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    invoke-virtual {p1}, Landroid/content/AttributionSource;->getToken()Landroid/os/IBinder;

    move-result-object p0

    iput-object p0, v0, Landroid/content/AttributionSourceState;->token:Landroid/os/IBinder;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "current AttributionSource can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist checkNotUsed()V
    .locals 1

    iget-boolean p0, p0, Landroid/content/AttributionSource$Builder;->mHasBeenUsed:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This Builder should not be reused. Use a new Builder instance instead"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist build()Landroid/content/AttributionSource;
    .locals 2

    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/AttributionSource$Builder;->mHasBeenUsed:Z

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iget-object v0, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/content/AttributionSourceState;

    iput-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    :cond_0
    new-instance v0, Landroid/content/AttributionSource;

    iget-object p0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    invoke-direct {v0, p0}, Landroid/content/AttributionSource;-><init>(Landroid/content/AttributionSourceState;)V

    return-object v0
.end method

.method public whitelist setAttributionTag(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;
    .locals 1

    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object p1, v0, Landroid/content/AttributionSourceState;->attributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setDeviceId(I)Landroid/content/AttributionSource$Builder;
    .locals 1

    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput p1, v0, Landroid/content/AttributionSourceState;->deviceId:I

    return-object p0
.end method

.method public whitelist setNext(Landroid/content/AttributionSource;)Landroid/content/AttributionSource$Builder;
    .locals 3

    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/AttributionSourceState;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/content/AttributionSource;->-$$Nest$fgetmAttributionSourceState(Landroid/content/AttributionSource;)Landroid/content/AttributionSourceState;

    move-result-object p1

    aput-object p1, v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    :goto_0
    iput-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    return-object p0
.end method

.method public blacklist setNextAttributionSource(Landroid/content/AttributionSource;)Landroid/content/AttributionSource$Builder;
    .locals 3

    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/AttributionSourceState;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/content/AttributionSource;->-$$Nest$fgetmAttributionSourceState(Landroid/content/AttributionSource;)Landroid/content/AttributionSourceState;

    move-result-object p1

    aput-object p1, v1, v2

    iput-object v1, v0, Landroid/content/AttributionSourceState;->next:[Landroid/content/AttributionSourceState;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null AttributionSource not permitted."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/content/AttributionSource$Builder;
    .locals 1

    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput-object p1, v0, Landroid/content/AttributionSourceState;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setPid(I)Landroid/content/AttributionSource$Builder;
    .locals 1

    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    iput p1, v0, Landroid/content/AttributionSourceState;->pid:I

    return-object p0
.end method

.method public whitelist setRenouncedPermissions(Ljava/util/Set;)Landroid/content/AttributionSource$Builder;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/AttributionSource$Builder;"
        }
    .end annotation

    invoke-direct {p0}, Landroid/content/AttributionSource$Builder;->checkNotUsed()V

    iget-object v0, p0, Landroid/content/AttributionSource$Builder;->mAttributionSourceState:Landroid/content/AttributionSourceState;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, v0, Landroid/content/AttributionSourceState;->renouncedPermissions:[Ljava/lang/String;

    return-object p0
.end method
