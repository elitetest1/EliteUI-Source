.class public Lcom/samsung/android/provider/DynamicFeatureManager;
.super Ljava/lang/Object;
.source "DynamicFeatureManager.java"


# instance fields
.field private blacklist TAG:Ljava/lang/String;

.field private blacklist mService:Lcom/samsung/android/provider/IDynamicFeatureManager;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/provider/IDynamicFeatureManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "DynamicFeature_DynamicFeatureManager"

    iput-object v0, p0, Lcom/samsung/android/provider/DynamicFeatureManager;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/provider/DynamicFeatureManager;->mService:Lcom/samsung/android/provider/IDynamicFeatureManager;

    return-void
.end method


# virtual methods
.method public varargs blacklist getProperties(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/provider/SemDynamicFeature$Properties;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/provider/DynamicFeatureManager;->mService:Lcom/samsung/android/provider/IDynamicFeatureManager;

    if-nez v0, :cond_0

    new-instance p0, Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/provider/SemDynamicFeature$Properties;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/provider/IDynamicFeatureManager;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    iget-object p0, p0, Lcom/samsung/android/provider/DynamicFeatureManager;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/provider/SemDynamicFeature$Properties;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/provider/SemDynamicFeature$Properties;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public blacklist getVid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/provider/DynamicFeatureManager;->mService:Lcom/samsung/android/provider/IDynamicFeatureManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/samsung/android/provider/IDynamicFeatureManager;->getVid()Ljava/lang/String;

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

.method public blacklist sendAbTestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/provider/DynamicFeatureManager;->mService:Lcom/samsung/android/provider/IDynamicFeatureManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2710

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/provider/DynamicFeatureManager;->TAG:Ljava/lang/String;

    const-string v1, "Too long text has been entered. Please reduce it under 1000 characters "

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/provider/DynamicFeatureManager;->mService:Lcom/samsung/android/provider/IDynamicFeatureManager;

    invoke-interface {p0, p1, p2, p3}, Lcom/samsung/android/provider/IDynamicFeatureManager;->sendAbTestResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public blacklist setEndpoint(I)I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/provider/DynamicFeatureManager;->mService:Lcom/samsung/android/provider/IDynamicFeatureManager;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/provider/IDynamicFeatureManager;->setEndpoint(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
