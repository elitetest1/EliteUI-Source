.class Landroid/app/SystemServiceRegistry$170;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher<",
        "Landroid/security/keystore/KeyStoreManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createService()Landroid/security/keystore/KeyStoreManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->keystoreGrantApi()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Landroid/security/keystore/KeyStoreManager;->getInstance()Landroid/security/keystore/KeyStoreManager;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Landroid/os/ServiceManager$ServiceNotFoundException;

    const-string v0, "KeyStoreManager is not supported"

    invoke-direct {p0, v0}, Landroid/os/ServiceManager$ServiceNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic blacklist createService()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$170;->createService()Landroid/security/keystore/KeyStoreManager;

    move-result-object p0

    return-object p0
.end method
