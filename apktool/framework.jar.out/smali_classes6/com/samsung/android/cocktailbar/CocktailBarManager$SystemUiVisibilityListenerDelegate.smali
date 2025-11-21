.class Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;
.super Lcom/samsung/android/cocktailbar/ISystemUiVisibilityCallback$Stub;
.source "CocktailBarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cocktailbar/CocktailBarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemUiVisibilityListenerDelegate"
.end annotation


# static fields
.field private static final blacklist MSG_SYSTEM_UI_VISIBILITY_CHANGED:I = 0x1


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;)Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;

    return-object p0
.end method

.method public constructor blacklist <init>(Lcom/samsung/android/cocktailbar/CocktailBarManager;Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;Landroid/os/Handler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x10
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/cocktailbar/ISystemUiVisibilityCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;

    if-nez p3, :cond_0

    iget-object p2, p1, Lcom/samsung/android/cocktailbar/CocktailBarManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    :goto_0
    new-instance p3, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate$1;

    invoke-direct {p3, p0, p2, p1}, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate$1;-><init>(Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/cocktailbar/CocktailBarManager;)V

    iput-object p3, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public blacklist getListener()Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;

    return-object p0
.end method

.method public blacklist onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;->mListener:Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListener;

    return-void
.end method

.method public blacklist onSystemUiVisibilityChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/cocktailbar/CocktailBarManager$SystemUiVisibilityListenerDelegate;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
