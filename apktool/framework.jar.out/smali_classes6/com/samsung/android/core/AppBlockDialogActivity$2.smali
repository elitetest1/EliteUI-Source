.class Lcom/samsung/android/core/AppBlockDialogActivity$2;
.super Ljava/lang/Object;
.source "AppBlockDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/core/AppBlockDialogActivity;->showBlockDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

.field final synthetic blacklist val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/core/AppBlockDialogActivity;Landroid/widget/CheckBox;)V
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

    iput-object p1, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    iput-object p2, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "onClickAllow,requestCode="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {p2}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetrequestCode(Lcom/samsung/android/core/AppBlockDialogActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppJumpBlockTool"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fputisClickAllow(Lcom/samsung/android/core/AppBlockDialogActivity;Z)V

    iget-object p1, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {p1}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetblockedAppList(Lcom/samsung/android/core/AppBlockDialogActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;

    iget-object v2, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetalwaysAllowPackageNameList(Lcom/samsung/android/core/AppBlockDialogActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v1, v1, Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {p1}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetsourceAppInfo(Lcom/samsung/android/core/AppBlockDialogActivity;)Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/samsung/android/core/AppJumpBlockTool$AppInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetalwaysAllowPackageNameList(Lcom/samsung/android/core/AppBlockDialogActivity;)Ljava/util/List;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/samsung/android/core/AppJumpBlockTool;->addAlwaysAllowList(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v1}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgettargetIntents(Lcom/samsung/android/core/AppBlockDialogActivity;)[Landroid/content/Intent;

    move-result-object v1

    array-length v1, v1

    if-le v1, v0, :cond_2

    const-string v0, "launch from Block Dialog for multiple intents!"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgettargetIntents(Lcom/samsung/android/core/AppBlockDialogActivity;)[Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v2}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetoptions(Lcom/samsung/android/core/AppBlockDialogActivity;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/core/AppBlockDialogActivity;->startActivities([Landroid/content/Intent;Landroid/os/Bundle;)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetmCallingUid(Lcom/samsung/android/core/AppBlockDialogActivity;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launch from Block Dialog for startActivity!, callingUserId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",mUserId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetmUserId(Lcom/samsung/android/core/AppBlockDialogActivity;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgettargetIntents(Lcom/samsung/android/core/AppBlockDialogActivity;)[Landroid/content/Intent;

    move-result-object v0

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v1}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetmUserId(Lcom/samsung/android/core/AppBlockDialogActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/app/chooser/TargetInfo;->prepareIntentForCrossProfileLaunch(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v0}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgettargetIntents(Lcom/samsung/android/core/AppBlockDialogActivity;)[Landroid/content/Intent;

    move-result-object v0

    aget-object v0, v0, p1

    const/high16 v1, 0x3000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getExtendedFlags()I

    move-result v1

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->removeExtendedFlags(I)V

    const-string/jumbo v1, "removeExtendedFlags EXTENDED_FLAG_MISSING_CREATOR_OR_INVALID_TOKEN"

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v0}, Lcom/android/internal/app/chooser/TargetInfo;->refreshIntentCreatorToken(Landroid/content/Intent;)V

    const-string/jumbo v1, "refreshIntentCreatorToken"

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v1}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetoptions(Lcom/samsung/android/core/AppBlockDialogActivity;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v3}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetmUserId(Lcom/samsung/android/core/AppBlockDialogActivity;)I

    move-result v3

    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/samsung/android/core/AppBlockDialogActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "launch fail! try launch by UserHandle.USER_OWNER"

    invoke-static {p2, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {v1}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetoptions(Lcom/samsung/android/core/AppBlockDialogActivity;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p1, p1}, Lcom/samsung/android/core/AppBlockDialogActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {p0}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$msendAllowResult(Lcom/samsung/android/core/AppBlockDialogActivity;)V

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "App jump block dialog launch fail!"

    invoke-static {p2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p2, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Launch fail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iget-object p0, p0, Lcom/samsung/android/core/AppBlockDialogActivity$2;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    const-string p1, "Fail"

    invoke-static {p0, p1}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$msendResult(Lcom/samsung/android/core/AppBlockDialogActivity;Ljava/lang/String;)V

    return-void
.end method
