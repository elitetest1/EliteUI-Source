.class Landroid/widget/Editor$HandleView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor$HandleView;->restore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/widget/Editor$HandleView;


# direct methods
.method constructor blacklist <init>(Landroid/widget/Editor$HandleView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object p1, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/widget/Editor$HandleView;->-$$Nest$fputmIsRestoring(Landroid/widget/Editor$HandleView;Z)V

    iget-object p1, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {p1}, Landroid/widget/Editor$HandleView;->getCurrentCursorOffset()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZZ)V

    iget-object p1, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    invoke-static {p1}, Landroid/widget/Editor$HandleView;->-$$Nest$mshouldShow(Landroid/widget/Editor$HandleView;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {p1}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {p1}, Landroid/widget/Editor$HandleView;->requestLayout()V

    iget-object p1, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {p1}, Landroid/widget/Editor$HandleView;->invalidate()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {p1}, Landroid/widget/Editor$HandleView;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {p1}, Landroid/widget/Editor$HandleView;->dismiss()V

    :cond_1
    :goto_0
    iget-object p1, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    iget-object p1, p1, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result p1

    iget-object v1, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v1, v1, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    if-le p1, v1, :cond_2

    iget-object p1, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    iget-object p1, p1, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {p1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v1, v1, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v1}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iget-object v2, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    iget-object v2, v2, Landroid/widget/Editor$HandleView;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_2
    iget-object p0, p0, Landroid/widget/Editor$HandleView$4;->this$1:Landroid/widget/Editor$HandleView;

    invoke-virtual {p0, v0}, Landroid/widget/Editor$HandleView;->updateDrawable(Z)V

    return-void
.end method
