.class public Landroid/tracing/CustomFeatureFlags;
.super Ljava/lang/Object;
.source "CustomFeatureFlags.java"

# interfaces
.implements Landroid/tracing/FeatureFlags;


# instance fields
.field private blacklist mGetValueImpl:Ljava/util/function/BiPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiPredicate<",
            "Ljava/lang/String;",
            "Ljava/util/function/Predicate<",
            "Landroid/tracing/FeatureFlags;",
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
            "Landroid/tracing/FeatureFlags;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    const-string v10, "android.tracing.system_server_large_perfetto_shmem_buffer"

    const-string v11, ""

    const-string v1, "android.tracing.client_side_proto_logging"

    const-string v2, "android.tracing.perfetto_ime"

    const-string v3, "android.tracing.perfetto_ime_tracing"

    const-string v4, "android.tracing.perfetto_protolog_tracing"

    const-string v5, "android.tracing.perfetto_transition_tracing"

    const-string v6, "android.tracing.perfetto_view_capture_tracing"

    const-string v7, "android.tracing.perfetto_wm_dump"

    const-string v8, "android.tracing.perfetto_wm_dump_cts"

    const-string v9, "android.tracing.perfetto_wm_tracing"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/tracing/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    iput-object p1, p0, Landroid/tracing/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    return-void
.end method

.method private blacklist isOptimizationEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public greylist clientSideProtoLogging()Z
    .locals 2

    new-instance v0, Landroid/tracing/CustomFeatureFlags$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/tracing/CustomFeatureFlags$$ExternalSyntheticLambda5;-><init>()V

    const-string v1, "android.tracing.client_side_proto_logging"

    invoke-virtual {p0, v1, v0}, Landroid/tracing/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

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

    const-string v8, "android.tracing.perfetto_wm_tracing"

    const-string v9, "android.tracing.system_server_large_perfetto_shmem_buffer"

    const-string v0, "android.tracing.client_side_proto_logging"

    const-string v1, "android.tracing.perfetto_ime"

    const-string v2, "android.tracing.perfetto_ime_tracing"

    const-string v3, "android.tracing.perfetto_protolog_tracing"

    const-string v4, "android.tracing.perfetto_transition_tracing"

    const-string v5, "android.tracing.perfetto_view_capture_tracing"

    const-string v6, "android.tracing.perfetto_wm_dump"

    const-string v7, "android.tracing.perfetto_wm_dump_cts"

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
            "Landroid/tracing/FeatureFlags;",
            ">;)Z"
        }
    .end annotation

    iget-object p0, p0, Landroid/tracing/CustomFeatureFlags;->mGetValueImpl:Ljava/util/function/BiPredicate;

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist isFlagReadOnlyOptimized(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/tracing/CustomFeatureFlags;->mReadOnlyFlagsSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/tracing/CustomFeatureFlags;->isOptimizationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist perfettoIme()Z
    .locals 2

    new-instance v0, Landroid/tracing/CustomFeatureFlags$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/tracing/CustomFeatureFlags$$ExternalSyntheticLambda4;-><init>()V

    const-string v1, "android.tracing.perfetto_ime"

    invoke-virtual {p0, v1, v0}, Landroid/tracing/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist perfettoImeTracing()Z
    .locals 2

    new-instance v0, Landroid/tracing/CustomFeatureFlags$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Landroid/tracing/CustomFeatureFlags$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "android.tracing.perfetto_ime_tracing"

    invoke-virtual {p0, v1, v0}, Landroid/tracing/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist perfettoProtologTracing()Z
    .locals 2

    new-instance v0, Landroid/tracing/CustomFeatureFlags$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/tracing/CustomFeatureFlags$$ExternalSyntheticLambda3;-><init>()V

    const-string v1, "android.tracing.perfetto_protolog_tracing"

    invoke-virtual {p0, v1, v0}, Landroid/tracing/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist perfettoTransitionTracing()Z
    .locals 2

    new-instance v0, Landroid/tracing/CustomFeatureFlags$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/tracing/CustomFeatureFlags$$ExternalSyntheticLambda1;-><init>()V

    const-string v1, "android.tracing.perfetto_transition_tracing"

    invoke-virtual {p0, v1, v0}, Landroid/tracing/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist perfettoViewCaptureTracing()Z
    .locals 2

    new-instance v0, Landroid/tracing/CustomFeatureFlags$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Landroid/tracing/CustomFeatureFlags$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "android.tracing.perfetto_view_capture_tracing"

    invoke-virtual {p0, v1, v0}, Landroid/tracing/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist perfettoWmDump()Z
    .locals 2

    new-instance v0, Landroid/tracing/CustomFeatureFlags$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/tracing/CustomFeatureFlags$$ExternalSyntheticLambda2;-><init>()V

    const-string v1, "android.tracing.perfetto_wm_dump"

    invoke-virtual {p0, v1, v0}, Landroid/tracing/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist perfettoWmDumpCts()Z
    .locals 2

    new-instance v0, Landroid/tracing/CustomFeatureFlags$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Landroid/tracing/CustomFeatureFlags$$ExternalSyntheticLambda9;-><init>()V

    const-string v1, "android.tracing.perfetto_wm_dump_cts"

    invoke-virtual {p0, v1, v0}, Landroid/tracing/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist perfettoWmTracing()Z
    .locals 2

    new-instance v0, Landroid/tracing/CustomFeatureFlags$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Landroid/tracing/CustomFeatureFlags$$ExternalSyntheticLambda8;-><init>()V

    const-string v1, "android.tracing.perfetto_wm_tracing"

    invoke-virtual {p0, v1, v0}, Landroid/tracing/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public greylist systemServerLargePerfettoShmemBuffer()Z
    .locals 2

    new-instance v0, Landroid/tracing/CustomFeatureFlags$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/tracing/CustomFeatureFlags$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.tracing.system_server_large_perfetto_shmem_buffer"

    invoke-virtual {p0, v1, v0}, Landroid/tracing/CustomFeatureFlags;->getValue(Ljava/lang/String;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method
