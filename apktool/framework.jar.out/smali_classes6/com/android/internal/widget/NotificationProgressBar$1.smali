.class Lcom/android/internal/widget/NotificationProgressBar$1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "NotificationProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/NotificationProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/NotificationProgressBar;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/NotificationProgressBar;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/NotificationProgressBar$1;->this$0:Lcom/android/internal/widget/NotificationProgressBar;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lcom/android/internal/widget/NotificationProgressBar$1;->this$0:Lcom/android/internal/widget/NotificationProgressBar;

    invoke-static {p0}, Lcom/android/internal/widget/NotificationProgressBar;->-$$Nest$mshouldLoopIndeterminateAnimation(Lcom/android/internal/widget/NotificationProgressBar;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    return-void
.end method
