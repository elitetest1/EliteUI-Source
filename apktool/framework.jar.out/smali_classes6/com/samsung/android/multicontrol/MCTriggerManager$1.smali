.class Lcom/samsung/android/multicontrol/MCTriggerManager$1;
.super Ljava/lang/Object;
.source "MCTriggerManager.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multicontrol/MCTriggerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/multicontrol/MCTriggerManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/multicontrol/MCTriggerManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager$1;->this$0:Lcom/samsung/android/multicontrol/MCTriggerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .locals 4

    const-string v0, "[onDisplayChanged] desktop mode enabled, displayId="

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager$1;->this$0:Lcom/samsung/android/multicontrol/MCTriggerManager;

    invoke-static {v1, p1}, Lcom/samsung/android/multicontrol/MCTriggerManager;->-$$Nest$misDesktopModeEnabled(Lcom/samsung/android/multicontrol/MCTriggerManager;I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager$1;->this$0:Lcom/samsung/android/multicontrol/MCTriggerManager;

    invoke-static {v1}, Lcom/samsung/android/multicontrol/MCTriggerManager;->-$$Nest$fgetTAG(Lcom/samsung/android/multicontrol/MCTriggerManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager$1;->this$0:Lcom/samsung/android/multicontrol/MCTriggerManager;

    iput p1, v0, Lcom/samsung/android/multicontrol/MCTriggerManager;->DEX_DISPLAY:I

    iget-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager$1;->this$0:Lcom/samsung/android/multicontrol/MCTriggerManager;

    iget-boolean p1, p1, Lcom/samsung/android/multicontrol/MCTriggerManager;->isEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager$1;->this$0:Lcom/samsung/android/multicontrol/MCTriggerManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/samsung/android/multicontrol/MCTriggerManager;->enable(Z)V

    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager$1;->this$0:Lcom/samsung/android/multicontrol/MCTriggerManager;

    iget-object v0, v0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.samsung.android.inputshare.settings.provider"

    const-string v2, "MC_DEX_CHECK"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/content/ContentResolver;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager$1;->this$0:Lcom/samsung/android/multicontrol/MCTriggerManager;

    invoke-static {p0}, Lcom/samsung/android/multicontrol/MCTriggerManager;->-$$Nest$fgetTAG(Lcom/samsung/android/multicontrol/MCTriggerManager;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[onDisplayChanged]"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .locals 3

    const-string v0, "[onDisplayRemoved] displayId="

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager$1;->this$0:Lcom/samsung/android/multicontrol/MCTriggerManager;

    invoke-static {v1}, Lcom/samsung/android/multicontrol/MCTriggerManager;->-$$Nest$fgetTAG(Lcom/samsung/android/multicontrol/MCTriggerManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", DEX_DISPLAY="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager$1;->this$0:Lcom/samsung/android/multicontrol/MCTriggerManager;

    iget v0, v0, Lcom/samsung/android/multicontrol/MCTriggerManager;->DEX_DISPLAY:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager$1;->this$0:Lcom/samsung/android/multicontrol/MCTriggerManager;

    iget v0, v0, Lcom/samsung/android/multicontrol/MCTriggerManager;->DEX_DISPLAY:I

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager$1;->this$0:Lcom/samsung/android/multicontrol/MCTriggerManager;

    const/4 v0, -0x1

    iput v0, p1, Lcom/samsung/android/multicontrol/MCTriggerManager;->DEX_DISPLAY:I

    iget-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager$1;->this$0:Lcom/samsung/android/multicontrol/MCTriggerManager;

    iget-object p1, p1, Lcom/samsung/android/multicontrol/MCTriggerManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "multi_control_enabled"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager$1;->this$0:Lcom/samsung/android/multicontrol/MCTriggerManager;

    invoke-virtual {p1, v1}, Lcom/samsung/android/multicontrol/MCTriggerManager;->enable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager$1;->this$0:Lcom/samsung/android/multicontrol/MCTriggerManager;

    invoke-static {p0}, Lcom/samsung/android/multicontrol/MCTriggerManager;->-$$Nest$fgetTAG(Lcom/samsung/android/multicontrol/MCTriggerManager;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "[onDisplayRemoved]"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
