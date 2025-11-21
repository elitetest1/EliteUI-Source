.class public Landroid/service/dreams/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/service/dreams/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/service/dreams/FeatureFlags;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mReadOnlyFlagsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/function/BiPredicate;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/service/dreams/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const-string v10, "android.service.dreams.start_and_stop_dozing_in_background"

    const-string v11, ""

    const-string v1, "android.service.dreams.allow_dream_when_postured"

    const-string v2, "android.service.dreams.cleanup_dream_settings_on_uninstall"

    const-string v3, "android.service.dreams.dismiss_dream_on_keyguard_dismiss"

    const-string v4, "android.service.dreams.dream_handles_being_obscured"

    const-string v5, "android.service.dreams.dream_handles_confirm_keys"

    const-string v6, "android.service.dreams.dream_overlay_host"

    const-string v7, "android.service.dreams.dream_wake_redirect"

    const-string v8, "android.service.dreams.dreams_v2"

    const-string v9, "android.service.dreams.publish_preview_state_to_overlay"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/service/dreams/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    iput-object p1, p0, Landroid/service/dreams/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public greylist allowDreamWhenPostured()Z
    .locals 2

    new-instance v0, Landroid/service/dreams/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/service/dreams/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.service.dreams.allow_dream_when_postured"

    invoke-virtual {p0, v1, v0}, Landroid/service/dreams/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist cleanupDreamSettingsOnUninstall()Z
    .locals 2

    new-instance v0, Landroid/service/dreams/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/service/dreams/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.service.dreams.cleanup_dream_settings_on_uninstall"

    invoke-virtual {p0, v1, v0}, Landroid/service/dreams/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist dismissDreamOnKeyguardDismiss()Z
    .locals 2

    new-instance v0, Landroid/service/dreams/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/service/dreams/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.service.dreams.dismiss_dream_on_keyguard_dismiss"

    invoke-virtual {p0, v1, v0}, Landroid/service/dreams/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist dreamHandlesBeingObscured()Z
    .locals 2

    new-instance v0, Landroid/service/dreams/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/service/dreams/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.service.dreams.dream_handles_being_obscured"

    invoke-virtual {p0, v1, v0}, Landroid/service/dreams/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist dreamHandlesConfirmKeys()Z
    .locals 2

    new-instance v0, Landroid/service/dreams/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/service/dreams/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.service.dreams.dream_handles_confirm_keys"

    invoke-virtual {p0, v1, v0}, Landroid/service/dreams/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist dreamOverlayHost()Z
    .locals 2

    new-instance v0, Landroid/service/dreams/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/service/dreams/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.service.dreams.dream_overlay_host"

    invoke-virtual {p0, v1, v0}, Landroid/service/dreams/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist dreamWakeRedirect()Z
    .locals 2

    new-instance v0, Landroid/service/dreams/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/service/dreams/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.service.dreams.dream_wake_redirect"

    invoke-virtual {p0, v1, v0}, Landroid/service/dreams/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist dreamsV2()Z
    .locals 2

    new-instance v0, Landroid/service/dreams/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/service/dreams/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.service.dreams.dreams_v2"

    invoke-virtual {p0, v1, v0}, Landroid/service/dreams/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v8, "android.service.dreams.publish_preview_state_to_overlay"

    const-string v9, "android.service.dreams.start_and_stop_dozing_in_background"

    const-string v0, "android.service.dreams.allow_dream_when_postured"

    const-string v1, "android.service.dreams.cleanup_dream_settings_on_uninstall"

    const-string v2, "android.service.dreams.dismiss_dream_on_keyguard_dismiss"

    const-string v3, "android.service.dreams.dream_handles_being_obscured"

    const-string v4, "android.service.dreams.dream_handles_confirm_keys"

    const-string v5, "android.service.dreams.dream_overlay_host"

    const-string v6, "android.service.dreams.dream_wake_redirect"

    const-string v7, "android.service.dreams.dreams_v2"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/service/dreams/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Landroid/service/dreams/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/service/dreams/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist publishPreviewStateToOverlay()Z
    .locals 2

    new-instance v0, Landroid/service/dreams/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/service/dreams/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.service.dreams.publish_preview_state_to_overlay"

    invoke-virtual {p0, v1, v0}, Landroid/service/dreams/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist startAndStopDozingInBackground()Z
    .locals 2

    new-instance v0, Landroid/service/dreams/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/service/dreams/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.service.dreams.start_and_stop_dozing_in_background"

    invoke-virtual {p0, v1, v0}, Landroid/service/dreams/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method
