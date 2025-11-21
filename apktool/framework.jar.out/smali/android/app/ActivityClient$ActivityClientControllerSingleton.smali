.class Landroid/app/ActivityClient$ActivityClientControllerSingleton;
.super Landroid/util/Singleton;
.source "ActivityClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityClientControllerSingleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/app/IActivityClientController;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist mKnownInstance:Landroid/app/IActivityClientController;


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/ActivityClient-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityClient$ActivityClientControllerSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/app/IActivityClientController;
    .locals 0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/app/IActivityTaskManager;->getActivityClientController()Landroid/app/IActivityClientController;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Landroid/app/ActivityClient$ActivityClientControllerSingleton;->create()Landroid/app/IActivityClientController;

    move-result-object p0

    return-object p0
.end method
