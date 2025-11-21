.class public Lcom/samsung/android/globalactions/features/DesktopModeStrategy;
.super Ljava/lang/Object;
.source "DesktopModeStrategy.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/strategies/InitializationStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/DisposingStrategy;
.implements Lcom/samsung/android/globalactions/presentation/strategies/DefaultActionsCreationStrategy;


# instance fields
.field private final blacklist mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

.field blacklist mContext:Landroid/content/Context;

.field blacklist mDesktopModeManager:Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

.field blacklist mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;


# direct methods
.method public static synthetic blacklist $r8$lambda$FBghBIR5glnoGlpINI91TOIJUyc(Lcom/samsung/android/globalactions/features/DesktopModeStrategy;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;->lambda$onInitialize$0()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;Lcom/samsung/android/globalactions/util/ConditionChecker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    iput-object p3, p0, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;->mDesktopModeManager:Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    iput-object p4, p0, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    return-void
.end method

.method private synthetic blacklist lambda$onInitialize$0()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;->mView:Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;

    invoke-interface {p0}, Lcom/samsung/android/globalactions/presentation/view/ExtendableGlobalActionsView;->dismiss()V

    return-void
.end method


# virtual methods
.method public blacklist onCreateEmergencyAction()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;->mConditionChecker:Lcom/samsung/android/globalactions/util/ConditionChecker;

    sget-object v0, Lcom/samsung/android/globalactions/util/SystemConditions;->IS_DESKTOP_MODE_DUAL_VIEW:Lcom/samsung/android/globalactions/util/SystemConditions;

    invoke-interface {p0, v0}, Lcom/samsung/android/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public blacklist onDispose()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;->mDesktopModeManager:Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->dispose()V

    return-void
.end method

.method public blacklist onInitialize(Z)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/globalactions/features/DesktopModeStrategy;->mDesktopModeManager:Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;

    new-instance v0, Lcom/samsung/android/globalactions/features/DesktopModeStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/globalactions/features/DesktopModeStrategy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/globalactions/features/DesktopModeStrategy;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/globalactions/util/DesktopModeManagerWrapper;->registerModeChangedListener(Ljava/lang/Runnable;)V

    return-void
.end method
