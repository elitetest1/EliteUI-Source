.class Lcom/samsung/android/ims/SemImsManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SemImsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/ims/SemImsManager;->connectService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/ims/SemImsManager;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/ims/SemImsManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "semImsManager["

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-static {v1}, Lcom/samsung/android/ims/SemImsManager;->-$$Nest$fgetmPhoneId(Lcom/samsung/android/ims/SemImsManager;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceive "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.sec.ims.imsmanager.RESTART"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-static {p1}, Lcom/samsung/android/ims/SemImsManager;->-$$Nest$mgetImsService(Lcom/samsung/android/ims/SemImsManager;)Lcom/samsung/android/ims/SemImsService;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-static {p0}, Lcom/samsung/android/ims/SemImsManager;->-$$Nest$fgetmPhoneId(Lcom/samsung/android/ims/SemImsManager;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImsService not found, this should not happen!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-static {p1}, Lcom/samsung/android/ims/SemImsManager;->-$$Nest$mgetImsService(Lcom/samsung/android/ims/SemImsManager;)Lcom/samsung/android/ims/SemImsService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/ims/SemImsManager;->-$$Nest$mregisterPreviousListeners(Lcom/samsung/android/ims/SemImsManager;Lcom/samsung/android/ims/SemImsService;)V

    iget-object p1, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-static {p1}, Lcom/samsung/android/ims/SemImsManager;->-$$Nest$fgetmListener(Lcom/samsung/android/ims/SemImsManager;)Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/ims/SemImsManager$1;->this$0:Lcom/samsung/android/ims/SemImsManager;

    invoke-static {p0}, Lcom/samsung/android/ims/SemImsManager;->-$$Nest$fgetmListener(Lcom/samsung/android/ims/SemImsManager;)Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/ims/SemImsManager$ImsServiceConnectionListener;->onConnected()V

    :cond_1
    return-void
.end method
