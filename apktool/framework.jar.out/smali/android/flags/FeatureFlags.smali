.class public Landroid/flags/FeatureFlags;
.super Ljava/lang/Object;
.source "FeatureFlags.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/flags/FeatureFlags$ChangeListener;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "FeatureFlags"

.field private static blacklist sInstance:Landroid/flags/FeatureFlags;

.field private static final blacklist sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mBooleanOverrides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final blacklist mDirtyFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/flags/Flag<",
            "*>;>;"
        }
    .end annotation
.end field

.field private blacklist mIFeatureFlags:Landroid/flags/IFeatureFlags;

.field private final blacklist mIFeatureFlagsCallback:Landroid/flags/IFeatureFlagsCallback;

.field private final blacklist mKnownFlags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/flags/Flag<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final blacklist mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/flags/FeatureFlags$ChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmKnownFlags(Landroid/flags/FeatureFlags;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroid/flags/FeatureFlags;->mKnownFlags:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$maddBooleanOverride(Landroid/flags/FeatureFlags;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/flags/FeatureFlags;->addBooleanOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smflagEqualsSyncableFlag(Landroid/flags/Flag;Landroid/flags/SyncableFlag;)Z
    .locals 0

    invoke-static {p0, p1}, Landroid/flags/FeatureFlags;->flagEqualsSyncableFlag(Landroid/flags/Flag;Landroid/flags/SyncableFlag;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/flags/FeatureFlags;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/flags/FeatureFlags;-><init>(Landroid/flags/IFeatureFlags;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/flags/IFeatureFlags;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/flags/FeatureFlags;->mKnownFlags:Ljava/util/Set;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/flags/FeatureFlags;->mDirtyFlags:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/flags/FeatureFlags;->mBooleanOverrides:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/flags/FeatureFlags;->mListeners:Ljava/util/Set;

    new-instance v0, Landroid/flags/FeatureFlags$1;

    invoke-direct {v0, p0}, Landroid/flags/FeatureFlags$1;-><init>(Landroid/flags/FeatureFlags;)V

    iput-object v0, p0, Landroid/flags/FeatureFlags;->mIFeatureFlagsCallback:Landroid/flags/IFeatureFlagsCallback;

    iput-object p1, p0, Landroid/flags/FeatureFlags;->mIFeatureFlags:Landroid/flags/IFeatureFlags;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1, v0}, Landroid/flags/IFeatureFlags;->registerCallback(Landroid/flags/IFeatureFlagsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "FeatureFlags"

    const-string v0, "Could not register callbacks!"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private blacklist addBooleanOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/flags/FeatureFlags;->mBooleanOverrides:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Landroid/flags/FeatureFlags;->mBooleanOverrides:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {p3}, Landroid/flags/FeatureFlags;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {v0, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private blacklist addFlag(Landroid/flags/Flag;)Landroid/flags/Flag;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/flags/Flag<",
            "*>;>(TT;)TT;"
        }
    .end annotation

    const-class v0, Landroid/flags/FeatureFlags;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/flags/FeatureFlags;->mDirtyFlags:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Landroid/flags/FeatureFlags;->mKnownFlags:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private blacklist bind()Landroid/flags/IFeatureFlags;
    .locals 2

    iget-object v0, p0, Landroid/flags/FeatureFlags;->mIFeatureFlags:Landroid/flags/IFeatureFlags;

    if-nez v0, :cond_0

    const-string v0, "feature_flags"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/flags/IFeatureFlags$Stub;->asInterface(Landroid/os/IBinder;)Landroid/flags/IFeatureFlags;

    move-result-object v0

    iput-object v0, p0, Landroid/flags/FeatureFlags;->mIFeatureFlags:Landroid/flags/IFeatureFlags;

    :try_start_0
    iget-object v1, p0, Landroid/flags/FeatureFlags;->mIFeatureFlagsCallback:Landroid/flags/IFeatureFlagsCallback;

    invoke-interface {v0, v1}, Landroid/flags/IFeatureFlags;->registerCallback(Landroid/flags/IFeatureFlagsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "FeatureFlags"

    const-string v1, "Failed to listen for flag changes!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object p0, p0, Landroid/flags/FeatureFlags;->mIFeatureFlags:Landroid/flags/IFeatureFlags;

    return-object p0
.end method

.method public static blacklist booleanFlag(Ljava/lang/String;Ljava/lang/String;Z)Landroid/flags/BooleanFlag;
    .locals 2

    invoke-static {}, Landroid/flags/FeatureFlags;->getInstance()Landroid/flags/FeatureFlags;

    move-result-object v0

    new-instance v1, Landroid/flags/BooleanFlag;

    invoke-direct {v1, p0, p1, p2}, Landroid/flags/BooleanFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Landroid/flags/FeatureFlags;->addFlag(Landroid/flags/Flag;)Landroid/flags/Flag;

    move-result-object p0

    check-cast p0, Landroid/flags/BooleanFlag;

    return-object p0
.end method

.method public static blacklist dynamicBooleanFlag(Ljava/lang/String;Ljava/lang/String;Z)Landroid/flags/DynamicBooleanFlag;
    .locals 2

    invoke-static {}, Landroid/flags/FeatureFlags;->getInstance()Landroid/flags/FeatureFlags;

    move-result-object v0

    new-instance v1, Landroid/flags/DynamicBooleanFlag;

    invoke-direct {v1, p0, p1, p2}, Landroid/flags/DynamicBooleanFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v0, v1}, Landroid/flags/FeatureFlags;->addFlag(Landroid/flags/Flag;)Landroid/flags/Flag;

    move-result-object p0

    check-cast p0, Landroid/flags/DynamicBooleanFlag;

    return-object p0
.end method

.method private static blacklist flagEqualsSyncableFlag(Landroid/flags/Flag;Landroid/flags/SyncableFlag;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/flags/Flag<",
            "*>;",
            "Landroid/flags/SyncableFlag;",
            ")Z"
        }
    .end annotation

    invoke-interface {p0}, Landroid/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Landroid/flags/Flag;->getNamespace()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist flagToSyncableFlag(Landroid/flags/Flag;)Landroid/flags/SyncableFlag;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/flags/Flag<",
            "*>;)",
            "Landroid/flags/SyncableFlag;"
        }
    .end annotation

    new-instance p0, Landroid/flags/SyncableFlag;

    invoke-interface {p1}, Landroid/flags/Flag;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Landroid/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Landroid/flags/Flag;->getDefault()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    instance-of p1, p1, Landroid/flags/DynamicFlag;

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/flags/SyncableFlag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public static blacklist fusedOffFlag(Ljava/lang/String;Ljava/lang/String;)Landroid/flags/FusedOffFlag;
    .locals 2

    invoke-static {}, Landroid/flags/FeatureFlags;->getInstance()Landroid/flags/FeatureFlags;

    move-result-object v0

    new-instance v1, Landroid/flags/FusedOffFlag;

    invoke-direct {v1, p0, p1}, Landroid/flags/FusedOffFlag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/flags/FeatureFlags;->addFlag(Landroid/flags/Flag;)Landroid/flags/Flag;

    move-result-object p0

    check-cast p0, Landroid/flags/FusedOffFlag;

    return-object p0
.end method

.method public static blacklist fusedOnFlag(Ljava/lang/String;Ljava/lang/String;)Landroid/flags/FusedOnFlag;
    .locals 2

    invoke-static {}, Landroid/flags/FeatureFlags;->getInstance()Landroid/flags/FeatureFlags;

    move-result-object v0

    new-instance v1, Landroid/flags/FusedOnFlag;

    invoke-direct {v1, p0, p1}, Landroid/flags/FusedOnFlag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/flags/FeatureFlags;->addFlag(Landroid/flags/Flag;)Landroid/flags/Flag;

    move-result-object p0

    check-cast p0, Landroid/flags/FusedOnFlag;

    return-object p0
.end method

.method private blacklist getBooleanInternal(Landroid/flags/Flag;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/flags/Flag<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/flags/FeatureFlags;->sync()V

    iget-object p0, p0, Landroid/flags/FeatureFlags;->mBooleanOverrides:Ljava/util/Map;

    invoke-interface {p1}, Landroid/flags/Flag;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_0

    invoke-interface {p1}, Landroid/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Boolean flag being read but was not synced: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getInstance()Landroid/flags/FeatureFlags;
    .locals 2

    sget-object v0, Landroid/flags/FeatureFlags;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/flags/FeatureFlags;->sInstance:Landroid/flags/FeatureFlags;

    if-nez v1, :cond_0

    new-instance v1, Landroid/flags/FeatureFlags;

    invoke-direct {v1}, Landroid/flags/FeatureFlags;-><init>()V

    sput-object v1, Landroid/flags/FeatureFlags;->sInstance:Landroid/flags/FeatureFlags;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Landroid/flags/FeatureFlags;->sInstance:Landroid/flags/FeatureFlags;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static blacklist parseBoolean(Ljava/lang/String;)Z
    .locals 3

    const-string/jumbo v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "t"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    const-string v1, "false"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "off"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tried parsing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " as boolean but it doesn\'t look like one. Value expected to be one of true|false, 1|0, t|f, on|off."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "FeatureFlags"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method public static blacklist setInstance(Landroid/flags/FeatureFlags;)V
    .locals 1

    sget-object v0, Landroid/flags/FeatureFlags;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p0, Landroid/flags/FeatureFlags;->sInstance:Landroid/flags/FeatureFlags;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public blacklist addChangeListener(Landroid/flags/FeatureFlags$ChangeListener;)V
    .locals 0

    iget-object p0, p0, Landroid/flags/FeatureFlags;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist isCurrentlyEnabled(Landroid/flags/DynamicBooleanFlag;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/flags/FeatureFlags;->getBooleanInternal(Landroid/flags/Flag;)Z

    move-result p0

    return p0
.end method

.method public blacklist isEnabled(Landroid/flags/BooleanFlag;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/flags/FeatureFlags;->getBooleanInternal(Landroid/flags/Flag;)Z

    move-result p0

    return p0
.end method

.method public blacklist isEnabled(Landroid/flags/FusedOffFlag;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isEnabled(Landroid/flags/FusedOnFlag;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected blacklist onFlagChange(Landroid/flags/DynamicFlag;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/flags/DynamicFlag<",
            "*>;)V"
        }
    .end annotation

    iget-object p0, p0, Landroid/flags/FeatureFlags;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/flags/FeatureFlags$ChangeListener;

    invoke-interface {v0, p1}, Landroid/flags/FeatureFlags$ChangeListener;->onFlagChanged(Landroid/flags/DynamicFlag;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist removeChangeListener(Landroid/flags/FeatureFlags$ChangeListener;)V
    .locals 0

    iget-object p0, p0, Landroid/flags/FeatureFlags;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist sync()V
    .locals 2

    const-class v0, Landroid/flags/FeatureFlags;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/flags/FeatureFlags;->mDirtyFlags:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/flags/FeatureFlags;->mDirtyFlags:Ljava/util/Set;

    invoke-virtual {p0, v1}, Landroid/flags/FeatureFlags;->syncInternal(Ljava/util/Set;)V

    iget-object p0, p0, Landroid/flags/FeatureFlags;->mDirtyFlags:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected blacklist syncInternal(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/flags/Flag<",
            "*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/flags/FeatureFlags;->bind()Landroid/flags/IFeatureFlags;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/flags/Flag;

    invoke-direct {p0, v3}, Landroid/flags/FeatureFlags;->flagToSyncableFlag(Landroid/flags/Flag;)Landroid/flags/SyncableFlag;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :try_start_0
    invoke-interface {v0, v1}, Landroid/flags/IFeatureFlags;->syncFlags(Ljava/util/List;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_1
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/flags/Flag;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/flags/SyncableFlag;

    invoke-static {v0, v3}, Landroid/flags/FeatureFlags;->flagEqualsSyncableFlag(Landroid/flags/Flag;Landroid/flags/SyncableFlag;)Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v1, v0, Landroid/flags/BooleanFlag;

    if-nez v1, :cond_3

    instance-of v0, v0, Landroid/flags/DynamicBooleanFlag;

    if-eqz v0, :cond_1

    :cond_3
    invoke-virtual {v3}, Landroid/flags/SyncableFlag;->getNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Landroid/flags/SyncableFlag;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Landroid/flags/SyncableFlag;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3}, Landroid/flags/FeatureFlags;->addBooleanOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    instance-of v1, v0, Landroid/flags/BooleanFlag;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Landroid/flags/Flag;->getNamespace()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Landroid/flags/Flag;->getName()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Landroid/flags/BooleanFlag;

    invoke-virtual {v0}, Landroid/flags/BooleanFlag;->getDefault()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "true"

    goto :goto_3

    :cond_5
    const-string v0, "false"

    :goto_3
    invoke-direct {p0, v1, v3, v0}, Landroid/flags/FeatureFlags;->addBooleanOverride(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    return-void
.end method
