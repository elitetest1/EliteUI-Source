.class Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;
.super Ljava/lang/Object;
.source "DeviceStateManagerGlobal.java"

# interfaces
.implements Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/devicestate/DeviceStateManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SemFoldStateListener"
.end annotation


# instance fields
.field private blacklist mFolded:Ljava/lang/Boolean;

.field private blacklist mListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

.field private blacklist mTableMode:Ljava/lang/Boolean;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;)Lcom/samsung/android/view/SemWindowManager$FoldStateListener;
    .locals 0

    iget-object p0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/hardware/devicestate/DeviceStateManagerGlobal;Lcom/samsung/android/view/SemWindowManager$FoldStateListener;)V
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    return-void
.end method


# virtual methods
.method public whitelist onDeviceStateChanged(Landroid/hardware/devicestate/DeviceState;)V
    .locals 4

    invoke-virtual {p1}, Landroid/hardware/devicestate/DeviceState;->getIdentifier()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mFolded:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v2, v3, :cond_3

    :cond_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mFolded:Ljava/lang/Boolean;

    iget-object v3, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    invoke-interface {v3, v2}, Lcom/samsung/android/view/SemWindowManager$FoldStateListener;->onFoldStateChanged(Z)V

    :cond_3
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    move v0, v1

    :cond_4
    iget-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mTableMode:Ljava/lang/Boolean;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v0, p1, :cond_5

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mTableMode:Ljava/lang/Boolean;

    iget-object p0, p0, Landroid/hardware/devicestate/DeviceStateManagerGlobal$SemFoldStateListener;->mListener:Lcom/samsung/android/view/SemWindowManager$FoldStateListener;

    invoke-interface {p0, v0}, Lcom/samsung/android/view/SemWindowManager$FoldStateListener;->onTableModeChanged(Z)V

    return-void
.end method
