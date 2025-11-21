.class public Landroid/app/contextualsearch/flags/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/app/contextualsearch/flags/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/app/contextualsearch/flags/FeatureFlags;",
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
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/app/contextualsearch/flags/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const-string v8, "android.app.contextualsearch.flags.self_invocation"

    const-string v9, ""

    const-string v1, "android.app.contextualsearch.flags.contextual_search_media_projection"

    const-string v2, "android.app.contextualsearch.flags.contextual_search_prevent_self_capture"

    const-string v3, "android.app.contextualsearch.flags.enable_service"

    const-string v4, "android.app.contextualsearch.flags.enable_token_refresh"

    const-string v5, "android.app.contextualsearch.flags.include_audio_playing_status"

    const-string v6, "android.app.contextualsearch.flags.multi_window_screen_context"

    const-string v7, "android.app.contextualsearch.flags.report_secure_surfaces_in_assist_structure"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    iput-object p1, p0, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public greylist contextualSearchMediaProjection()Z
    .locals 2

    new-instance v0, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.app.contextualsearch.flags.contextual_search_media_projection"

    invoke-virtual {p0, v1, v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist contextualSearchPreventSelfCapture()Z
    .locals 2

    new-instance v0, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.app.contextualsearch.flags.contextual_search_prevent_self_capture"

    invoke-virtual {p0, v1, v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist enableService()Z
    .locals 2

    new-instance v0, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.app.contextualsearch.flags.enable_service"

    invoke-virtual {p0, v1, v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist enableTokenRefresh()Z
    .locals 2

    new-instance v0, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.app.contextualsearch.flags.enable_token_refresh"

    invoke-virtual {p0, v1, v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist getFlagNames()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v6, "android.app.contextualsearch.flags.report_secure_surfaces_in_assist_structure"

    const-string v7, "android.app.contextualsearch.flags.self_invocation"

    const-string v0, "android.app.contextualsearch.flags.contextual_search_media_projection"

    const-string v1, "android.app.contextualsearch.flags.contextual_search_prevent_self_capture"

    const-string v2, "android.app.contextualsearch.flags.enable_service"

    const-string v3, "android.app.contextualsearch.flags.enable_token_refresh"

    const-string v4, "android.app.contextualsearch.flags.include_audio_playing_status"

    const-string v5, "android.app.contextualsearch.flags.multi_window_screen_context"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

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
            "Landroid/app/contextualsearch/flags/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public greylist includeAudioPlayingStatus()Z
    .locals 2

    new-instance v0, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.app.contextualsearch.flags.include_audio_playing_status"

    invoke-virtual {p0, v1, v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist multiWindowScreenContext()Z
    .locals 2

    new-instance v0, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.app.contextualsearch.flags.multi_window_screen_context"

    invoke-virtual {p0, v1, v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist reportSecureSurfacesInAssistStructure()Z
    .locals 2

    new-instance v0, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.app.contextualsearch.flags.report_secure_surfaces_in_assist_structure"

    invoke-virtual {p0, v1, v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist selfInvocation()Z
    .locals 2

    new-instance v0, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.app.contextualsearch.flags.self_invocation"

    invoke-virtual {p0, v1, v0}, Landroid/app/contextualsearch/flags/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method
