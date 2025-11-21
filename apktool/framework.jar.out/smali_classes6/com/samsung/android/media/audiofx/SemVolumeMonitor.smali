.class public Lcom/samsung/android/media/audiofx/SemVolumeMonitor;
.super Landroid/media/audiofx/AudioEffect;
.source "SemVolumeMonitor.java"


# static fields
.field public static final blacklist EFFECT_TYPE_VOLUME_MONITOR:Ljava/util/UUID;

.field private static final blacklist PARAM_GET_ONE_MIN_SCORE_STATUS:I = 0x1

.field private static final blacklist PARAM_RESET_DATA:I = 0x5

.field private static final blacklist PARAM_SET_ABS_VOLUME_STATE:I = 0x4

.field private static final blacklist PARAM_SET_BT_VOL_INDEX:I = 0x2

.field private static final blacklist PARAM_SET_ON_OFF:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "SemVolumeMonitor"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "f15b944b-0202-451e-a6ff-c61f11beda02"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->EFFECT_TYPE_VOLUME_MONITOR:Ljava/util/UUID;

    return-void
.end method

.method public constructor blacklist <init>(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->EFFECT_TYPE_VOLUME_MONITOR:Ljava/util/UUID;

    sget-object v1, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    if-nez p2, :cond_0

    const-string p0, "SemVolumeMonitor"

    const-string p1, "WARNING: attaching an SemVolumeMonitor to global output mix is deprecated!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private blacklist byteArrayToIntegerArray([B[Ljava/lang/Integer;)V
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    array-length v1, p1

    if-ge p0, v1, :cond_0

    array-length v1, p2

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-static {p1, p0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->byteArrayToInt([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p2, v0

    add-int/lit8 p0, p0, 0x4

    move v0, v1

    goto :goto_0

    :cond_0
    array-length p0, p2

    if-ne v0, p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "only converted "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " values out of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " expected"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist integerArrayToByteArray([Ljava/lang/Integer;)[B
    .locals 3

    array-length p0, p1

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getOneMinScoreStatus(II)[B
    .locals 5

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->integerArrayToByteArray([Ljava/lang/Integer;)[B

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v2, v1, [B

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getOneHourRms: call getParameter. bytes:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "=max("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemVolumeMonitor"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->getParameter([B[B)I

    const-string p0, "getOneHourRms: getParameter done"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public blacklist onOff(Z)V
    .locals 3

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->integerArrayToByteArray([Ljava/lang/Integer;)[B

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->integerArrayToByteArray([Ljava/lang/Integer;)[B

    move-result-object p1

    const-string/jumbo v1, "onOff: call setParameter"

    const-string v2, "SemVolumeMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setParameter([B[B)I

    const-string/jumbo p0, "onOff: setParameter done"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist resetData()V
    .locals 2

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->integerArrayToByteArray([Ljava/lang/Integer;)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->integerArrayToByteArray([Ljava/lang/Integer;)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setParameter([B[B)I

    return-void
.end method

.method public blacklist setAbsoluteVolumeState(Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->integerArrayToByteArray([Ljava/lang/Integer;)[B

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->integerArrayToByteArray([Ljava/lang/Integer;)[B

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setParameter([B[B)I

    return-void
.end method

.method public blacklist setBluetoothVolume(I)V
    .locals 3

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->integerArrayToByteArray([Ljava/lang/Integer;)[B

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->integerArrayToByteArray([Ljava/lang/Integer;)[B

    move-result-object p1

    const-string/jumbo v1, "setBluetoothVolume: call setParameter"

    const-string v2, "SemVolumeMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/media/audiofx/SemVolumeMonitor;->setParameter([B[B)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "setBluetoothVolume#setParameter"

    invoke-static {v2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const-string/jumbo p0, "setBluetoothVolume: setParameter done"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
