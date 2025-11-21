.class final Landroid/hardware/display/DisplayManagerGlobal$HbmBrightnessCallback;
.super Landroid/hardware/display/IHbmBrightnessCallback$Stub;
.source "DisplayManagerGlobal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerGlobal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HbmBrightnessCallback"
.end annotation


# instance fields
.field blacklist mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/hardware/display/DisplayManager$DisplayHbmBrightnessListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Landroid/hardware/display/DisplayManagerGlobal;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    invoke-direct {p0}, Landroid/hardware/display/IHbmBrightnessCallback$Stub;-><init>()V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroid/hardware/display/DisplayManagerGlobal$HbmBrightnessCallback;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/hardware/display/DisplayManagerGlobal;Landroid/hardware/display/DisplayManagerGlobal-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/hardware/display/DisplayManagerGlobal$HbmBrightnessCallback;-><init>(Landroid/hardware/display/DisplayManagerGlobal;)V

    return-void
.end method


# virtual methods
.method blacklist addDisplayHbmBrightnessListener(Landroid/hardware/display/DisplayManager$DisplayHbmBrightnessListener;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManagerGlobal$HbmBrightnessCallback;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist onChanged(IZ)V
    .locals 1

    iget-object p0, p0, Landroid/hardware/display/DisplayManagerGlobal$HbmBrightnessCallback;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager$DisplayHbmBrightnessListener;

    invoke-interface {v0, p1, p2}, Landroid/hardware/display/DisplayManager$DisplayHbmBrightnessListener;->onChanged(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method blacklist removeDisplayHbmBrightnessListener(Landroid/hardware/display/DisplayManager$DisplayHbmBrightnessListener;)V
    .locals 0

    iget-object p0, p0, Landroid/hardware/display/DisplayManagerGlobal$HbmBrightnessCallback;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
