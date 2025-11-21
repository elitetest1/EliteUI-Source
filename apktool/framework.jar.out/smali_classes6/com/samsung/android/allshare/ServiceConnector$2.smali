.class Lcom/samsung/android/allshare/ServiceConnector$2;
.super Ljava/lang/Object;
.source "ServiceConnector.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/allshare/ServiceConnector;->createServiceProvider(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

.field private blacklist mServiceProvider:Lcom/samsung/android/allshare/ServiceProvider;

.field final synthetic blacklist val$connector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

.field final synthetic blacklist val$ctx:Landroid/content/Context;

.field final synthetic blacklist val$l:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

.field final synthetic blacklist val$serviceType:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->val$l:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    iput-object p2, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->val$connector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    iput-object p4, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->val$serviceType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->mListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/allshare/ServiceConnector$2;->createServiceProvierImpl(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;Ljava/lang/String;)Lcom/samsung/android/allshare/ServiceProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->mServiceProvider:Lcom/samsung/android/allshare/ServiceProvider;

    return-void
.end method

.method private blacklist createServiceProvierImpl(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;Ljava/lang/String;)Lcom/samsung/android/allshare/ServiceProvider;
    .locals 0

    if-eqz p3, :cond_0

    const-string p0, "com.samsung.android.allshare.media"

    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    const-string p3, "com.samsung.android.allshare.service.mediashare"

    invoke-direct {p0, p3}, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->setProfileConstData(Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;)V

    new-instance p0, Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V

    return-object p0
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)Z
    .locals 4

    const-string v0, ""

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    sget-object v1, Lcom/samsung/android/allshare/ServiceConnector$3;->$SwitchMap$com$samsung$android$allshare$IAllShareConnector$AllShareServiceState:[I

    invoke-virtual {p1}, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const-string v2, "ServiceConnector"

    if-eq p1, v1, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->mServiceProvider:Lcom/samsung/android/allshare/ServiceProvider;

    check-cast p1, Lcom/samsung/android/allshare/ServiceConnector$IServiceStateSetter;

    sget-object v3, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->DISABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    invoke-interface {p1, v3}, Lcom/samsung/android/allshare/ServiceConnector$IServiceStateSetter;->setServiceState(Lcom/samsung/android/allshare/ServiceConnector$ServiceState;)V

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->mListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    iget-object p0, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->mServiceProvider:Lcom/samsung/android/allshare/ServiceProvider;

    invoke-interface {p1, p0}, Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;->onDeleted(Lcom/samsung/android/allshare/ServiceProvider;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {v2, v0, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {v2, v0, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->mServiceProvider:Lcom/samsung/android/allshare/ServiceProvider;

    check-cast p1, Lcom/samsung/android/allshare/ServiceConnector$IServiceStateSetter;

    sget-object v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->ENABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    invoke-interface {p1, v0}, Lcom/samsung/android/allshare/ServiceConnector$IServiceStateSetter;->setServiceState(Lcom/samsung/android/allshare/ServiceConnector$ServiceState;)V

    :try_start_1
    iget-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->mListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    iget-object p0, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->mServiceProvider:Lcom/samsung/android/allshare/ServiceProvider;

    sget-object v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->ENABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    invoke-interface {p1, p0, v0}, Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;->onCreated(Lcom/samsung/android/allshare/ServiceProvider;Lcom/samsung/android/allshare/ServiceConnector$ServiceState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception p0

    const-string p1, "handleMessage Error"

    invoke-static {v2, p1, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_0

    :catch_3
    move-exception p0

    const-string p1, "handleMessage Exception"

    invoke-static {v2, p1, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return v1

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method
