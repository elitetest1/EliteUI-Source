.class Lcom/android/internal/widget/ToolbarWidgetWrapper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ToolbarWidgetWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ToolbarWidgetWrapper;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mCanceled:Z

.field final synthetic blacklist this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/ToolbarWidgetWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public whitelist onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    return-void
.end method

.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-boolean p1, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;->mCanceled:Z

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/internal/widget/ToolbarWidgetWrapper$2;->this$0:Lcom/android/internal/widget/ToolbarWidgetWrapper;

    invoke-static {p0}, Lcom/android/internal/widget/ToolbarWidgetWrapper;->-$$Nest$fgetmToolbar(Lcom/android/internal/widget/ToolbarWidgetWrapper;)Landroid/widget/Toolbar;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setVisibility(I)V

    :cond_0
    return-void
.end method
