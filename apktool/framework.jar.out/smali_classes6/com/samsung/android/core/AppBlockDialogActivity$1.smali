.class Lcom/samsung/android/core/AppBlockDialogActivity$1;
.super Ljava/lang/Object;
.source "AppBlockDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/core/AppBlockDialogActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/core/AppBlockDialogActivity$1;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "AppJumpBlockTool"

    const-string/jumbo v0, "onDismiss"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/core/AppBlockDialogActivity$1;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-static {p1}, Lcom/samsung/android/core/AppBlockDialogActivity;->-$$Nest$fgetisClickAllow(Lcom/samsung/android/core/AppBlockDialogActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/core/AppBlockDialogActivity$1;->this$0:Lcom/samsung/android/core/AppBlockDialogActivity;

    invoke-virtual {p0}, Lcom/samsung/android/core/AppBlockDialogActivity;->finish()V

    :cond_0
    return-void
.end method
