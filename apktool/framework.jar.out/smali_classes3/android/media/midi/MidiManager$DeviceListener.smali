.class Landroid/media/midi/MidiManager$DeviceListener;
.super Landroid/media/midi/IMidiDeviceListener$Stub;
.source "MidiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/midi/MidiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceListener"
.end annotation


# instance fields
.field private final greylist-max-o mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mTransport:I


# direct methods
.method public static synthetic blacklist $r8$lambda$55zLVo_2B3oXqWHJ-kIEpRAY4gk(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/midi/MidiManager$DeviceListener;->lambda$onDeviceAdded$0(Landroid/media/midi/MidiDeviceInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$6TWravWln6sb6xU5QT5QGRNrbEw(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/midi/MidiManager$DeviceListener;->lambda$onDeviceRemoved$1(Landroid/media/midi/MidiDeviceInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$vknAtf8G0OElGhJjReqU1yz8oK4(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/midi/MidiManager$DeviceListener;->lambda$onDeviceStatusChanged$2(Landroid/media/midi/MidiDeviceStatus;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/media/midi/MidiManager;Landroid/media/midi/MidiManager$DeviceCallback;Ljava/util/concurrent/Executor;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    invoke-direct {p0}, Landroid/media/midi/IMidiDeviceListener$Stub;-><init>()V

    iput-object p2, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    iput-object p3, p0, Landroid/media/midi/MidiManager$DeviceListener;->mExecutor:Ljava/util/concurrent/Executor;

    iput p4, p0, Landroid/media/midi/MidiManager$DeviceListener;->mTransport:I

    return-void
.end method

.method private synthetic blacklist lambda$onDeviceAdded$0(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 0

    iget-object p0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {p0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDeviceRemoved$1(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 0

    iget-object p0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {p0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V

    return-void
.end method

.method private synthetic blacklist lambda$onDeviceStatusChanged$2(Landroid/media/midi/MidiDeviceStatus;)V
    .locals 0

    iget-object p0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {p0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V

    return-void
.end method

.method private blacklist shouldInvokeCallback(Landroid/media/midi/MidiDeviceInfo;)Z
    .locals 5

    iget v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mTransport:I

    const/4 v1, 0x2

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getDefaultProtocol()I

    move-result p0

    if-eq p0, v2, :cond_0

    return v4

    :cond_0
    return v3

    :cond_1
    if-ne v0, v4, :cond_3

    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getDefaultProtocol()I

    move-result p0

    if-ne p0, v2, :cond_2

    return v4

    :cond_2
    return v3

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Invalid transport type: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mTransport:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MidiManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method


# virtual methods
.method public greylist-max-o onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/media/midi/MidiManager$DeviceListener;->shouldInvokeCallback(Landroid/media/midi/MidiDeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda1;-><init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {p0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V

    :cond_1
    return-void
.end method

.method public greylist-max-o onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/media/midi/MidiManager$DeviceListener;->shouldInvokeCallback(Landroid/media/midi/MidiDeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda2;-><init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {p0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V

    :cond_1
    return-void
.end method

.method public greylist-max-o onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    .locals 2

    iget-object v0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/media/midi/MidiManager$DeviceListener$$ExternalSyntheticLambda0;-><init>(Landroid/media/midi/MidiManager$DeviceListener;Landroid/media/midi/MidiDeviceStatus;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroid/media/midi/MidiManager$DeviceListener;->mCallback:Landroid/media/midi/MidiManager$DeviceCallback;

    invoke-virtual {p0, p1}, Landroid/media/midi/MidiManager$DeviceCallback;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V

    return-void
.end method
