.class public final Landroid/security/advancedprotection/AdvancedProtectionManager;
.super Ljava/lang/Object;
.source "AdvancedProtectionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;,
        Landroid/security/advancedprotection/AdvancedProtectionManager$SupportDialogType;,
        Landroid/security/advancedprotection/AdvancedProtectionManager$FeatureId;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_SHOW_ADVANCED_PROTECTION_SUPPORT_DIALOG:Ljava/lang/String; = "android.security.advancedprotection.action.SHOW_ADVANCED_PROTECTION_SUPPORT_DIALOG"

.field public static final blacklist ADVANCED_PROTECTION_SYSTEM_ENTITY:Ljava/lang/String; = "android.security.advancedprotection"

.field private static final blacklist ALL_FEATURE_IDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ALL_SUPPORT_DIALOG_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EXTRA_SUPPORT_DIALOG_FEATURE:Ljava/lang/String; = "android.security.advancedprotection.extra.SUPPORT_DIALOG_FEATURE"

.field public static final blacklist EXTRA_SUPPORT_DIALOG_TYPE:Ljava/lang/String; = "android.security.advancedprotection.extra.SUPPORT_DIALOG_TYPE"

.field public static final whitelist FEATURE_ID_DISALLOW_CELLULAR_2G:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_ID_DISALLOW_INSTALL_UNKNOWN_SOURCES:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_ID_DISALLOW_USB:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_ID_DISALLOW_WEP:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist FEATURE_ID_ENABLE_MTE:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist MEMORY_TAGGING_POLICY:Ljava/lang/String; = "memoryTagging"

.field private static final blacklist PKG_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field public static final blacklist SUPPORT_DIALOG_TYPE_BLOCKED_INTERACTION:I = 0x1

.field public static final blacklist SUPPORT_DIALOG_TYPE_DISABLED_SETTING:I = 0x2

.field public static final blacklist SUPPORT_DIALOG_TYPE_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "AdvancedProtectionMgr"


# instance fields
.field private final blacklist mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;",
            "Landroid/security/advancedprotection/IAdvancedProtectionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mService:Landroid/security/advancedprotection/IAdvancedProtectionService;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 5

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    sput-object v3, Landroid/security/advancedprotection/AdvancedProtectionManager;->ALL_FEATURE_IDS:Ljava/util/Set;

    invoke-static {v0, v1, v2}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/security/advancedprotection/AdvancedProtectionManager;->ALL_SUPPORT_DIALOG_TYPES:Ljava/util/Set;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/security/advancedprotection/IAdvancedProtectionService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    return-void
.end method

.method public static blacklist createSupportIntent(II)Landroid/content/Intent;
    .locals 2

    sget-object v0, Landroid/security/advancedprotection/AdvancedProtectionManager;->ALL_FEATURE_IDS:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/security/advancedprotection/AdvancedProtectionManager;->ALL_SUPPORT_DIALOG_TYPES:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.security.advancedprotection.action.SHOW_ADVANCED_PROTECTION_SUPPORT_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "android.security.advancedprotection.extra.SUPPORT_DIALOG_FEATURE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "android.security.advancedprotection.extra.SUPPORT_DIALOG_TYPE"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid type. See SUPPORT_DIALOG_TYPE_* APIs."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid feature ID. See FEATURE_ID_* APIs."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static blacklist createSupportIntentForPolicyIdentifierOrRestriction(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/security/advancedprotection/AdvancedProtectionManager;->ALL_SUPPORT_DIALOG_TYPES:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "no_install_unknown_sources_globally"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "no_cellular_2g"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    move p1, v1

    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "memoryTagging"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    move p1, v1

    :cond_3
    const/4 p0, 0x4

    :goto_0
    invoke-static {p0, p1}, Landroid/security/advancedprotection/AdvancedProtectionManager;->createSupportIntent(II)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported identifier: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a valid type. See SUPPORT_DIALOG_TYPE_* APIs."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist featureIdToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "ENABLE_MTE"

    return-object p0

    :cond_1
    const-string p0, "DISALLOW_WEP"

    return-object p0

    :cond_2
    const-string p0, "DISALLOW_USB"

    return-object p0

    :cond_3
    const-string p0, "DISALLOW_INSTALL_UNKNOWN_SOURCES"

    return-object p0

    :cond_4
    const-string p0, "DISALLOW_CELLULAR_2G"

    return-object p0
.end method

.method public static blacklist supportDialogTypeToString(I)Ljava/lang/String;
    .locals 2

    const-string v0, "UNKNOWN"

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    return-object v0

    :cond_0
    const-string p0, "DISABLED_SETTING"

    return-object p0

    :cond_1
    const-string p0, "BLOCKED_INTERACTION"

    return-object p0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public whitelist getAdvancedProtectionFeatures()Ljava/util/List;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/security/advancedprotection/AdvancedProtectionFeature;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {p0}, Landroid/security/advancedprotection/IAdvancedProtectionService;->getAdvancedProtectionFeatures()Ljava/util/List;

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

.method public whitelist isAdvancedProtectionEnabled()Z
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {p0}, Landroid/security/advancedprotection/IAdvancedProtectionService;->isAdvancedProtectionEnabled()Z

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

.method public blacklist logDialogShown(IIZ)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {p0, p1, p2, p3}, Landroid/security/advancedprotection/IAdvancedProtectionService;->logDialogShown(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist registerAdvancedProtectionCallback(Ljava/util/concurrent/Executor;Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;)V
    .locals 1

    iget-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p0, "AdvancedProtectionMgr"

    const-string/jumbo p1, "registerAdvancedProtectionCallback callback already present"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/security/advancedprotection/AdvancedProtectionManager$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/security/advancedprotection/AdvancedProtectionManager$1;-><init>(Landroid/security/advancedprotection/AdvancedProtectionManager;Ljava/util/concurrent/Executor;Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;)V

    :try_start_0
    iget-object p1, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {p1, v0}, Landroid/security/advancedprotection/IAdvancedProtectionService;->registerAdvancedProtectionCallback(Landroid/security/advancedprotection/IAdvancedProtectionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist setAdvancedProtectionEnabled(Z)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object p0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {p0, p1}, Landroid/security/advancedprotection/IAdvancedProtectionService;->setAdvancedProtectionEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public whitelist unregisterAdvancedProtectionCallback(Landroid/security/advancedprotection/AdvancedProtectionManager$Callback;)V
    .locals 2

    iget-object v0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/security/advancedprotection/IAdvancedProtectionCallback;

    if-nez v0, :cond_0

    const-string p0, "AdvancedProtectionMgr"

    const-string/jumbo p1, "unregisterAdvancedProtectionCallback callback not present"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mService:Landroid/security/advancedprotection/IAdvancedProtectionService;

    invoke-interface {v1, v0}, Landroid/security/advancedprotection/IAdvancedProtectionService;->unregisterAdvancedProtectionCallback(Landroid/security/advancedprotection/IAdvancedProtectionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Landroid/security/advancedprotection/AdvancedProtectionManager;->mCallbackMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
