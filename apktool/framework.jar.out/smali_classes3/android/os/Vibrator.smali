.class public abstract Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Vibrator$SemMagnitudeTypes;,
        Landroid/os/Vibrator$OnVibratorStateChangedListener;,
        Landroid/os/Vibrator$VibrationIntensity;,
        Landroid/os/Vibrator$VibrationEffectSupport;
    }
.end annotation


# static fields
.field public static final whitelist SEM_SUPPORTED_VIBRATION_NONE:I = 0x0

.field public static final whitelist SEM_SUPPORTED_VIBRATION_TYPE_A:I = 0x1

.field public static final whitelist SEM_SUPPORTED_VIBRATION_TYPE_B:I = 0x2

.field public static final whitelist SEM_SUPPORTED_VIBRATION_TYPE_C:I = 0x3

.field public static final whitelist SEM_SUPPORTED_VIBRATION_TYPE_D:I = 0x4

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Vibrator"

.field public static final whitelist VIBRATION_EFFECT_SUPPORT_NO:I = 0x2

.field public static final whitelist VIBRATION_EFFECT_SUPPORT_UNKNOWN:I = 0x0

.field public static final whitelist VIBRATION_EFFECT_SUPPORT_YES:I = 0x1

.field public static final greylist-max-o VIBRATION_INTENSITY_HIGH:I = 0x3

.field public static final greylist-max-o VIBRATION_INTENSITY_LOW:I = 0x1

.field public static final greylist-max-o VIBRATION_INTENSITY_MEDIUM:I = 0x2

.field public static final greylist-max-o VIBRATION_INTENSITY_OFF:I


# instance fields
.field private final greylist-max-o mPackageName:Ljava/lang/String;

.field private final blacklist mResources:Landroid/content/res/Resources;

.field private volatile blacklist mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

.field private blacklist mVibratorEnvelopeEffectInfo:Landroid/os/vibrator/VibratorEnvelopeEffectInfo;

.field private blacklist mVibratorFrequencyProfile:Landroid/os/vibrator/VibratorFrequencyProfile;


# direct methods
.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/Vibrator;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroid/os/Vibrator;->mResources:Landroid/content/res/Resources;

    return-void
.end method

.method private blacklist convertMagnitudeType(Landroid/os/Vibrator$SemMagnitudeTypes;)Landroid/os/VibrationEffect$SemMagnitudeType;
    .locals 0

    invoke-static {}, Landroid/os/VibrationEffect$SemMagnitudeType;->values()[Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object p0

    invoke-virtual {p1}, Landroid/os/Vibrator$SemMagnitudeTypes;->ordinal()I

    move-result p1

    aget-object p0, p0, p1

    return-object p0
.end method

.method private blacklist getConfig()Landroid/os/vibrator/VibrationConfig;
    .locals 2

    iget-object v0, p0, Landroid/os/Vibrator;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/os/Vibrator;->mResources:Landroid/content/res/Resources;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    new-instance v1, Landroid/os/vibrator/VibrationConfig;

    invoke-direct {v1, v0}, Landroid/os/vibrator/VibrationConfig;-><init>(Landroid/content/res/Resources;)V

    iput-object v1, p0, Landroid/os/Vibrator;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    :cond_2
    iget-object p0, p0, Landroid/os/Vibrator;->mVibrationConfig:Landroid/os/vibrator/VibrationConfig;

    return-object p0
.end method

.method static synthetic blacklist lambda$startVendorSession$0(Landroid/os/vibrator/VendorVibrationSession$Callback;)V
    .locals 1

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Landroid/os/vibrator/VendorVibrationSession$Callback;->onFinished(I)V

    return-void
.end method


# virtual methods
.method public whitelist addVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public whitelist addVibratorStateListener(Ljava/util/concurrent/Executor;Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public final varargs whitelist areAllEffectsSupported([I)I
    .locals 6

    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object p0

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget v5, p1, v3

    invoke-virtual {p0, v5}, Landroid/os/VibratorInfo;->isEffectSupported(I)I

    move-result v5

    if-eq v5, v1, :cond_1

    const/4 v4, 0x2

    if-eq v5, v4, :cond_0

    move v4, v2

    goto :goto_1

    :cond_0
    return v4

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method public final varargs whitelist areAllPrimitivesSupported([I)Z
    .locals 4

    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object p0

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public varargs whitelist areEffectsSupported([I)[I
    .locals 3

    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object p0

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/VibratorInfo;->isEffectSupported(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public whitelist areEnvelopeEffectsSupported()Z
    .locals 0

    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibratorInfo;->areEnvelopeEffectsSupported()Z

    move-result p0

    return p0
.end method

.method public varargs whitelist arePrimitivesSupported([I)[Z
    .locals 3

    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object p0

    array-length v0, p1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/VibratorInfo;->isPrimitiveSupported(I)Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public whitelist areVendorEffectsSupported()Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object p0

    const-wide/16 v0, 0x800

    invoke-virtual {p0, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result p0

    return p0
.end method

.method public whitelist areVendorSessionsSupported()Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist areVibrationFeaturesSupported(Landroid/os/VibrationEffect;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/VibratorInfo;->areVibrationFeaturesSupported(Landroid/os/VibrationEffect;)Z

    move-result p0

    return p0
.end method

.method public abstract whitelist cancel()V
.end method

.method public abstract blacklist cancel(I)V
.end method

.method public blacklist executeVibrationDebugCommand(Lcom/samsung/android/vibrator/VibrationDebugInfo;)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public blacklist getDefaultVibrationIntensity(I)I
    .locals 0

    invoke-direct {p0}, Landroid/os/Vibrator;->getConfig()Landroid/os/vibrator/VibrationConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/vibrator/VibrationConfig;->getDefaultVibrationIntensity(I)I

    move-result p0

    return p0
.end method

.method public whitelist getEnvelopeEffectInfo()Landroid/os/vibrator/VibratorEnvelopeEffectInfo;
    .locals 7

    iget-object v0, p0, Landroid/os/Vibrator;->mVibratorEnvelopeEffectInfo:Landroid/os/vibrator/VibratorEnvelopeEffectInfo;

    if-nez v0, :cond_0

    new-instance v1, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;

    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getMaxEnvelopeEffectSize()I

    move-result v2

    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getMinEnvelopeEffectControlPointDurationMillis()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getMaxEnvelopeEffectControlPointDurationMillis()I

    move-result v0

    int-to-long v5, v0

    invoke-direct/range {v1 .. v6}, Landroid/os/vibrator/VibratorEnvelopeEffectInfo;-><init>(IJJ)V

    iput-object v1, p0, Landroid/os/Vibrator;->mVibratorEnvelopeEffectInfo:Landroid/os/vibrator/VibratorEnvelopeEffectInfo;

    :cond_0
    iget-object p0, p0, Landroid/os/Vibrator;->mVibratorEnvelopeEffectInfo:Landroid/os/vibrator/VibratorEnvelopeEffectInfo;

    return-object p0
.end method

.method public whitelist getFrequencyProfile()Landroid/os/vibrator/VibratorFrequencyProfile;
    .locals 2

    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo;->getFrequencyProfile()Landroid/os/VibratorInfo$FrequencyProfile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibratorInfo$FrequencyProfile;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Landroid/os/Vibrator;->mVibratorFrequencyProfile:Landroid/os/vibrator/VibratorFrequencyProfile;

    if-nez v1, :cond_1

    new-instance v1, Landroid/os/vibrator/VibratorFrequencyProfile;

    invoke-direct {v1, v0}, Landroid/os/vibrator/VibratorFrequencyProfile;-><init>(Landroid/os/VibratorInfo$FrequencyProfile;)V

    iput-object v1, p0, Landroid/os/Vibrator;->mVibratorFrequencyProfile:Landroid/os/vibrator/VibratorFrequencyProfile;

    :cond_1
    iget-object p0, p0, Landroid/os/Vibrator;->mVibratorFrequencyProfile:Landroid/os/vibrator/VibratorFrequencyProfile;

    return-object p0
.end method

.method public blacklist getFrequencyProfileLegacy()Landroid/os/vibrator/VibratorFrequencyProfileLegacy;
    .locals 1

    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getFrequencyProfileLegacy()Landroid/os/VibratorInfo$FrequencyProfileLegacy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibratorInfo$FrequencyProfileLegacy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/os/vibrator/VibratorFrequencyProfileLegacy;

    invoke-direct {v0, p0}, Landroid/os/vibrator/VibratorFrequencyProfileLegacy;-><init>(Landroid/os/VibratorInfo$FrequencyProfileLegacy;)V

    return-object v0
.end method

.method public blacklist getHapticChannelMaximumAmplitude()F
    .locals 0

    invoke-direct {p0}, Landroid/os/Vibrator;->getConfig()Landroid/os/vibrator/VibrationConfig;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/vibrator/VibrationConfig;->getHapticChannelMaximumAmplitude()F

    move-result p0

    return p0
.end method

.method public whitelist getId()I
    .locals 0

    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getId()I

    move-result p0

    return p0
.end method

.method public blacklist getInfo()Landroid/os/VibratorInfo;
    .locals 0

    sget-object p0, Landroid/os/VibratorInfo;->EMPTY_VIBRATOR_INFO:Landroid/os/VibratorInfo;

    return-object p0
.end method

.method public blacklist getMaxMagnitude()I
    .locals 0

    const/16 p0, 0x270f

    return p0
.end method

.method protected blacklist getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public varargs whitelist getPrimitiveDurations([I)[I
    .locals 3

    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object p0

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/os/VibratorInfo;->getPrimitiveDuration(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public whitelist getQFactor()F
    .locals 0

    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getQFactor()F

    move-result p0

    return p0
.end method

.method public whitelist getResonantFrequency()F
    .locals 0

    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibratorInfo;->getResonantFrequencyHz()F

    move-result p0

    return p0
.end method

.method public abstract whitelist hasAmplitudeControl()Z
.end method

.method public blacklist hasExternalControl()Z
    .locals 2

    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object p0

    const-wide/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Landroid/os/VibratorInfo;->hasCapability(J)Z

    move-result p0

    return p0
.end method

.method public blacklist hasFrequencyControl()Z
    .locals 0

    invoke-virtual {p0}, Landroid/os/Vibrator;->getInfo()Landroid/os/VibratorInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/VibratorInfo;->hasFrequencyControl()Z

    move-result p0

    return p0
.end method

.method public abstract whitelist hasVibrator()Z
.end method

.method public whitelist isVibrating()Z
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist performHapticFeedback(ILjava/lang/String;II)V
    .locals 0

    const-string p0, "Vibrator"

    const-string/jumbo p1, "performHapticFeedback is not supported"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist performHapticFeedbackForInputDevice(IIILjava/lang/String;II)V
    .locals 0

    const-string p0, "Vibrator"

    const-string/jumbo p1, "performHapticFeedbackForInputDevice is not supported"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public whitelist removeVibratorStateListener(Landroid/os/Vibrator$OnVibratorStateChangedListener;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    return-void
.end method

.method public whitelist semGetNumberOfSupportedPatterns()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist semGetSupportedVibrationType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist semIsHapticSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist semIsVibrating()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist semVibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$SemMagnitudeTypes;)V
    .locals 6

    :try_start_0
    invoke-direct {p0, p4}, Landroid/os/Vibrator;->convertMagnitudeType(Landroid/os/Vibrator$SemMagnitudeTypes;)Landroid/os/VibrationEffect$SemMagnitudeType;

    move-result-object p4

    invoke-static {p1, p2, p4}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    const-string/jumbo v4, "semVibrate"

    new-instance p1, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {p1, p3}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {p1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "Vibrator"

    const-string p2, "Failed to create VibrationEffect"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public blacklist setAlwaysOnEffect(ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z
    .locals 6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    move-object v0, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z

    move-result p0

    return p0
.end method

.method public blacklist setAlwaysOnEffect(ILjava/lang/String;ILandroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)Z
    .locals 0

    const-string p0, "Vibrator"

    const-string p1, "Always-on effects aren\'t supported"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist startVendorSession(Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/vibrator/VendorVibrationSession$Callback;)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string p0, "Vibrator"

    const-string/jumbo p1, "startVendorSession is not supported"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Landroid/os/Vibrator$$ExternalSyntheticLambda0;

    invoke-direct {p0, p5}, Landroid/os/Vibrator$$ExternalSyntheticLambda0;-><init>(Landroid/os/vibrator/VendorVibrationSession$Callback;)V

    invoke-interface {p4, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract blacklist vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V
.end method

.method public whitelist vibrate(J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    return-void
.end method

.method public whitelist vibrate(JLandroid/media/AudioAttributes;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    :try_start_0
    invoke-static {p1, p2, v0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Vibrator"

    const-string p2, "Failed to create VibrationEffect"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public whitelist vibrate(Landroid/os/VibrationEffect;)V
    .locals 1

    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    return-void
.end method

.method public whitelist vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {p2}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    invoke-virtual {p2}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p2

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0, p2}, Landroid/os/VibrationAttributes$Builder;-><init>(Landroid/media/AudioAttributes;)V

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object p2

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    return-void
.end method

.method public whitelist vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Ljava/lang/String;Landroid/os/VibrationAttributes;)V

    return-void
.end method

.method public whitelist vibrate([JI)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    return-void
.end method

.method public whitelist vibrate([JILandroid/media/AudioAttributes;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    const-string v1, "Vibrator"

    if-lt p2, v0, :cond_0

    array-length v0, p1

    if-ge p2, v0, :cond_0

    :try_start_0
    invoke-static {p1, p2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Failed to create VibrationEffect"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "vibrate called with repeat index out of bounds (pattern.length="

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", index="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method
