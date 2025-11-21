.class public Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "PlatformRemoteComposeTouchHelper.java"


# instance fields
.field private final blacklist mApplier:Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHost:Landroid/view/View;

.field private final blacklist mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;


# direct methods
.method public constructor blacklist <init>(Landroid/view/View;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;",
            "Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    iput-object p3, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mApplier:Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier;

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mHost:Landroid/view/View;

    return-void
.end method

.method public static blacklist forRemoteComposePlayer(Landroid/view/View;Lcom/android/internal/widget/remotecompose/core/CoreDocument;)Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;
    .locals 3

    new-instance v0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;

    new-instance v1, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;

    move-object v2, p0

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/RemoteContextAware;

    invoke-interface {v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContextAware;->getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;-><init>(Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    new-instance p1, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;

    invoke-direct {p1, p0}, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;-><init>(Landroid/view/View;)V

    invoke-direct {v0, p0, v1, p1}, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;-><init>(Landroid/view/View;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier;)V

    return-object v0
.end method


# virtual methods
.method protected blacklist getVirtualViewAt(FF)I
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {p0, v0}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->getComponentIdAt(Landroid/graphics/PointF;)Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_0

    const/high16 p0, -0x80000000

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method protected blacklist getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    sget-object v1, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->RootId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->findComponentById(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    invoke-interface {v1, v0}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->semanticModifiersForComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    sget-object v1, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->RootId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/util/IntArray;->add(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->semanticallyRelevantChildComponents(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Z)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/util/IntArray;->add(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected blacklist onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->findComponentById(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->performAction(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->invalidateRoot()V

    :cond_0
    return p1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    return-void
.end method

.method public blacklist onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->findComponentById(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->mergeMode(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->MERGE:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->semanticallyRelevantChildComponents(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2, p2}, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    invoke-interface {v1, p1}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->semanticModifiersForComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mApplier:Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier;

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    invoke-interface {v2, v3, p2, p1, v1}, Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier;->applyComponent(Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Ljava/util/List;)V

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mRemoteDocA11y:Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->semanticallyRelevantChildComponents(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Z)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;->mApplier:Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier;

    invoke-interface {p0, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier;->addChildren(Ljava/lang/Object;Ljava/util/List;)V

    :cond_1
    return-void
.end method
