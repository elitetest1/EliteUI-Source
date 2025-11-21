.class Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;
.super Lcom/android/internal/widget/RecyclerView$Adapter;
.source "ChooserTargetActionsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserTargetActionsDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VHAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/widget/RecyclerView$Adapter<",
        "Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;",
        ">;"
    }
.end annotation


# instance fields
.field blacklist mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserTargetActionsDialogFragment;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserTargetActionsDialogFragment;Ljava/util/List;)V
    .locals 0
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/CharSequence;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;->this$0:Lcom/android/internal/app/ChooserTargetActionsDialogFragment;

    invoke-direct {p0}, Lcom/android/internal/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;->mItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist getItemCount()I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public blacklist onBindViewHolder(Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;->mItems:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    invoke-virtual {p1, p0, p2}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;->bind(Landroid/util/Pair;I)V

    return-void
.end method

.method public bridge synthetic blacklist onBindViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p1, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;->onBindViewHolder(Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;I)V

    return-void
.end method

.method public blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;
    .locals 3

    new-instance p2, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;

    iget-object p0, p0, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;->this$0:Lcom/android/internal/app/ChooserTargetActionsDialogFragment;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x109006a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;-><init>(Lcom/android/internal/app/ChooserTargetActionsDialogFragment;Landroid/view/View;)V

    return-object p2
.end method

.method public bridge synthetic blacklist onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VHAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/internal/app/ChooserTargetActionsDialogFragment$VH;

    move-result-object p0

    return-object p0
.end method
