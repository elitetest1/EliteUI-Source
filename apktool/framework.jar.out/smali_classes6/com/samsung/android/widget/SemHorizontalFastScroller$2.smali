.class Lcom/samsung/android/widget/SemHorizontalFastScroller$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SemHorizontalFastScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemHorizontalFastScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemHorizontalFastScroller;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/widget/SemHorizontalFastScroller;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller$2;->this$0:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemHorizontalFastScroller$2;->this$0:Lcom/samsung/android/widget/SemHorizontalFastScroller;

    invoke-static {p0}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->-$$Nest$fgetmShowingPrimary(Lcom/samsung/android/widget/SemHorizontalFastScroller;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/widget/SemHorizontalFastScroller;->-$$Nest$fputmShowingPrimary(Lcom/samsung/android/widget/SemHorizontalFastScroller;Z)V

    return-void
.end method
