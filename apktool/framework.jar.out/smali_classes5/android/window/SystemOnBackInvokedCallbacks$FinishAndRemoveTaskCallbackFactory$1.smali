.class Landroid/window/SystemOnBackInvokedCallbacks$FinishAndRemoveTaskCallbackFactory$1;
.super Ljava/lang/Object;
.source "SystemOnBackInvokedCallbacks.java"

# interfaces
.implements Landroid/window/SystemOverrideOnBackInvokedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/window/SystemOnBackInvokedCallbacks$FinishAndRemoveTaskCallbackFactory;->createCallback(Landroid/app/Activity;)Landroid/window/SystemOverrideOnBackInvokedCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$activityRef:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor blacklist <init>(Landroid/window/SystemOnBackInvokedCallbacks$FinishAndRemoveTaskCallbackFactory;Ljava/lang/ref/WeakReference;)V
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

    iput-object p2, p0, Landroid/window/SystemOnBackInvokedCallbacks$FinishAndRemoveTaskCallbackFactory$1;->val$activityRef:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBackInvoked()V
    .locals 1

    iget-object v0, p0, Landroid/window/SystemOnBackInvokedCallbacks$FinishAndRemoveTaskCallbackFactory$1;->val$activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/window/SystemOnBackInvokedCallbacks$FinishAndRemoveTaskCallbackFactory$1;->val$activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    :cond_0
    return-void
.end method

.method public blacklist overrideBehavior()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
