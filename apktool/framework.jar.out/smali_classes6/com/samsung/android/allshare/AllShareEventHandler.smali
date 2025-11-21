.class abstract Lcom/samsung/android/allshare/AllShareEventHandler;
.super Landroid/os/Handler;
.source "AllShareEventHandler.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AllShareEventHandler"


# direct methods
.method protected constructor blacklist <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method abstract blacklist handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "EVT_MSG_KEY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/sec/android/allshare/iface/CVMessage;

    invoke-virtual {p0, p1}, Lcom/samsung/android/allshare/AllShareEventHandler;->handleEventMessage(Lcom/sec/android/allshare/iface/CVMessage;)V

    return-void
.end method
