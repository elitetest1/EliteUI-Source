.class final Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;
.super Landroid/os/Handler;
.source "InputManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/input/InputManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnPointerIconChangedListenerDelegate"
.end annotation


# instance fields
.field public final blacklist mListener:Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;Landroid/os/Handler;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    :goto_0
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/view/PointerIcon;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/PointerIcon;

    goto :goto_0

    :cond_1
    move-object p1, v2

    :goto_0
    if-nez p1, :cond_2

    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;

    const/4 p1, 0x0

    invoke-interface {p0, v0, v2, p1, p1}, Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;->onPointerIconChanged(ILandroid/graphics/Bitmap;FF)V

    return-void

    :cond_2
    iget-object p0, p0, Landroid/hardware/input/InputManagerGlobal$OnPointerIconChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;

    invoke-virtual {p1}, Landroid/view/PointerIcon;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/PointerIcon;->getHotSpotX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/PointerIcon;->getHotSpotY()F

    move-result p1

    invoke-interface {p0, v0, v1, v2, p1}, Landroid/hardware/input/InputManager$SemOnPointerIconChangedListener;->onPointerIconChanged(ILandroid/graphics/Bitmap;FF)V

    return-void
.end method
