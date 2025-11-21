.class Landroid/transition/ChangeText$6;
.super Landroid/transition/TransitionListenerAdapter;
.source "ChangeText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/transition/ChangeText;->createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist mPausedColor:I

.field final synthetic blacklist this$0:Landroid/transition/ChangeText;

.field final synthetic blacklist val$endColor:I

.field final synthetic blacklist val$endSelectionEnd:I

.field final synthetic blacklist val$endSelectionStart:I

.field final synthetic blacklist val$endText:Ljava/lang/CharSequence;

.field final synthetic blacklist val$startSelectionEnd:I

.field final synthetic blacklist val$startSelectionStart:I

.field final synthetic blacklist val$startText:Ljava/lang/CharSequence;

.field final synthetic blacklist val$view:Landroid/widget/TextView;


# direct methods
.method constructor blacklist <init>(Landroid/transition/ChangeText;Landroid/widget/TextView;Ljava/lang/CharSequence;IIILjava/lang/CharSequence;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    iput-object p2, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    iput-object p3, p0, Landroid/transition/ChangeText$6;->val$endText:Ljava/lang/CharSequence;

    iput p4, p0, Landroid/transition/ChangeText$6;->val$endSelectionStart:I

    iput p5, p0, Landroid/transition/ChangeText$6;->val$endSelectionEnd:I

    iput p6, p0, Landroid/transition/ChangeText$6;->val$endColor:I

    iput-object p7, p0, Landroid/transition/ChangeText$6;->val$startText:Ljava/lang/CharSequence;

    iput p8, p0, Landroid/transition/ChangeText$6;->val$startSelectionStart:I

    iput p9, p0, Landroid/transition/ChangeText$6;->val$startSelectionEnd:I

    invoke-direct {p0}, Landroid/transition/TransitionListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Landroid/transition/ChangeText$6;->mPausedColor:I

    return-void
.end method


# virtual methods
.method public whitelist onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/transition/Transition;->removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    return-void
.end method

.method public whitelist onTransitionPause(Landroid/transition/Transition;)V
    .locals 3

    iget-object p1, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    invoke-static {p1}, Landroid/transition/ChangeText;->-$$Nest$fgetmChangeBehavior(Landroid/transition/ChangeText;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/transition/ChangeText$6;->val$endText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    check-cast p1, Landroid/widget/EditText;

    iget v1, p0, Landroid/transition/ChangeText$6;->val$endSelectionStart:I

    iget v2, p0, Landroid/transition/ChangeText$6;->val$endSelectionEnd:I

    invoke-static {v0, p1, v1, v2}, Landroid/transition/ChangeText;->-$$Nest$msetSelection(Landroid/transition/ChangeText;Landroid/widget/EditText;II)V

    :cond_0
    iget-object p1, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    invoke-static {p1}, Landroid/transition/ChangeText;->-$$Nest$fgetmChangeBehavior(Landroid/transition/ChangeText;)I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    iput p1, p0, Landroid/transition/ChangeText$6;->mPausedColor:I

    iget-object p1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    iget p0, p0, Landroid/transition/ChangeText$6;->val$endColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public whitelist onTransitionResume(Landroid/transition/Transition;)V
    .locals 3

    iget-object p1, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    invoke-static {p1}, Landroid/transition/ChangeText;->-$$Nest$fgetmChangeBehavior(Landroid/transition/ChangeText;)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    iget-object v0, p0, Landroid/transition/ChangeText$6;->val$startText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    check-cast p1, Landroid/widget/EditText;

    iget v1, p0, Landroid/transition/ChangeText$6;->val$startSelectionStart:I

    iget v2, p0, Landroid/transition/ChangeText$6;->val$startSelectionEnd:I

    invoke-static {v0, p1, v1, v2}, Landroid/transition/ChangeText;->-$$Nest$msetSelection(Landroid/transition/ChangeText;Landroid/widget/EditText;II)V

    :cond_0
    iget-object p1, p0, Landroid/transition/ChangeText$6;->this$0:Landroid/transition/ChangeText;

    invoke-static {p1}, Landroid/transition/ChangeText;->-$$Nest$fgetmChangeBehavior(Landroid/transition/ChangeText;)I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Landroid/transition/ChangeText$6;->val$view:Landroid/widget/TextView;

    iget p0, p0, Landroid/transition/ChangeText$6;->mPausedColor:I

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method
