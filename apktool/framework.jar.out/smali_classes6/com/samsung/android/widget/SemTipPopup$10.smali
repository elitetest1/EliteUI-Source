.class Lcom/samsung/android/widget/SemTipPopup$10;
.super Ljava/lang/Object;
.source "SemTipPopup.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemTipPopup;->animateBounce()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field blacklist count:I

.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemTipPopup;

.field final synthetic blacklist val$animationSet:Landroid/view/animation/AnimationSet;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/widget/SemTipPopup;Landroid/view/animation/AnimationSet;)V
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

    iput-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$10;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    iput-object p2, p0, Lcom/samsung/android/widget/SemTipPopup$10;->val$animationSet:Landroid/view/animation/AnimationSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/samsung/android/widget/SemTipPopup$10;->count:I

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$10;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "repeat count "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/widget/SemTipPopup$10;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$mdebugLog(Lcom/samsung/android/widget/SemTipPopup;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/widget/SemTipPopup$10;->this$0:Lcom/samsung/android/widget/SemTipPopup;

    invoke-static {p1}, Lcom/samsung/android/widget/SemTipPopup;->-$$Nest$fgetmBubbleView(Lcom/samsung/android/widget/SemTipPopup;)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/widget/SemTipPopup$10;->val$animationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {p1, p0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public whitelist onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public whitelist onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    iget p1, p0, Lcom/samsung/android/widget/SemTipPopup$10;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/widget/SemTipPopup$10;->count:I

    return-void
.end method
