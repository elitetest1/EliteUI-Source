.class public abstract Landroid/app/admin/PolicyUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PolicyUpdateReceiver.java"


# static fields
.field public static final whitelist ACTION_DEVICE_POLICY_CHANGED:Ljava/lang/String; = "android.app.admin.action.DEVICE_POLICY_CHANGED"

.field public static final whitelist ACTION_DEVICE_POLICY_SET_RESULT:Ljava/lang/String; = "android.app.admin.action.DEVICE_POLICY_SET_RESULT"

.field public static final whitelist EXTRA_ACCOUNT_TYPE:Ljava/lang/String; = "android.app.admin.extra.ACCOUNT_TYPE"

.field public static final whitelist EXTRA_INTENT_FILTER:Ljava/lang/String; = "android.app.admin.extra.INTENT_FILTER"

.field public static final whitelist EXTRA_PACKAGE_NAME:Ljava/lang/String; = "android.app.admin.extra.PACKAGE_NAME"

.field public static final whitelist EXTRA_PERMISSION_NAME:Ljava/lang/String; = "android.app.admin.extra.PERMISSION_NAME"

.field public static final blacklist EXTRA_POLICY_BUNDLE_KEY:Ljava/lang/String; = "android.app.admin.extra.POLICY_BUNDLE_KEY"

.field public static final blacklist EXTRA_POLICY_KEY:Ljava/lang/String; = "android.app.admin.extra.POLICY_KEY"

.field public static final blacklist EXTRA_POLICY_TARGET_USER_ID:Ljava/lang/String; = "android.app.admin.extra.POLICY_TARGET_USER_ID"

.field public static final blacklist EXTRA_POLICY_UPDATE_RESULT_KEY:Ljava/lang/String; = "android.app.admin.extra.POLICY_UPDATE_RESULT_KEY"

.field private static final blacklist MEMORY_TAGGING_POLICY:Ljava/lang/String; = "memoryTagging"

.field private static blacklist TAG:Ljava/lang/String; = "PolicyUpdateReceiver"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static blacklist getPolicyChangedReason(Landroid/content/Intent;)Landroid/app/admin/PolicyUpdateResult;
    .locals 2

    const-string v0, "android.app.admin.extra.POLICY_UPDATE_RESULT_KEY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    new-instance v0, Landroid/app/admin/PolicyUpdateResult;

    invoke-direct {v0, p0}, Landroid/app/admin/PolicyUpdateResult;-><init>(I)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "PolicyUpdateResult has to be provided."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist getPolicyExtraBundle(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "android.app.admin.extra.POLICY_BUNDLE_KEY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    return-object p0
.end method

.method static blacklist getPolicyKey(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    const-string v0, "android.app.admin.extra.POLICY_KEY"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "PolicyKey has to be provided."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static blacklist getTargetUser(Landroid/content/Intent;)Landroid/app/admin/TargetUser;
    .locals 2

    const-string v0, "android.app.admin.extra.POLICY_TARGET_USER_ID"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    new-instance v0, Landroid/app/admin/TargetUser;

    invoke-direct {v0, p0}, Landroid/app/admin/TargetUser;-><init>(I)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "TargetUser has to be provided."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist shouldPropagatePolicy(Ljava/lang/String;)Z
    .locals 0

    const-string/jumbo p0, "memoryTagging"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/admin/flags/Flags;->setMtePolicyCoexistence()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public whitelist onPolicyChanged(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/admin/TargetUser;Landroid/app/admin/PolicyUpdateResult;)V
    .locals 0

    return-void
.end method

.method public whitelist onPolicySetResult(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/admin/TargetUser;Landroid/app/admin/PolicyUpdateResult;)V
    .locals 0

    return-void
.end method

.method public final whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "android.app.admin.action.DEVICE_POLICY_SET_RESULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Skipping propagation of policy %s"

    if-nez v2, :cond_2

    const-string v2, "android.app.admin.action.DEVICE_POLICY_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Landroid/app/admin/PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown action received: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v1, Landroid/app/admin/PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Received ACTION_DEVICE_POLICY_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyKey(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/admin/PolicyUpdateReceiver;->shouldPropagatePolicy(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, Landroid/app/admin/PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyExtraBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getTargetUser(Landroid/content/Intent;)Landroid/app/admin/TargetUser;

    move-result-object v4

    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyChangedReason(Landroid/content/Intent;)Landroid/app/admin/PolicyUpdateResult;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/PolicyUpdateReceiver;->onPolicyChanged(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/admin/TargetUser;Landroid/app/admin/PolicyUpdateResult;)V

    return-void

    :cond_2
    sget-object v1, Landroid/app/admin/PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    const-string v2, "Received ACTION_DEVICE_POLICY_SET_RESULT"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyKey(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/app/admin/PolicyUpdateReceiver;->shouldPropagatePolicy(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v0, Landroid/app/admin/PolicyUpdateReceiver;->TAG:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyExtraBundle(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getTargetUser(Landroid/content/Intent;)Landroid/app/admin/TargetUser;

    move-result-object v4

    invoke-static {p2}, Landroid/app/admin/PolicyUpdateReceiver;->getPolicyChangedReason(Landroid/content/Intent;)Landroid/app/admin/PolicyUpdateResult;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/app/admin/PolicyUpdateReceiver;->onPolicySetResult(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/admin/TargetUser;Landroid/app/admin/PolicyUpdateResult;)V

    return-void
.end method
