.class Lcom/android/internal/widget/RecyclerView$6;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Lcom/android/internal/widget/AdapterHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/RecyclerView;->initAdapterManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/RecyclerView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/RecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist dispatchUpdate(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .locals 3

    iget v0, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->cmd:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, p0, v2, p1, v1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsMoved(Lcom/android/internal/widget/RecyclerView;III)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget v2, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    iget-object p1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->payload:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1, v2, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsUpdated(Lcom/android/internal/widget/RecyclerView;IILjava/lang/Object;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsRemoved(Lcom/android/internal/widget/RecyclerView;II)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object v0, v0, Lcom/android/internal/widget/RecyclerView;->mLayout:Lcom/android/internal/widget/RecyclerView$LayoutManager;

    iget-object p0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget v1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->positionStart:I

    iget p1, p1, Lcom/android/internal/widget/AdapterHelper$UpdateOp;->itemCount:I

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->onItemsAdded(Lcom/android/internal/widget/RecyclerView;II)V

    return-void
.end method

.method public blacklist findViewHolder(I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/RecyclerView;->findViewHolderForPosition(IZ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-object v0

    :cond_1
    return-object p1
.end method

.method public blacklist markViewHoldersUpdated(IILjava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/RecyclerView;->viewRangeUpdate(IILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView;->mItemsChanged:Z

    return-void
.end method

.method public blacklist offsetPositionsForAdd(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->offsetPositionRecordsForInsert(II)V

    iget-object p0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public blacklist offsetPositionsForMove(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/RecyclerView;->offsetPositionRecordsForMove(II)V

    iget-object p0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public blacklist offsetPositionsForRemovingInvisible(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    iget-object p1, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iput-boolean v1, p1, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    iget-object p0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget p1, p0, Lcom/android/internal/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/android/internal/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    return-void
.end method

.method public blacklist offsetPositionsForRemovingLaidOutOrNewView(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/widget/RecyclerView;->offsetPositionRecordsForRemove(IIZ)V

    iget-object p0, p0, Lcom/android/internal/widget/RecyclerView$6;->this$0:Lcom/android/internal/widget/RecyclerView;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    return-void
.end method

.method public blacklist onDispatchFirstPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$6;->dispatchUpdate(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method

.method public blacklist onDispatchSecondPass(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/RecyclerView$6;->dispatchUpdate(Lcom/android/internal/widget/AdapterHelper$UpdateOp;)V

    return-void
.end method
