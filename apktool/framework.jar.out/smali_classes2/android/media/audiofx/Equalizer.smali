.class public Landroid/media/audiofx/Equalizer;
.super Landroid/media/audiofx/AudioEffect;
.source "Equalizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Equalizer$OnParameterChangeListener;,
        Landroid/media/audiofx/Equalizer$BaseParameterListener;,
        Landroid/media/audiofx/Equalizer$Settings;
    }
.end annotation


# static fields
.field public static final whitelist PARAM_BAND_FREQ_RANGE:I = 0x4

.field public static final whitelist PARAM_BAND_LEVEL:I = 0x2

.field public static final whitelist PARAM_CENTER_FREQ:I = 0x3

.field public static final whitelist PARAM_CURRENT_PRESET:I = 0x6

.field public static final whitelist PARAM_GET_BAND:I = 0x5

.field public static final whitelist PARAM_GET_NUM_OF_PRESETS:I = 0x7

.field public static final whitelist PARAM_GET_PRESET_NAME:I = 0x8

.field public static final whitelist PARAM_LEVEL_RANGE:I = 0x1

.field public static final whitelist PARAM_NUM_BANDS:I = 0x0

.field private static final greylist-max-o PARAM_PROPERTIES:I = 0x9

.field public static final whitelist PARAM_STRING_SIZE_MAX:I = 0x20

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Equalizer"


# instance fields
.field private greylist-max-o mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

.field private greylist-max-o mNumBands:S

.field private greylist-max-o mNumPresets:I

.field private greylist-max-o mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

.field private final greylist-max-o mParamListenerLock:Ljava/lang/Object;

.field private greylist-max-o mPresetNames:[Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmParamListener(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    .locals 0

    iget-object p0, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/Equalizer;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor whitelist <init>(II)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    sget-object v0, Landroid/media/audiofx/Equalizer;->EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/Equalizer;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    const/4 p1, 0x0

    iput-short p1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    iput-object v0, p0, Landroid/media/audiofx/Equalizer;->mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    const-string v0, "Equalizer"

    if-nez p2, :cond_0

    const-string p2, "WARNING: attaching an Equalizer to global output mix is deprecated!"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    invoke-virtual {p0}, Landroid/media/audiofx/Equalizer;->getNumberOfPresets()S

    move-result p2

    iput p2, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    if-eqz p2, :cond_1

    new-array p2, p2, [Ljava/lang/String;

    iput-object p2, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    const/16 p2, 0x20

    new-array p2, p2, [B

    move v1, p1

    :goto_0
    iget v2, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    if-ge v1, v2, :cond_1

    const/16 v2, 0x8

    filled-new-array {v2, v1}, [I

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Landroid/media/audiofx/Equalizer;->getParameter([I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    :try_start_0
    iget-object v3, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    new-instance v4, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-direct {v4, p2, p1, v2, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v4, v3, v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, "preset name decode error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist getBand(I)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [S

    const/4 v1, 0x5

    filled-new-array {v1, p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/Equalizer;->getParameter([I[S)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    const/4 p0, 0x0

    aget-short p0, v0, p0

    return p0
.end method

.method public whitelist getBandFreqRange(S)[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x4

    filled-new-array {v1, p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/Equalizer;->getParameter([I[I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    return-object v0
.end method

.method public whitelist getBandLevel(S)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [S

    const/4 v1, 0x2

    filled-new-array {v1, p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/Equalizer;->getParameter([I[S)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    const/4 p0, 0x0

    aget-short p0, v0, p0

    return p0
.end method

.method public whitelist getBandLevelRange()[S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [S

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Equalizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    return-object v0
.end method

.method public whitelist getCenterFreq(S)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x3

    filled-new-array {v1, p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/Equalizer;->getParameter([I[I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    const/4 p0, 0x0

    aget p0, v0, p0

    return p0
.end method

.method public whitelist getCurrentPreset()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [S

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Equalizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    const/4 p0, 0x0

    aget-short p0, v0, p0

    return p0
.end method

.method public whitelist getNumberOfBands()S
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-short v0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-eqz v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    filled-new-array {v0}, [I

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [S

    invoke-virtual {p0, v1, v2}, Landroid/media/audiofx/Equalizer;->getParameter([I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    aget-short v0, v2, v0

    iput-short v0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    return v0
.end method

.method public whitelist getNumberOfPresets()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [S

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Landroid/media/audiofx/Equalizer;->getParameter(I[S)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    const/4 p0, 0x0

    aget-short p0, v0, p0

    return p0
.end method

.method public whitelist getPresetName(S)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Landroid/media/audiofx/Equalizer;->mNumPresets:I

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Landroid/media/audiofx/Equalizer;->mPresetNames:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public whitelist getProperties()Landroid/media/audiofx/Equalizer$Settings;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-short v0, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    const/16 v2, 0x9

    invoke-virtual {p0, v2, v0}, Landroid/media/audiofx/Equalizer;->getParameter(I[B)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    new-instance v2, Landroid/media/audiofx/Equalizer$Settings;

    invoke-direct {v2}, Landroid/media/audiofx/Equalizer$Settings;-><init>()V

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/media/audiofx/Equalizer;->byteArrayToShort([BI)S

    move-result v4

    iput-short v4, v2, Landroid/media/audiofx/Equalizer$Settings;->curPreset:S

    invoke-static {v0, v1}, Landroid/media/audiofx/Equalizer;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, v2, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    iget-short v1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    new-array v1, v1, [S

    iput-object v1, v2, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    :goto_0
    iget-short v1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-ge v3, v1, :cond_0

    iget-object v1, v2, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x4

    invoke-static {v0, v4}, Landroid/media/audiofx/Equalizer;->byteArrayToShort([BI)S

    move-result v4

    aput-short v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public whitelist setBandLevel(SS)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x2

    filled-new-array {v0, p1}, [I

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [S

    const/4 v1, 0x0

    aput-short p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/Equalizer;->setParameter([I[S)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    return-void
.end method

.method public whitelist setParameterListener(Landroid/media/audiofx/Equalizer$OnParameterChangeListener;)V
    .locals 2

    iget-object v0, p0, Landroid/media/audiofx/Equalizer;->mParamListenerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    if-nez v1, :cond_0

    iput-object p1, p0, Landroid/media/audiofx/Equalizer;->mParamListener:Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    new-instance p1, Landroid/media/audiofx/Equalizer$BaseParameterListener;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Landroid/media/audiofx/Equalizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Equalizer;Landroid/media/audiofx/Equalizer-IA;)V

    iput-object p1, p0, Landroid/media/audiofx/Equalizer;->mBaseParamListener:Landroid/media/audiofx/Equalizer$BaseParameterListener;

    invoke-super {p0, p1}, Landroid/media/audiofx/AudioEffect;->setParameterListener(Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist setProperties(Landroid/media/audiofx/Equalizer$Settings;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    iget-short v0, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    iget-object v1, p1, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    array-length v1, v1

    if-ne v0, v1, :cond_1

    iget-short v0, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    iget-short v1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-ne v0, v1, :cond_1

    iget-short v0, p1, Landroid/media/audiofx/Equalizer$Settings;->curPreset:S

    invoke-static {v0}, Landroid/media/audiofx/Equalizer;->shortToByteArray(S)[B

    move-result-object v0

    iget-short v1, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    invoke-static {v1}, Landroid/media/audiofx/Equalizer;->shortToByteArray(S)[B

    move-result-object v1

    filled-new-array {v0, v1}, [[B

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiofx/Equalizer;->concatArrays([[B)[B

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    iget-short v2, p0, Landroid/media/audiofx/Equalizer;->mNumBands:S

    if-ge v1, v2, :cond_0

    iget-object v2, p1, Landroid/media/audiofx/Equalizer$Settings;->bandLevels:[S

    aget-short v2, v2, v1

    invoke-static {v2}, Landroid/media/audiofx/Equalizer;->shortToByteArray(S)[B

    move-result-object v2

    filled-new-array {v0, v2}, [[B

    move-result-object v0

    invoke-static {v0}, Landroid/media/audiofx/Equalizer;->concatArrays([[B)[B

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    invoke-virtual {p0, p1, v0}, Landroid/media/audiofx/Equalizer;->setParameter(I[B)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "settings invalid band count: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short p1, p1, Landroid/media/audiofx/Equalizer$Settings;->numBands:S

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist usePreset(S)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Landroid/media/audiofx/Equalizer;->setParameter(IS)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/media/audiofx/Equalizer;->checkStatus(I)V

    return-void
.end method
