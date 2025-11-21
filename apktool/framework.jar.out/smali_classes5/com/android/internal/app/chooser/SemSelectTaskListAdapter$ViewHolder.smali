.class public Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;
.super Lcom/android/internal/widget/RecyclerView$ViewHolder;
.source "SemSelectTaskListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public blacklist radioButton:Landroid/widget/RadioButton;

.field public blacklist textView:Landroid/widget/TextView;

.field final synthetic blacklist this$0:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;->this$0:Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;

    invoke-direct {p0, p2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x10205d2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    const v0, 0x10205d3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    new-instance v0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder$1;-><init>(Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;Lcom/android/internal/app/chooser/SemSelectTaskListAdapter;)V

    iget-object p0, p0, Lcom/android/internal/app/chooser/SemSelectTaskListAdapter$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
