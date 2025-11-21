.class public Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;
.super Ljava/lang/Object;
.source "CoreDocumentAccessibility.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;


# instance fields
.field private final blacklist mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

.field private final blacklist mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    return-void
.end method

.method static blacklist componentStream(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ")",
            "Ljava/util/stream/Stream<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist findScrollable(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    const-class v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist isClickAction(I)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static blacklist isContainerWithSemantics(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    invoke-interface {p0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;->isInterestingForSemantics()Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getComponentModifiers()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method static blacklist isInteresting(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->isContainerWithSemantics(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->modifiersStream(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method static blacklist isModifierWithSemantics(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    invoke-interface {p0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;->isInterestingForSemantics()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist isScrollBackwardAction(I)Z
    .locals 1

    const/16 v0, 0x2000

    if-eq p0, v0, :cond_1

    const v0, 0x1020038

    if-eq p0, v0, :cond_1

    const v0, 0x1020039

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist isScrollForwardAction(I)Z
    .locals 1

    const/16 v0, 0x1000

    if-eq p0, v0, :cond_1

    const v0, 0x102003a

    if-eq p0, v0, :cond_1

    const v0, 0x102003b

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist isShowOnScreenAction(I)Z
    .locals 1

    const v0, 0x1020036

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic blacklist lambda$componentStream$3(Lcom/android/internal/widget/remotecompose/core/Operation;)Ljava/util/stream/Stream;
    .locals 1

    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->componentStream(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$findComponentById$0(ILcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic blacklist lambda$modifiersStream$4(Lcom/android/internal/widget/remotecompose/core/Operation;)Z
    .locals 0

    instance-of p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    return p0
.end method

.method static synthetic blacklist lambda$modifiersStream$5(Lcom/android/internal/widget/remotecompose/core/Operation;)Ljava/util/stream/Stream;
    .locals 0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method static synthetic blacklist lambda$semanticModifiersForComponent$1(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;)Z
    .locals 1

    instance-of v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    invoke-interface {p0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;->isInterestingForSemantics()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic blacklist lambda$semanticModifiersForComponent$2(Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;
    .locals 0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    return-object p0
.end method

.method static blacklist modifiersStream(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ")",
            "Ljava/util/stream/Stream<",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private blacklist showOnScreen(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .locals 0

    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->findScrollable(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;->showOnScreen(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist findComponentById(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
    .locals 1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getRootLayoutComponent()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->componentStream(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public blacklist getComponentIdAt(Landroid/graphics/PointF;)Ljava/lang/Integer;
    .locals 0

    sget-object p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->RootId:Ljava/lang/Integer;

    return-object p0
.end method

.method public blacklist mergeMode(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;
    .locals 3

    instance-of p0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getComponentModifiers()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getMode()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->ordinal()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->ordinal()I

    move-result v2

    if-le v1, v2, :cond_1

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getMode()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method public blacklist performAction(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;ILandroid/os/Bundle;)Z
    .locals 0

    :try_start_0
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->isClickAction(I)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->performClick(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    return p1

    :cond_0
    :try_start_1
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->isScrollForwardAction(I)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    sget-object p3, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->FORWARD:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->scrollDirection(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;)Z

    move-result p1

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->isScrollBackwardAction(I)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    sget-object p3, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;->BACKWARD:Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->scrollDirection(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;)Z

    move-result p1

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->isShowOnScreenAction(I)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-direct {p0, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->showOnScreen(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->needsRepaint()I

    throw p1
.end method

.method public blacklist performClick(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mRemoteContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result p1

    const-string v1, ""

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->performClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public blacklist scrollByOffset(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;I)I
    .locals 0

    const-class p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p3}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;->scrollByOffset(Lcom/android/internal/widget/remotecompose/core/RemoteContext;I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist scrollDirection(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;)Z
    .locals 0

    const-class p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    invoke-virtual {p2, p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p3}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;->scrollDirection(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollDirection;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist semanticModifiersForComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;",
            ">;"
        }
    .end annotation

    instance-of p0, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getComponentModifiers()Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ComponentModifiers;->getList()Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public blacklist semanticallyRelevantChildComponents(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mergeMode(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->CLEAR_AND_SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    if-eq v0, v1, :cond_5

    if-nez p2, :cond_1

    sget-object v1, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->MERGE:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->mList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/Operation;

    instance-of v2, v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->isInteresting(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1, p2}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->semanticallyRelevantChildComponents(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    return-object v0

    :cond_5
    :goto_1
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public blacklist stringValue(I)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->getRemoteComposeState()Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
