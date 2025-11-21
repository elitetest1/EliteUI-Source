.class public final Landroid/view/accessibility/AccessibilityNodeIdManager;
.super Ljava/lang/Object;
.source "AccessibilityNodeIdManager.java"


# static fields
.field private static blacklist sIdManager:Landroid/view/accessibility/AccessibilityNodeIdManager;


# instance fields
.field private blacklist mIdsToViews:Landroid/view/accessibility/WeakSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/view/accessibility/WeakSparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/accessibility/WeakSparseArray;

    invoke-direct {v0}, Landroid/view/accessibility/WeakSparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    return-void
.end method

.method public static declared-synchronized blacklist getInstance()Landroid/view/accessibility/AccessibilityNodeIdManager;
    .locals 2

    const-class v0, Landroid/view/accessibility/AccessibilityNodeIdManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeIdManager;->sIdManager:Landroid/view/accessibility/AccessibilityNodeIdManager;

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeIdManager;

    invoke-direct {v1}, Landroid/view/accessibility/AccessibilityNodeIdManager;-><init>()V

    sput-object v1, Landroid/view/accessibility/AccessibilityNodeIdManager;->sIdManager:Landroid/view/accessibility/AccessibilityNodeIdManager;

    :cond_0
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeIdManager;->sIdManager:Landroid/view/accessibility/AccessibilityNodeIdManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist findView(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/WeakSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->includeForAccessibility()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public blacklist registerViewWithId(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    invoke-virtual {p0, p2, p1}, Landroid/view/accessibility/WeakSparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public blacklist unregisterViewWithId(I)V
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Landroid/view/accessibility/AccessibilityNodeIdManager;->mIdsToViews:Landroid/view/accessibility/WeakSparseArray;

    invoke-virtual {p0, p1}, Landroid/view/accessibility/WeakSparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
