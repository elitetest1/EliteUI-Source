.class public Lcom/android/internal/view/StandaloneActionMode;
.super Landroid/view/ActionMode;
.source "StandaloneActionMode.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$Callback;


# instance fields
.field private blacklist mCallback:Landroid/view/ActionMode$Callback;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private blacklist mCustomView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mFinished:Z

.field private blacklist mFocusable:Z

.field private blacklist mMenu:Lcom/android/internal/view/menu/MenuBuilder;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode$Callback;Z)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    iput-object p1, p0, Lcom/android/internal/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    iput-object p3, p0, Lcom/android/internal/view/StandaloneActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    new-instance p1, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p2}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/internal/view/menu/MenuBuilder;->setDefaultShowAsAction(I)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/view/StandaloneActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    iput-boolean p4, p0, Lcom/android/internal/view/StandaloneActionMode;->mFocusable:Z

    return-void
.end method


# virtual methods
.method public whitelist finish()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mFinished:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mFinished:Z

    iget-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    iget-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p0}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    return-void
.end method

.method public whitelist getCustomView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getMenu()Landroid/view/Menu;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/StandaloneActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object p0
.end method

.method public whitelist getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    new-instance v0, Landroid/view/MenuInflater;

    iget-object p0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public whitelist getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public whitelist getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public whitelist invalidate()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/android/internal/view/StandaloneActionMode;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-interface {v0, p0, v1}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    return-void
.end method

.method public whitelist isTitleOptional()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->isTitleOptional()Z

    move-result p0

    return p0
.end method

.method public blacklist isUiFocusable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/view/StandaloneActionMode;->mFocusable:Z

    return p0
.end method

.method public blacklist onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public blacklist onCloseSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .locals 0

    return-void
.end method

.method public blacklist onMenuItemSelected(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lcom/android/internal/view/StandaloneActionMode;->mCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {p1, p0, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public blacklist onMenuModeChange(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/view/StandaloneActionMode;->invalidate()V

    iget-object p0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->showOverflowMenu()Z

    return-void
.end method

.method public blacklist onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object p0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->show()V

    return v1
.end method

.method public whitelist setCustomView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mCustomView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public whitelist setSubtitle(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/view/StandaloneActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public whitelist setSubtitle(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public whitelist setTitle(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/view/StandaloneActionMode;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public whitelist setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public whitelist setTitleOptionalHint(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    iget-object p0, p0, Lcom/android/internal/view/StandaloneActionMode;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarContextView;->setTitleOptional(Z)V

    return-void
.end method
