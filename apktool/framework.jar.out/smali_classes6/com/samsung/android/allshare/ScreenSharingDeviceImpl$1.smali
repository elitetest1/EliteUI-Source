.class Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$1;
.super Lcom/samsung/android/allshare/AllShareEventHandler;
.source "ScreenSharingDeviceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$1;->this$0:Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;

    invoke-direct {p0, p2}, Lcom/samsung/android/allshare/AllShareEventHandler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public blacklist handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
    .locals 3

    const-string v0, ""

    const-string v1, "ScreenSharingDeviceImpl"

    sget-object v2, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/allshare/iface/CVMessage;->getBundle()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "BUNDLE_ENUM_ERROR"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/allshare/ERROR;->stringToEnum(Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;

    move-result-object p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/allshare/ERROR;->FAIL:Lcom/samsung/android/allshare/ERROR;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl$1;->this$0:Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;

    invoke-static {p0}, Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;->-$$Nest$fgetmUPnPDeviceEventListener(Lcom/samsung/android/allshare/ScreenSharingDeviceImpl;)Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingEventListener;

    move-result-object p0

    invoke-interface {p0, v0, v0, p1}, Lcom/samsung/android/allshare/ScreenSharingDevice$IScreenSharingEventListener;->onEventReceived(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/allshare/ERROR;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string/jumbo p1, "mEventHandler.handleEventMessage Error"

    invoke-static {v1, p1, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_0

    :catch_1
    const-string/jumbo p0, "mEventHandler.handleEventMessage Exception"

    invoke-static {v1, p0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
