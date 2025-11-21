.class Landroid/graphics/drawable/RippleForeground$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "RippleForeground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/RippleForeground;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/graphics/drawable/RippleForeground;


# direct methods
.method constructor blacklist <init>(Landroid/graphics/drawable/RippleForeground;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/graphics/drawable/RippleForeground$1;->this$0:Landroid/graphics/drawable/RippleForeground;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Landroid/graphics/drawable/RippleForeground$1;->this$0:Landroid/graphics/drawable/RippleForeground;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/graphics/drawable/RippleForeground;->-$$Nest$fputmHasFinishedExit(Landroid/graphics/drawable/RippleForeground;Z)V

    iget-object p1, p0, Landroid/graphics/drawable/RippleForeground$1;->this$0:Landroid/graphics/drawable/RippleForeground;

    invoke-static {p1}, Landroid/graphics/drawable/RippleForeground;->-$$Nest$mpruneHwFinished(Landroid/graphics/drawable/RippleForeground;)V

    iget-object p1, p0, Landroid/graphics/drawable/RippleForeground$1;->this$0:Landroid/graphics/drawable/RippleForeground;

    invoke-static {p1}, Landroid/graphics/drawable/RippleForeground;->-$$Nest$mpruneSwFinished(Landroid/graphics/drawable/RippleForeground;)V

    iget-object p1, p0, Landroid/graphics/drawable/RippleForeground$1;->this$0:Landroid/graphics/drawable/RippleForeground;

    invoke-static {p1}, Landroid/graphics/drawable/RippleForeground;->-$$Nest$fgetmRunningHwAnimators(Landroid/graphics/drawable/RippleForeground;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Landroid/graphics/drawable/RippleForeground$1;->this$0:Landroid/graphics/drawable/RippleForeground;

    invoke-static {p0}, Landroid/graphics/drawable/RippleForeground;->-$$Nest$mclearHwProps(Landroid/graphics/drawable/RippleForeground;)V

    :cond_0
    return-void
.end method
