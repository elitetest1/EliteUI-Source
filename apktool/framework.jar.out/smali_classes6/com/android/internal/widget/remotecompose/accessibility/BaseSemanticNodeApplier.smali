.class public abstract Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;
.super Ljava/lang/Object;
.source "BaseSemanticNodeApplier.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier<",
        "TN;>;"
    }
.end annotation


# static fields
.field private static final blacklist LOG_TAG:Ljava/lang/String; = "RemoteCompose"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist appendNullable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist applyComponent(Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;",
            "TN;",
            "Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [F

    invoke-virtual {p3, v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getLocationInWindow([F)V

    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v0, v2

    float-to-int v3, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    float-to-int v5, v5

    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v6

    add-float/2addr v2, v6

    float-to-int v2, v2

    aget v0, v0, v4

    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v4

    add-float/2addr v0, v4

    float-to-int v0, v0

    invoke-direct {v1, v3, v5, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p2, v1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getComponentId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->setUniqueId(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p3, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getContentDescriptionId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyContentDescription(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;)V

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getTextId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyText(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;)V

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getRole()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyRole(Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applySemantics(Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;Ljava/lang/Object;Ljava/util/List;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->getText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p1, ""

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object p1

    instance-of p1, p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;

    const-class p3, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    invoke-virtual {p1, p3}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->selfOrModifier(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/LayoutComponent;->getComponentId()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyListItem(Ljava/lang/Object;I)V

    :cond_2
    return-void
.end method

.method protected blacklist applyContentDescription(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "TN;",
            "Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p3, p1}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->stringValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->appendNullable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected blacklist applyCoreSemantics(Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;",
            "TN;",
            "Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->getContentDescriptionId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyContentDescription(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;)V

    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->getRole()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyRole(Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->getTextId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyText(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;)V

    invoke-virtual {p3}, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->getStateDescriptionId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyStateDescription(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;)V

    iget-boolean p1, p3, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mEnabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->setEnabled(Ljava/lang/Object;Z)V

    :cond_0
    return-void
.end method

.method protected abstract blacklist applyListItem(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;I)V"
        }
    .end annotation
.end method

.method protected blacklist applyRole(Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;",
            "TN;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->setRoleDescription(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected abstract blacklist applyScrollable(Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;",
            "I)V"
        }
    .end annotation
.end method

.method protected blacklist applySemantics(Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;Ljava/lang/Object;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;",
            "TN;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilitySemantics;->isInterestingForSemantics()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyCoreSemantics(Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->setClickable(Ljava/lang/Object;Z)V

    :cond_2
    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getContentDescriptionId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getContentDescriptionId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyContentDescription(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;)V

    :cond_3
    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getTextId()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getTextId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyText(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;)V

    :cond_4
    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent;->getRole()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyRole(Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    instance-of v1, v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;->supportsScrollByOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;->getScrollAxisRange()Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;

    move-result-object v1

    invoke-interface {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent;->scrollDirection()I

    move-result v0

    invoke-virtual {p0, p2, v1, v0}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->applyScrollable(Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/core/semantics/ScrollableComponent$ScrollAxisRange;I)V

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown semantic: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteCompose"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    return-void
.end method

.method protected blacklist applyStateDescription(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "TN;",
            "Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->getStateDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p3, p1}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->stringValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->appendNullable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->setStateDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected blacklist applyText(Ljava/lang/Integer;Ljava/lang/Object;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "TN;",
            "Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p3, p1}, Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;->stringValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->getText(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-direct {p0, p3, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->appendNullable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/BaseSemanticNodeApplier;->setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected abstract blacklist getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation
.end method

.method protected abstract blacklist getStateDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation
.end method

.method protected abstract blacklist getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation
.end method

.method protected abstract blacklist setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract blacklist setClickable(Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;Z)V"
        }
    .end annotation
.end method

.method protected abstract blacklist setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract blacklist setEnabled(Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;Z)V"
        }
    .end annotation
.end method

.method protected abstract blacklist setRoleDescription(Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract blacklist setStateDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract blacklist setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation
.end method

.method protected abstract blacklist setUniqueId(Ljava/lang/Object;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method
