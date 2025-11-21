.class Landroid/app/SystemServiceRegistry$89;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<",
        "Landroid/security/authenticationpolicy/AuthenticationPolicyManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService(Landroid/app/ContextImpl;)Landroid/security/authenticationpolicy/AuthenticationPolicyManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->secureLockdown()Z

    move-result p0

    const-string v0, "authentication_policy"

    if-eqz p0, :cond_0

    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/security/authenticationpolicy/IAuthenticationPolicyService;

    move-result-object p0

    new-instance v0, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getOuterContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/security/authenticationpolicy/AuthenticationPolicyManager;-><init>(Landroid/content/Context;Landroid/security/authenticationpolicy/IAuthenticationPolicyService;)V

    return-object v0

    :cond_0
    new-instance p0, Landroid/os/ServiceManager$ServiceNotFoundException;

    invoke-direct {p0, v0}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$89;->createService(Landroid/app/ContextImpl;)Landroid/security/authenticationpolicy/AuthenticationPolicyManager;

    move-result-object p0

    return-object p0
.end method
