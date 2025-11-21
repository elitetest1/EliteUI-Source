.class final Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;
.super Landroid/os/Handler;
.source "IAFDServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/IAFDServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/sec/android/iaft/IAFDServiceImpl;


# direct methods
.method public constructor blacklist <init>(Lcom/sec/android/iaft/IAFDServiceImpl;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    const/4 v2, 0x5

    const-string v3, "IAFDServiceImpl"

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5

    const/4 v5, 0x2

    if-eq v0, v5, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-static {p0}, Lcom/sec/android/iaft/IAFDServiceImpl;->-$$Nest$fgetmIAFDGetHotfixDataService(Lcom/sec/android/iaft/IAFDServiceImpl;)Lcom/sec/android/iaft/IAFDSocketFdServer;

    move-result-object p0

    const-string v0, "hotfixdata"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/android/iaft/IAFDSocketFdServer;->getDataFromClient(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "CMD_TYPE_GETUPDATESTATUS_RESULT"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-static {p0, p1, v4}, Lcom/sec/android/iaft/IAFDServiceImpl;->-$$Nest$mIAFDstartApp(Lcom/sec/android/iaft/IAFDServiceImpl;Landroid/os/Bundle;Z)Z

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "CMD_TYPE_GETUPDATESTATUS"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-static {p0, p1}, Lcom/sec/android/iaft/IAFDServiceImpl;->-$$Nest$mcheckUpdate(Lcom/sec/android/iaft/IAFDServiceImpl;Landroid/os/Bundle;)V

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-static {v0}, Lcom/sec/android/iaft/IAFDServiceImpl;->-$$Nest$fgetmIAFDRepair(Lcom/sec/android/iaft/IAFDServiceImpl;)Lcom/sec/android/iaft/IAFDRepair;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-static {v1}, Lcom/sec/android/iaft/IAFDServiceImpl;->-$$Nest$fgetmContext(Lcom/sec/android/iaft/IAFDServiceImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/iaft/IAFDRepair;->repairHandle(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v0

    const-string/jumbo v1, "repairTrigAPP"

    const-string/jumbo v2, "vocApp"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "OneKeyRepairMode"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_4

    const-string/jumbo v1, "voc://view/faq?app=iafd"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string/jumbo p1, "repairResult"

    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-static {p0}, Lcom/sec/android/iaft/IAFDServiceImpl;->-$$Nest$fgetmContext(Lcom/sec/android/iaft/IAFDServiceImpl;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_0
    return-void

    :cond_5
    const-string v0, "CMD_TYPE_START"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "CheckUpdateFlag"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    iput v2, p1, Landroid/os/Message;->what:I

    goto :goto_1

    :cond_6
    const-string v2, "hasUpdate"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput v1, p1, Landroid/os/Message;->what:I

    :goto_1
    iget-object p0, p0, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;->this$0:Lcom/sec/android/iaft/IAFDServiceImpl;

    invoke-static {p0}, Lcom/sec/android/iaft/IAFDServiceImpl;->-$$Nest$fgetmHandler(Lcom/sec/android/iaft/IAFDServiceImpl;)Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/android/iaft/IAFDServiceImpl$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
