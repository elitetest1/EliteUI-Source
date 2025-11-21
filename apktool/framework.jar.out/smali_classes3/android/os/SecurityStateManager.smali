.class public Landroid/os/SecurityStateManager;
.super Ljava/lang/Object;
.source "SecurityStateManager.java"


# static fields
.field public static final whitelist KEY_KERNEL_VERSION:Ljava/lang/String; = "kernel_version"

.field public static final whitelist KEY_SYSTEM_SPL:Ljava/lang/String; = "system_spl"

.field public static final whitelist KEY_VENDOR_SPL:Ljava/lang/String; = "vendor_spl"


# instance fields
.field private final blacklist mService:Landroid/os/ISecurityStateManager;


# direct methods
.method public constructor blacklist <init>(Landroid/os/ISecurityStateManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "missing ISecurityStateManager"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/ISecurityStateManager;

    iput-object p1, p0, Landroid/os/SecurityStateManager;->mService:Landroid/os/ISecurityStateManager;

    return-void
.end method


# virtual methods
.method public whitelist getGlobalSecurityState()Landroid/os/Bundle;
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/os/SecurityStateManager;->mService:Landroid/os/ISecurityStateManager;

    invoke-interface {p0}, Landroid/os/ISecurityStateManager;->getGlobalSecurityState()Landroid/os/Bundle;

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
