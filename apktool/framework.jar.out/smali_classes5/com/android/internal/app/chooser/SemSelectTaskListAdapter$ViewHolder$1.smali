.class Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder$1;
.super Ljava/lang/Object;
.source "SemSelectTaskListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;-><init>(Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;

.field final synthetic blacklist val$this$0:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;)V
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder$1;->this$1:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;

    iput-object p2, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder$1;->val$this$0:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder$1;->this$1:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;

    iget-object p1, p1, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;->this$0:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;

    iget-object v0, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder$1;->this$1:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    iput v0, p1, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->mSelectedItem:I

    iget-object p1, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder$1;->this$1:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;

    iget-object p1, p1, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;->this$0:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;

    invoke-virtual {p1}, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder$1;->this$1:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;

    iget-object p1, p1, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder$1;->this$1:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;

    iget-object p1, p1, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;->this$0:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;

    invoke-static {p1}, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->-$$Nest$fgetmActivityCallback(Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;)Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ActivityCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder$1;->this$1:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;

    iget-object p1, p1, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;->this$0:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;

    invoke-static {p1}, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->-$$Nest$fgetmActivityCallback(Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;)Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ActivityCallback;

    move-result-object p1

    iget-object p0, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder$1;->this$1:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;

    iget-object p0, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;->this$0:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;

    iget p0, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;->mSelectedItem:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, p0, v0, v1}, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ActivityCallback;->onStartSelected(IZZ)V

    :cond_0
    return-void
.end method
