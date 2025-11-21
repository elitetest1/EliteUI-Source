.class public Landroid/app/pinner/PinnerServiceClient;
.super Ljava/lang/Object;
.source "PinnerServiceClient.java"


# static fields
.field private static blacklist TAG:Ljava/lang/String; = "PinnerServiceClient"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getPinnerStats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/pinner/PinnedFileStat;",
            ">;"
        }
    .end annotation

    const-string/jumbo p0, "pinner"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object p0, Landroid/app/pinner/PinnerServiceClient;->TAG:Ljava/lang/String;

    const-string v0, "Failed to retrieve PinnerService. A common failure reason is due to a lack of selinux permissions."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_0
    invoke-static {p0}, Landroid/app/pinner/IPinnerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/pinner/IPinnerService;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Landroid/app/pinner/PinnerServiceClient;->TAG:Ljava/lang/String;

    const-string v0, "Failed to cast PinnerService."

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    :cond_1
    :try_start_0
    invoke-interface {p0}, Landroid/app/pinner/IPinnerService;->getPinnerStats()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Failed to retrieve stats from PinnerService"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
