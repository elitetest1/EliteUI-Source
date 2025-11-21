.class Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->loadViewsIntoGroup(Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;)Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

.field final synthetic blacklist val$column:I

.field final synthetic blacklist val$holder:Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;->val$holder:Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    iput p3, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;->val$column:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;

    iget-object p1, p1, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;->val$holder:Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;

    iget p0, p0, Lcom/android/internal/app/ChooserActivity$ChooserGridAdapter$2;->val$column:I

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ChooserActivity$ItemGroupViewHolder;->getItemIndex(I)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/internal/app/ChooserActivity;->startSelected(IZZ)V

    return-void
.end method
