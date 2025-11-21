.class public Lcom/samsung/vekit/Common/VEContext;
.super Lcom/samsung/vekit/Common/Object/Element;
.source "VEContext.java"

# interfaces
.implements Lcom/samsung/vekit/Common/State/VEStateInterface;


# instance fields
.field private final blacklist animationManager:Lcom/samsung/vekit/Manager/AnimationManager;

.field private final blacklist contentManager:Lcom/samsung/vekit/Manager/ContentManager;

.field private final blacklist filterManager:Lcom/samsung/vekit/Manager/FilterManager;

.field private blacklist frameworkType:Lcom/samsung/vekit/Common/Type/FrameworkType;

.field private blacklist frcSupportInfo:[Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

.field private final blacklist itemManager:Lcom/samsung/vekit/Manager/ItemManager;

.field private final blacklist layerGroup:Lcom/samsung/vekit/Layer/LayerGroup;

.field private final blacklist layerManager:Lcom/samsung/vekit/Manager/LayerManager;

.field private final blacklist logProfileManager:Lcom/samsung/vekit/Manager/LogProfileManager;

.field private blacklist nativeInterfaceWrapper:Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

.field private blacklist state:Lcom/samsung/vekit/Common/State/VEKitState;


# direct methods
.method public constructor blacklist <init>()V
    .locals 4

    sget-object v0, Lcom/samsung/vekit/Common/Type/ElementType;->CONTEXT:Lcom/samsung/vekit/Common/Type/ElementType;

    const/4 v1, 0x0

    const-string v2, "Context"

    const/4 v3, 0x0

    invoke-direct {p0, v3, v0, v1, v2}, Lcom/samsung/vekit/Common/Object/Element;-><init>(Lcom/samsung/vekit/Common/VEContext;Lcom/samsung/vekit/Common/Type/ElementType;ILjava/lang/String;)V

    new-instance v0, Lcom/samsung/vekit/Manager/ItemManager;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Manager/ItemManager;-><init>(Lcom/samsung/vekit/Common/VEContext;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->itemManager:Lcom/samsung/vekit/Manager/ItemManager;

    new-instance v0, Lcom/samsung/vekit/Manager/LayerManager;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Manager/LayerManager;-><init>(Lcom/samsung/vekit/Common/VEContext;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->layerManager:Lcom/samsung/vekit/Manager/LayerManager;

    new-instance v0, Lcom/samsung/vekit/Manager/AnimationManager;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Manager/AnimationManager;-><init>(Lcom/samsung/vekit/Common/VEContext;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->animationManager:Lcom/samsung/vekit/Manager/AnimationManager;

    new-instance v0, Lcom/samsung/vekit/Manager/ContentManager;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Manager/ContentManager;-><init>(Lcom/samsung/vekit/Common/VEContext;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->contentManager:Lcom/samsung/vekit/Manager/ContentManager;

    new-instance v0, Lcom/samsung/vekit/Manager/FilterManager;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Manager/FilterManager;-><init>(Lcom/samsung/vekit/Common/VEContext;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->filterManager:Lcom/samsung/vekit/Manager/FilterManager;

    new-instance v0, Lcom/samsung/vekit/Manager/LogProfileManager;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Manager/LogProfileManager;-><init>(Lcom/samsung/vekit/Common/VEContext;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->logProfileManager:Lcom/samsung/vekit/Manager/LogProfileManager;

    new-instance v0, Lcom/samsung/vekit/Layer/LayerGroup;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Layer/LayerGroup;-><init>(Lcom/samsung/vekit/Common/VEContext;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->layerGroup:Lcom/samsung/vekit/Layer/LayerGroup;

    invoke-static {}, Lcom/samsung/vekit/Common/Type/ViewMode;->values()[Lcom/samsung/vekit/Common/Type/ViewMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->frcSupportInfo:[Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    sget-object v0, Lcom/samsung/vekit/Common/State/VEKitState;->IDLE:Lcom/samsung/vekit/Common/State/VEKitState;

    invoke-virtual {p0, v0}, Lcom/samsung/vekit/Common/VEContext;->setState(Lcom/samsung/vekit/Common/State/VEKitState;)V

    new-instance v0, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    invoke-direct {v0, p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;-><init>(Lcom/samsung/vekit/Common/State/VEStateInterface;)V

    iput-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->nativeInterfaceWrapper:Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    return-void
.end method


# virtual methods
.method public blacklist checkFrcAvailable(Lcom/samsung/vekit/Common/Type/ViewMode;Lcom/samsung/vekit/Common/Type/FpsType;Lcom/samsung/vekit/Common/Type/SpeedType;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/VEContext;->frcSupportInfo:[Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/ViewMode;->ordinal()I

    move-result p1

    aget-object p0, p0, p1

    invoke-virtual {p0, p2, p3}, Lcom/samsung/vekit/Common/Object/FrcSupportInfo;->checkFrcAvailable(Lcom/samsung/vekit/Common/Type/FpsType;Lcom/samsung/vekit/Common/Type/SpeedType;)Z

    move-result p0

    return p0
.end method

.method public blacklist getAnimationManager()Lcom/samsung/vekit/Manager/AnimationManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/VEContext;->animationManager:Lcom/samsung/vekit/Manager/AnimationManager;

    return-object p0
.end method

.method public blacklist getContentManager()Lcom/samsung/vekit/Manager/ContentManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/VEContext;->contentManager:Lcom/samsung/vekit/Manager/ContentManager;

    return-object p0
.end method

.method public blacklist getFilterManager()Lcom/samsung/vekit/Manager/FilterManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/VEContext;->filterManager:Lcom/samsung/vekit/Manager/FilterManager;

    return-object p0
.end method

.method public blacklist getFrameworkType()Lcom/samsung/vekit/Common/Type/FrameworkType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/VEContext;->frameworkType:Lcom/samsung/vekit/Common/Type/FrameworkType;

    return-object p0
.end method

.method public blacklist getFrcSupportInfo(Lcom/samsung/vekit/Common/Type/ViewMode;)Lcom/samsung/vekit/Common/Object/FrcSupportInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/VEContext;->frcSupportInfo:[Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    invoke-virtual {p1}, Lcom/samsung/vekit/Common/Type/ViewMode;->ordinal()I

    move-result p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method public blacklist getItemManager()Lcom/samsung/vekit/Manager/ItemManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/VEContext;->itemManager:Lcom/samsung/vekit/Manager/ItemManager;

    return-object p0
.end method

.method public blacklist getLayerGroup()Lcom/samsung/vekit/Layer/LayerGroup;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/VEContext;->layerGroup:Lcom/samsung/vekit/Layer/LayerGroup;

    return-object p0
.end method

.method public blacklist getLayerManager()Lcom/samsung/vekit/Manager/LayerManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/VEContext;->layerManager:Lcom/samsung/vekit/Manager/LayerManager;

    return-object p0
.end method

.method public blacklist getLogProfileManager()Lcom/samsung/vekit/Manager/LogProfileManager;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/VEContext;->logProfileManager:Lcom/samsung/vekit/Manager/LogProfileManager;

    return-object p0
.end method

.method public blacklist getNativeInterface()Lcom/samsung/vekit/Common/NativeInterfaceWrapper;
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/VEContext;->nativeInterfaceWrapper:Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    return-object p0
.end method

.method public declared-synchronized blacklist getState()Lcom/samsung/vekit/Common/State/VEKitState;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->state:Lcom/samsung/vekit/Common/State/VEKitState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public blacklist initialize()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->nativeInterfaceWrapper:Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    iget-object v1, p0, Lcom/samsung/vekit/Common/VEContext;->layerGroup:Lcom/samsung/vekit/Layer/LayerGroup;

    invoke-virtual {v0, v1}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->create(Lcom/samsung/vekit/Common/Object/Element;)V

    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->frcSupportInfo:[Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    sget-object v1, Lcom/samsung/vekit/Common/Type/ViewMode;->PREVIEW:Lcom/samsung/vekit/Common/Type/ViewMode;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Type/ViewMode;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/vekit/Common/VEContext;->nativeInterfaceWrapper:Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    sget-object v3, Lcom/samsung/vekit/Common/Type/ViewMode;->PREVIEW:Lcom/samsung/vekit/Common/Type/ViewMode;

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/Type/ViewMode;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->getFrcSupportInfo(I)Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->frcSupportInfo:[Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    sget-object v1, Lcom/samsung/vekit/Common/Type/ViewMode;->EXPORT:Lcom/samsung/vekit/Common/Type/ViewMode;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Type/ViewMode;->ordinal()I

    move-result v1

    iget-object p0, p0, Lcom/samsung/vekit/Common/VEContext;->nativeInterfaceWrapper:Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    sget-object v2, Lcom/samsung/vekit/Common/Type/ViewMode;->EXPORT:Lcom/samsung/vekit/Common/Type/ViewMode;

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/Type/ViewMode;->ordinal()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->getFrcSupportInfo(I)Lcom/samsung/vekit/Common/Object/FrcSupportInfo;

    move-result-object p0

    aput-object p0, v0, v1

    return-void
.end method

.method public blacklist release()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/vekit/Common/VEContext;->nativeInterfaceWrapper:Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    invoke-virtual {p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->releaseFramework()V

    return-void
.end method

.method public blacklist setFrameworkType(Lcom/samsung/vekit/Common/Type/FrameworkType;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/vekit/Common/VEContext;->frameworkType:Lcom/samsung/vekit/Common/Type/FrameworkType;

    return-void
.end method

.method public declared-synchronized blacklist setState(Lcom/samsung/vekit/Common/State/VEKitState;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/samsung/vekit/Common/VEContext;->state:Lcom/samsung/vekit/Common/State/VEKitState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public blacklist update()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/vekit/Common/VEContext;->nativeInterfaceWrapper:Lcom/samsung/vekit/Common/NativeInterfaceWrapper;

    invoke-virtual {v0, p0}, Lcom/samsung/vekit/Common/NativeInterfaceWrapper;->update(Lcom/samsung/vekit/Common/Object/Element;)V

    return-void
.end method
