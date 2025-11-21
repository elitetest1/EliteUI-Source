.class public Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppListAccessibilityDelegate"
.end annotation


# instance fields
.field private final blacklist mBottomBar:Landroid/view/View;

.field private final blacklist mDrawer:Lcom/android/internal/widget/ResolverDrawerLayout;

.field private final blacklist mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V
    .locals 1

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mRect:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mDrawer:Lcom/android/internal/widget/ResolverDrawerLayout;

    const v0, 0x1020264

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mBottomBar:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public whitelist onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p3

    const v0, 0x8000

    if-ne p3, v0, :cond_2

    iget-object p3, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mDrawer:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {p3}, Lcom/android/internal/widget/ResolverDrawerLayout;->isCollapsed()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget-object p2, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object p3, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mRect:Landroid/graphics/Rect;

    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mDrawer:Lcom/android/internal/widget/ResolverDrawerLayout;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/ResolverDrawerLayout;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mBottomBar:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    if-gt v2, p2, :cond_1

    if-le p3, v3, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/android/internal/app/ResolverActivity$AppListAccessibilityDelegate;->mDrawer:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ResolverDrawerLayout;->setCollapsed(Z)V

    :cond_2
    return p1
.end method
