.class public abstract Landroid/service/credentials/CredentialProviderService;
.super Landroid/app/Service;
.source "CredentialProviderService.java"


# static fields
.field public static final blacklist EXTRA_AUTOFILL_ID:Ljava/lang/String; = "android.service.credentials.extra.AUTOFILL_ID"

.field public static final whitelist EXTRA_BEGIN_GET_CREDENTIAL_REQUEST:Ljava/lang/String; = "android.service.credentials.extra.BEGIN_GET_CREDENTIAL_REQUEST"

.field public static final whitelist EXTRA_BEGIN_GET_CREDENTIAL_RESPONSE:Ljava/lang/String; = "android.service.credentials.extra.BEGIN_GET_CREDENTIAL_RESPONSE"

.field public static final whitelist EXTRA_CREATE_CREDENTIAL_EXCEPTION:Ljava/lang/String; = "android.service.credentials.extra.CREATE_CREDENTIAL_EXCEPTION"

.field public static final whitelist EXTRA_CREATE_CREDENTIAL_REQUEST:Ljava/lang/String; = "android.service.credentials.extra.CREATE_CREDENTIAL_REQUEST"

.field public static final whitelist EXTRA_CREATE_CREDENTIAL_RESPONSE:Ljava/lang/String; = "android.service.credentials.extra.CREATE_CREDENTIAL_RESPONSE"

.field public static final whitelist EXTRA_GET_CREDENTIAL_EXCEPTION:Ljava/lang/String; = "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

.field public static final whitelist EXTRA_GET_CREDENTIAL_REQUEST:Ljava/lang/String; = "android.service.credentials.extra.GET_CREDENTIAL_REQUEST"

.field public static final whitelist EXTRA_GET_CREDENTIAL_RESPONSE:Ljava/lang/String; = "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.credentials.CredentialProviderService"

.field public static final whitelist SERVICE_META_DATA:Ljava/lang/String; = "android.credentials.provider"

.field public static final blacklist SYSTEM_SERVICE_INTERFACE:Ljava/lang/String; = "android.service.credentials.system.CredentialProviderService"

.field private static final blacklist TAG:Ljava/lang/String; = "CredProviderService"

.field public static final blacklist TEST_SYSTEM_PROVIDER_META_DATA_KEY:Ljava/lang/String; = "android.credentials.testsystemprovider"


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mInterface:Landroid/service/credentials/ICredentialProviderService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/credentials/CredentialProviderService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/credentials/CredentialProviderService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/service/credentials/CredentialProviderService$1;

    invoke-direct {v0, p0}, Landroid/service/credentials/CredentialProviderService$1;-><init>(Landroid/service/credentials/CredentialProviderService;)V

    iput-object v0, p0, Landroid/service/credentials/CredentialProviderService;->mInterface:Landroid/service/credentials/ICredentialProviderService;

    return-void
.end method


# virtual methods
.method public abstract whitelist onBeginCreateCredential(Landroid/service/credentials/BeginCreateCredentialRequest;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/credentials/BeginCreateCredentialRequest;",
            "Landroid/os/CancellationSignal;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/service/credentials/BeginCreateCredentialResponse;",
            "Landroid/credentials/CreateCredentialException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onBeginGetCredential(Landroid/service/credentials/BeginGetCredentialRequest;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/credentials/BeginGetCredentialRequest;",
            "Landroid/os/CancellationSignal;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/service/credentials/BeginGetCredentialResponse;",
            "Landroid/credentials/GetCredentialException;",
            ">;)V"
        }
    .end annotation
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "android.service.credentials.CredentialProviderService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/service/credentials/CredentialProviderService;->mInterface:Landroid/service/credentials/ICredentialProviderService;

    invoke-interface {p0}, Landroid/service/credentials/ICredentialProviderService;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Failed to bind with intent: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CredProviderService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract whitelist onClearCredentialState(Landroid/service/credentials/ClearCredentialStateRequest;Landroid/os/CancellationSignal;Landroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/credentials/ClearCredentialStateRequest;",
            "Landroid/os/CancellationSignal;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Landroid/credentials/ClearCredentialStateException;",
            ">;)V"
        }
    .end annotation
.end method

.method public whitelist onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/credentials/CredentialProviderService;->mHandler:Landroid/os/Handler;

    return-void
.end method
