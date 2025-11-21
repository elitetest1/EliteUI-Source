.class public Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeAccessibilityRegistrar;
.super Ljava/lang/Object;
.source "PlatformRemoteComposeAccessibilityRegistrar.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeAccessibilityRegistrar;


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clearAccessibilityDelegate(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public blacklist forRemoteComposePlayer(Landroid/view/View;Lcom/android/internal/widget/remotecompose/core/CoreDocument;)Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;
    .locals 2

    new-instance p0, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;

    new-instance v0, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;

    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/remotecompose/core/RemoteContextAware;

    invoke-interface {v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContextAware;->getRemoteContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/android/internal/widget/remotecompose/accessibility/CoreDocumentAccessibility;-><init>(Lcom/android/internal/widget/remotecompose/core/CoreDocument;Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    new-instance p2, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/remotecompose/accessibility/AndroidPlatformSemanticNodeApplier;-><init>(Landroid/view/View;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;-><init>(Landroid/view/View;Lcom/android/internal/widget/remotecompose/accessibility/RemoteComposeDocumentAccessibility;Lcom/android/internal/widget/remotecompose/accessibility/SemanticNodeApplier;)V

    return-object p0
.end method

.method public blacklist setAccessibilityDelegate(Landroid/view/View;Lcom/android/internal/widget/remotecompose/core/CoreDocument;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeAccessibilityRegistrar;->forRemoteComposePlayer(Landroid/view/View;Lcom/android/internal/widget/remotecompose/core/CoreDocument;)Lcom/android/internal/widget/remotecompose/accessibility/PlatformRemoteComposeTouchHelper;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method
