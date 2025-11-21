.class final Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;
.super Landroid/os/Handler;
.source "FreeformResizeGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/FreeformResizeGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field static final blacklist DISMISS_FREEFORM_RESIZE_GUIDE:I


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuide;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;->this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;->this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->-$$Nest$fputmDismissed(Lcom/samsung/android/multiwindow/FreeformResizeGuide;Z)V

    iget-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;->this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->-$$Nest$fgetmView(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;->this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->-$$Nest$fgetmView(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->dismiss()V

    iget-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;->this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->-$$Nest$fgetmView(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuideView;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;->this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-static {p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->-$$Nest$fgetmWindowManager(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;->this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    invoke-static {v0}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->-$$Nest$fgetmView(Lcom/samsung/android/multiwindow/FreeformResizeGuide;)Lcom/samsung/android/multiwindow/FreeformResizeGuideView;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/multiwindow/FreeformResizeGuide$H;->this$0:Lcom/samsung/android/multiwindow/FreeformResizeGuide;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/samsung/android/multiwindow/FreeformResizeGuide;->-$$Nest$fputmState(Lcom/samsung/android/multiwindow/FreeformResizeGuide;I)V

    return-void
.end method
