.class Landroid/app/Activity$1;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Landroid/view/Window$WindowControllerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/Activity;


# direct methods
.method constructor blacklist <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist enterPictureInPictureModeIfPossible()V
    .locals 1

    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    iget-object v0, v0, Landroid/app/Activity;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->enterPictureInPictureMode()V

    :cond_0
    return-void
.end method

.method public blacklist isTaskRoot()Z
    .locals 2

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object p0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {p0}, Landroid/app/Activity;->-$$Nest$fgetmToken(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/app/ActivityClient;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result p0

    if-ltz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist toggleFreeformWindowingMode()V
    .locals 1

    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v0

    iget-object p0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {p0}, Landroid/app/Activity;->-$$Nest$fgetmToken(Landroid/app/Activity;)Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/ActivityClient;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    return-void
.end method

.method public blacklist updateNavigationBarColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    iget-object p0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {p0}, Landroid/app/Activity;->-$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method public blacklist updateStatusBarColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    iget-object p0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {p0}, Landroid/app/Activity;->-$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method

.method public blacklist updateSystemBarsAppearance(I)V
    .locals 1

    iget-object v0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {v0}, Landroid/app/Activity;->-$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->setSystemBarsAppearance(I)V

    iget-object p0, p0, Landroid/app/Activity$1;->this$0:Landroid/app/Activity;

    invoke-static {p0}, Landroid/app/Activity;->-$$Nest$fgetmTaskDescription(Landroid/app/Activity;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    return-void
.end method
