.class Landroid/service/dreams/utils/DreamAccessibility$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "DreamAccessibility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/utils/DreamAccessibility;->createNewAccessibilityDelegate(Landroid/content/Context;)Landroid/view/View$AccessibilityDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/dreams/utils/DreamAccessibility;

.field final synthetic blacklist val$context:Landroid/content/Context;


# direct methods
.method constructor blacklist <init>(Landroid/service/dreams/utils/DreamAccessibility;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/dreams/utils/DreamAccessibility$1;->this$0:Landroid/service/dreams/utils/DreamAccessibility;

    iput-object p2, p0, Landroid/service/dreams/utils/DreamAccessibility$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object p0, p0, Landroid/service/dreams/utils/DreamAccessibility$1;->val$context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10404be

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/high16 v0, 0x100000

    invoke-direct {p1, v0, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public whitelist performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    const/high16 p1, 0x100000

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/service/dreams/utils/DreamAccessibility$1;->this$0:Landroid/service/dreams/utils/DreamAccessibility;

    invoke-static {p1}, Landroid/service/dreams/utils/DreamAccessibility;->-$$Nest$fgetmDismissCallback(Landroid/service/dreams/utils/DreamAccessibility;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Landroid/service/dreams/utils/DreamAccessibility$1;->this$0:Landroid/service/dreams/utils/DreamAccessibility;

    invoke-static {p0}, Landroid/service/dreams/utils/DreamAccessibility;->-$$Nest$fgetmDismissCallback(Landroid/service/dreams/utils/DreamAccessibility;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
