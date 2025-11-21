.class Lcom/android/internal/app/ChooserActivity$4;
.super Lcom/android/internal/widget/RecyclerView$OnScrollListener;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->setupScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;

.field final synthetic blacklist val$chooserHeaderScrollElevation:F

.field final synthetic blacklist val$defaultElevation:F

.field final synthetic blacklist val$elevatedView:Landroid/view/View;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/view/View;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$4;->val$elevatedView:Landroid/view/View;

    iput p3, p0, Lcom/android/internal/app/ChooserActivity$4;->val$chooserHeaderScrollElevation:F

    iput p4, p0, Lcom/android/internal/app/ChooserActivity$4;->val$defaultElevation:F

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onScrollStateChanged(Lcom/android/internal/widget/RecyclerView;I)V
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {p2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmScrollStatus(Lcom/android/internal/app/ChooserActivity;)I

    move-result p2

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {p2, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmScrollStatus(Lcom/android/internal/app/ChooserActivity;I)V

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {p0, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetHorizontalScrollingEnabled(Lcom/android/internal/app/ChooserActivity;Z)V

    return-void

    :cond_0
    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {p2}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fgetmScrollStatus(Lcom/android/internal/app/ChooserActivity;)I

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {p2, v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$fputmScrollStatus(Lcom/android/internal/app/ChooserActivity;I)V

    iget-object p0, p0, Lcom/android/internal/app/ChooserActivity$4;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {p0, p1}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$msetHorizontalScrollingEnabled(Lcom/android/internal/app/ChooserActivity;Z)V

    :cond_1
    return-void
.end method

.method public blacklist onScrolled(Lcom/android/internal/widget/RecyclerView;II)V
    .locals 0

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getChildCount()I

    move-result p2

    if-lez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getLayoutManager()Lcom/android/internal/widget/RecyclerView$LayoutManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-gez p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$4;->val$elevatedView:Landroid/view/View;

    iget p0, p0, Lcom/android/internal/app/ChooserActivity$4;->val$chooserHeaderScrollElevation:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setElevation(F)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$4;->val$elevatedView:Landroid/view/View;

    iget p0, p0, Lcom/android/internal/app/ChooserActivity$4;->val$defaultElevation:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setElevation(F)V

    return-void
.end method
