.class public Landroid/service/dreams/utils/DreamAccessibility;
.super Ljava/lang/Object;
.source "DreamAccessibility.java"


# instance fields
.field private final blacklist mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mDismissCallback:Ljava/lang/Runnable;

.field private final blacklist mView:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDismissCallback(Landroid/service/dreams/utils/DreamAccessibility;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Landroid/service/dreams/utils/DreamAccessibility;->mDismissCallback:Ljava/lang/Runnable;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/dreams/utils/DreamAccessibility;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/service/dreams/utils/DreamAccessibility;->mView:Landroid/view/View;

    invoke-direct {p0, p1}, Landroid/service/dreams/utils/DreamAccessibility;->createNewAccessibilityDelegate(Landroid/content/Context;)Landroid/view/View$AccessibilityDelegate;

    move-result-object p1

    iput-object p1, p0, Landroid/service/dreams/utils/DreamAccessibility;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    iput-object p3, p0, Landroid/service/dreams/utils/DreamAccessibility;->mDismissCallback:Ljava/lang/Runnable;

    return-void
.end method

.method private blacklist addAccessibilityConfiguration()V
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/utils/DreamAccessibility;->mView:Landroid/view/View;

    iget-object p0, p0, Landroid/service/dreams/utils/DreamAccessibility;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private blacklist createNewAccessibilityDelegate(Landroid/content/Context;)Landroid/view/View$AccessibilityDelegate;
    .locals 1

    new-instance v0, Landroid/service/dreams/utils/DreamAccessibility$1;

    invoke-direct {v0, p0, p1}, Landroid/service/dreams/utils/DreamAccessibility$1;-><init>(Landroid/service/dreams/utils/DreamAccessibility;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public blacklist updateAccessibilityConfiguration()V
    .locals 1

    iget-object v0, p0, Landroid/service/dreams/utils/DreamAccessibility;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityDelegate()Landroid/view/View$AccessibilityDelegate;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/service/dreams/utils/DreamAccessibility;->addAccessibilityConfiguration()V

    :cond_0
    return-void
.end method
