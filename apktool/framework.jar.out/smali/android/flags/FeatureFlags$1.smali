.class Landroid/flags/FeatureFlags$1;
.super Landroid/flags/IFeatureFlagsCallback$Stub;
.source "FeatureFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/flags/FeatureFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/flags/FeatureFlags;


# direct methods
.method constructor blacklist <init>(Landroid/flags/FeatureFlags;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/flags/FeatureFlags$1;->this$0:Landroid/flags/FeatureFlags;

    invoke-direct {p0}, Landroid/flags/IFeatureFlagsCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onFlagChange(Landroid/flags/SyncableFlag;)V
    .locals 4

    iget-object v0, p0, Landroid/flags/FeatureFlags$1;->this$0:Landroid/flags/FeatureFlags;

    invoke-static {v0}, Landroid/flags/FeatureFlags;->-$$Nest$fgetmKnownFlags(Landroid/flags/FeatureFlags;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/flags/Flag;

    invoke-static {v1, p1}, Landroid/flags/FeatureFlags;->-$$Nest$smflagEqualsSyncableFlag(Landroid/flags/Flag;Landroid/flags/SyncableFlag;)Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v0, v1, Landroid/flags/DynamicFlag;

    if-eqz v0, :cond_3

    instance-of v0, v1, Landroid/flags/DynamicBooleanFlag;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    check-cast v0, Landroid/flags/DynamicBooleanFlag;

    invoke-virtual {v0}, Landroid/flags/DynamicBooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Landroid/flags/FeatureFlags$1;->this$0:Landroid/flags/FeatureFlags;

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1, v0}, Landroid/flags/FeatureFlags;->-$$Nest$maddBooleanOverride(Landroid/flags/FeatureFlags;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object p0, p0, Landroid/flags/FeatureFlags$1;->this$0:Landroid/flags/FeatureFlags;

    check-cast v1, Landroid/flags/DynamicFlag;

    invoke-virtual {p0, v1}, Landroid/flags/FeatureFlags;->onFlagChange(Landroid/flags/DynamicFlag;)V

    :cond_3
    return-void
.end method
