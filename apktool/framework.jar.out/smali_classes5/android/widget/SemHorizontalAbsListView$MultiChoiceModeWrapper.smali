.class Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "SemHorizontalAbsListView.java"

# interfaces
.implements Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SemHorizontalAbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private blacklist mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

.field final synthetic blacklist this$0:Landroid/widget/SemHorizontalAbsListView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/SemHorizontalAbsListView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist hasWrappedCallback()Z
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    invoke-interface {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public whitelist onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {p0, p2}, Landroid/widget/SemHorizontalAbsListView;->setLongClickable(Z)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return p2
.end method

.method public whitelist onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v0, 0x0

    iput-object v0, p1, Landroid/widget/SemHorizontalAbsListView;->mChoiceActionMode:Landroid/view/ActionMode;

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->clearChoices()V

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/widget/SemHorizontalAbsListView;->mDataChanged:Z

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->rememberSyncState()V

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->requestLayout()V

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {p0, v0}, Landroid/widget/SemHorizontalAbsListView;->setLongClickable(Z)V

    return-void
.end method

.method public blacklist onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 6

    iget-object v0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    iget-object p1, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-virtual {p1}, Landroid/widget/SemHorizontalAbsListView;->getCheckedItemCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->this$0:Landroid/widget/SemHorizontalAbsListView;

    invoke-static {p0}, Landroid/widget/SemHorizontalAbsListView;->-$$Nest$fgetmSemCustomMultiChoiceMode(Landroid/widget/SemHorizontalAbsListView;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method public whitelist onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    iget-object p0, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    invoke-interface {p0, p1, p2}, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public blacklist setWrapped(Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeWrapper;->mWrapped:Landroid/widget/SemHorizontalAbsListView$MultiChoiceModeListener;

    return-void
.end method
