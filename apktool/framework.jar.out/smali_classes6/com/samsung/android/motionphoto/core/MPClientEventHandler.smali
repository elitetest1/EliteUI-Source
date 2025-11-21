.class public Lcom/samsung/android/motionphoto/core/MPClientEventHandler;
.super Landroid/os/Handler;
.source "MPClientEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnInfoListener;,
        Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnErrorListener;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MPClientEventHandler"


# instance fields
.field private blacklist mOnErrorListener:Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnErrorListener;

.field private blacklist mOnInfoListener:Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnInfoListener;

.field private blacklist mToken:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;->TAG:Ljava/lang/String;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "handleMessage: what=%d, arg1=%d, arg2=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "infolistener: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;->mOnInfoListener:Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnInfoListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "errorlistener: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;->mOnErrorListener:Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnErrorListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xbb9

    if-eq v1, v2, :cond_1

    const/16 v2, 0xbba

    if-eq v1, v2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown message type"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;->mOnErrorListener:Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnErrorListener;

    if-eqz v0, :cond_2

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget p0, p0, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;->mToken:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnErrorListener;->onError(IIILjava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;->mOnInfoListener:Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnInfoListener;

    if-eqz v0, :cond_2

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget p0, p0, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;->mToken:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p0, p1}, Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnInfoListener;->onInfo(IIILjava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public blacklist setOnErrorListener(Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;->mOnErrorListener:Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnErrorListener;

    return-void
.end method

.method public blacklist setOnInfoListener(Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;->mOnInfoListener:Lcom/samsung/android/motionphoto/core/MPClientEventHandler$OnInfoListener;

    return-void
.end method

.method public blacklist setToken(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/motionphoto/core/MPClientEventHandler;->mToken:I

    return-void
.end method
