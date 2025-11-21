.class public Lcom/samsung/android/multicontrol/MCTriggerManager;
.super Ljava/lang/Object;
.source "MCTriggerManager.java"


# instance fields
.field private final blacklist AUTHORITY:Ljava/lang/String;

.field blacklist DEX_DISPLAY:I

.field private final blacklist FLAG_EXTERNAL_DESKTOP_WINDOWING:I

.field private final blacklist MC_METHOD:Ljava/lang/String;

.field private final blacklist TAG:Ljava/lang/String;

.field public final blacklist TAG_PREFIX:Ljava/lang/String;

.field blacklist isEnabled:Z

.field blacklist mContext:Landroid/content/Context;

.field blacklist mDexInputChannel:Landroid/view/InputChannel;

.field blacklist mDexInputMonitor:Landroid/view/InputMonitor;

.field blacklist mDexInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

.field private final blacklist mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private blacklist mDisplayManager:Landroid/hardware/display/DisplayManager;

.field blacklist mInputChannel:Landroid/view/InputChannel;

.field blacklist mInputMonitor:Landroid/view/InputMonitor;

.field blacklist mInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

.field blacklist mLooper:Landroid/os/Looper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetTAG(Lcom/samsung/android/multicontrol/MCTriggerManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misDesktopModeEnabled(Lcom/samsung/android/multicontrol/MCTriggerManager;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/multicontrol/MCTriggerManager;->isDesktopModeEnabled(I)Z

    move-result p0

    return p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "MultiControl@"

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG_PREFIX:Ljava/lang/String;

    const-string v0, "MultiControl@MCTriggerManager"

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->isEnabled:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->DEX_DISPLAY:I

    const/high16 v0, 0x20000

    iput v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->FLAG_EXTERNAL_DESKTOP_WINDOWING:I

    const-string v0, "com.samsung.android.inputshare.settings.provider"

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->AUTHORITY:Ljava/lang/String;

    const-string v0, "MC_DEX_CHECK"

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->MC_METHOD:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/multicontrol/MCTriggerManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/multicontrol/MCTriggerManager$1;-><init>(Lcom/samsung/android/multicontrol/MCTriggerManager;)V

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iput-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mLooper:Landroid/os/Looper;

    const-string p2, "display"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method private blacklist isDesktopModeEnabled(I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/Display;->getFlags()I

    move-result p0

    const/high16 p1, 0x20000

    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist dump()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mInputChannel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mInputReceiver="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mDexInputChannel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mDexInputReceiver="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist enable(Z)V
    .locals 7

    const-string v0, "input"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->isEnabled:Z

    if-eqz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    const-string v2, "[enable] true"

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->isEnabled:Z

    iget-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    const-string v2, "MultiControl_0"

    invoke-virtual {p1, v2, v1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {p1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputChannel:Landroid/view/InputChannel;

    new-instance v1, Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    iget-object v2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputMonitor:Landroid/view/InputMonitor;

    iget-object v5, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputChannel:Landroid/view/InputChannel;

    iget-object v6, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mLooper:Landroid/os/Looper;

    const/4 v3, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/multicontrol/MCInputEventReceiver;-><init>(Landroid/content/Context;ILandroid/view/InputMonitor;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    iget p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->DEX_DISPLAY:I

    invoke-direct {p0, p1}, Lcom/samsung/android/multicontrol/MCTriggerManager;->isDesktopModeEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mContext:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->DEX_DISPLAY:I

    invoke-virtual {p1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    const-string v0, "MultiControl_2"

    iget v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->DEX_DISPLAY:I

    invoke-virtual {p1, v0, v1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {p1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputChannel:Landroid/view/InputChannel;

    new-instance v0, Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    iget-object v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->DEX_DISPLAY:I

    iget-object v3, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputMonitor:Landroid/view/InputMonitor;

    iget-object v4, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputChannel:Landroid/view/InputChannel;

    iget-object v5, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mLooper:Landroid/os/Looper;

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/multicontrol/MCInputEventReceiver;-><init>(Landroid/content/Context;ILandroid/view/InputMonitor;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    return-void

    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->isEnabled:Z

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->isEnabled:Z

    iget-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    const-string v0, "[enable] false"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/InputMonitor;->dispose()V

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->dispose()V

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputMonitor:Landroid/view/InputMonitor;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/InputMonitor;->dispose()V

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->dispose()V

    :cond_6
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    iput-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    iput-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputMonitor:Landroid/view/InputMonitor;

    iput-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputMonitor:Landroid/view/InputMonitor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    iget-object p0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    const-string v0, "[enable]"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_0
    return-void
.end method

.method public blacklist observeDesktopMode(Z)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->TAG:Ljava/lang/String;

    const-string v0, "[observeDesktopMode]"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public blacklist setTriggerThreshold(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->setTriggerThreshold(I)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/multicontrol/MCTriggerManager;->mDexInputReceiver:Lcom/samsung/android/multicontrol/MCInputEventReceiver;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/multicontrol/MCInputEventReceiver;->setTriggerThreshold(I)V

    :cond_1
    return-void
.end method
