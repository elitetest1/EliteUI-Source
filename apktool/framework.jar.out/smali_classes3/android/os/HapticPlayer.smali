.class public Landroid/os/HapticPlayer;
.super Ljava/lang/Object;
.source "HapticPlayer.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/HapticPlayer$StepParameter;,
        Landroid/os/HapticPlayer$RampParameter;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_PARAM:I = -0x1

.field private static final blacklist DYNAMIC_DEFAULT_INTERVAL:I = 0x32

.field private static final blacklist DYNAMIC_MAX_AMPLITUDE:I = 0x64

.field private static final blacklist DYNAMIC_MAX_DURATION:I = 0x1388

.field private static final blacklist DYNAMIC_MAX_FREQUENCY:I = 0x19

.field private static final blacklist DYNAMIC_MIN_DURATION:I = 0x5

.field private static final blacklist DYNAMIC_STEP_COUNT_TYPE_B:I = 0x4

.field private static final blacklist DYNAMIC_STEP_COUNT_TYPE_C:I = 0x4

.field private static final blacklist DYNAMIC_STEP_COUNT_TYPE_D:I = 0x1

.field private static final blacklist DYNAMIC_TRANSIENT_DURATION:I = 0x14

.field private static final blacklist TAG:Ljava/lang/String; = "HapticPlayer"

.field private static final blacklist mAvailable:Z

.field private static final blacklist mService:Landroid/os/IVibratorManagerService;

.field private static final blacklist mVibratorGroup:I


# instance fields
.field private blacklist mEffect:Landroid/os/DynamicEffect;

.field private blacklist mLoop:I

.field private final blacklist mStepCount:I

.field private blacklist mStepParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/HapticPlayer$StepParameter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mToken:Landroid/os/Binder;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEffect(Landroid/os/HapticPlayer;)Landroid/os/DynamicEffect;
    .locals 0

    iget-object p0, p0, Landroid/os/HapticPlayer;->mEffect:Landroid/os/DynamicEffect;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLoop(Landroid/os/HapticPlayer;)I
    .locals 0

    iget p0, p0, Landroid/os/HapticPlayer;->mLoop:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStepParameters(Landroid/os/HapticPlayer;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/os/HapticPlayer;->mStepParameters:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToken(Landroid/os/HapticPlayer;)Landroid/os/Binder;
    .locals 0

    iget-object p0, p0, Landroid/os/HapticPlayer;->mToken:Landroid/os/Binder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmStepParameters(Landroid/os/HapticPlayer;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroid/os/HapticPlayer;->mStepParameters:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateStepEffect(Landroid/os/HapticPlayer;Ljava/util/List;III)Landroid/os/VibrationEffect;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/HapticPlayer;->createStepEffect(Ljava/util/List;III)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mparseRamp(Landroid/os/HapticPlayer;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/HapticPlayer;->parseRamp(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mrampToStepParameter(Landroid/os/HapticPlayer;Landroid/os/HapticPlayer$RampParameter;)Ljava/util/List;
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/HapticPlayer;->rampToStepParameter(Landroid/os/HapticPlayer$RampParameter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmService()Landroid/os/IVibratorManagerService;
    .locals 1

    sget-object v0, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    const-string/jumbo v0, "vibrator_manager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IVibratorManagerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorManagerService;

    move-result-object v0

    sput-object v0, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    invoke-static {}, Landroid/os/HapticPlayer;->getVibratorGroup()I

    move-result v0

    sput v0, Landroid/os/HapticPlayer;->mVibratorGroup:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Landroid/os/HapticPlayer;->mAvailable:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Landroid/os/HapticPlayer;->mLoop:I

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/HapticPlayer;->mToken:Landroid/os/Binder;

    invoke-direct {p0}, Landroid/os/HapticPlayer;->getStepCount()I

    move-result v0

    iput v0, p0, Landroid/os/HapticPlayer;->mStepCount:I

    return-void
.end method

.method public constructor greylist <init>(Landroid/os/DynamicEffect;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/HapticPlayer;-><init>()V

    iput-object p1, p0, Landroid/os/HapticPlayer;->mEffect:Landroid/os/DynamicEffect;

    return-void
.end method

.method private blacklist checkParameters(III)Z
    .locals 2

    const/4 p0, 0x0

    const/4 v0, -0x1

    if-gez p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    const/16 v1, 0x3e8

    if-le p1, v1, :cond_2

    :cond_1
    return p0

    :cond_2
    const/4 p1, 0x1

    if-ge p2, p1, :cond_3

    if-ne p2, v0, :cond_4

    :cond_3
    const/16 v1, 0xff

    if-le p2, v1, :cond_5

    :cond_4
    return p0

    :cond_5
    if-gez p3, :cond_6

    if-eq p3, v0, :cond_6

    return p0

    :cond_6
    return p1
.end method

.method private blacklist createStepEffect(Ljava/util/List;III)Landroid/os/VibrationEffect;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/HapticPlayer$StepParameter;",
            ">;III)",
            "Landroid/os/VibrationEffect;"
        }
    .end annotation

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    new-array p4, p0, [F

    new-array v0, p0, [F

    new-array v1, p0, [I

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-lt p3, v2, :cond_1

    const/16 v4, 0xff

    if-gt p3, v4, :cond_1

    int-to-float p3, p3

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr p3, v4

    goto :goto_0

    :cond_1
    move p3, v3

    :goto_0
    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, p0, :cond_2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/HapticPlayer$StepParameter;

    invoke-virtual {v6}, Landroid/os/HapticPlayer$StepParameter;->getDuration()I

    move-result v7

    const/16 v8, 0x1388

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    aput v7, v1, v5

    invoke-virtual {v6}, Landroid/os/HapticPlayer$StepParameter;->getAmplitude()F

    move-result v7

    mul-float/2addr v7, p3

    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    aput v7, p4, v5

    invoke-virtual {v6}, Landroid/os/HapticPlayer$StepParameter;->getFrequency()F

    move-result v6

    mul-float/2addr v6, v3

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    aput v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-ltz p2, :cond_3

    const/16 p1, 0x3e8

    if-gt p2, p1, :cond_3

    sub-int/2addr p0, v2

    aput p2, v1, p0

    :cond_3
    const/4 p0, -0x1

    invoke-static {v1, p4, v0, p0}, Landroid/os/VibrationEffect;->createWaveform([I[F[FI)Landroid/os/VibrationEffect;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_2
    const-string p0, "HapticPlayer"

    const-string p1, "createStepEffect: parameters is null or empty."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getStepCount()I
    .locals 2

    sget p0, Landroid/os/HapticPlayer;->mVibratorGroup:I

    const/4 v0, 0x2

    const/4 v1, 0x4

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static blacklist getVibratorGroup()I
    .locals 4

    sget-object v0, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    const-string v1, "HapticPlayer"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Failed to getVibratorGroup; no service."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/os/IVibratorManagerService;->getSupportedVibratorGroup()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v3, "Failed to getVibratorGroup."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method private blacklist interpolate(FFF)F
    .locals 0

    sub-float/2addr p2, p1

    mul-float/2addr p3, p2

    add-float/2addr p1, p3

    return p1
.end method

.method public static greylist isAvailable()Z
    .locals 1

    sget-boolean v0, Landroid/os/HapticPlayer;->mAvailable:Z

    return v0
.end method

.method private blacklist parseRamp(Ljava/lang/String;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/HapticPlayer$RampParameter;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "Frequency"

    const-string v2, "Intensity"

    const-string v4, "HapticPlayer"

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "Pattern"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v7, v9, :cond_6

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "Event"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "Type"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "RelativeTime"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    const-string v12, "Parameters"

    invoke-virtual {v9, v12}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v9, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    if-eq v11, v8, :cond_1

    new-instance v14, Landroid/os/HapticPlayer$RampParameter;

    sub-int v15, v11, v8

    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v19

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v14 .. v19}, Landroid/os/HapticPlayer$RampParameter;-><init>(FFFFI)V

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v14, "continuous"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/high16 v15, 0x41c80000    # 25.0f

    const/high16 v16, 0x42c80000    # 100.0f

    if-eqz v14, :cond_4

    const-string v8, "Curve"

    invoke-virtual {v9, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_1
    if-ge v14, v9, :cond_3

    invoke-virtual {v8, v14}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v17
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const/16 p0, 0x0

    :try_start_1
    move-object/from16 v3, v17

    check-cast v3, Lorg/json/JSONObject;

    const-string v6, "Time"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v20, v7

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    if-lez v14, :cond_2

    new-instance v21, Landroid/os/HapticPlayer$RampParameter;

    int-to-float v7, v12

    mul-float/2addr v10, v7

    div-float v22, v10, v16

    mul-float/2addr v7, v6

    div-float v23, v7, v16

    add-int v7, v18, v13

    int-to-float v7, v7

    div-float v24, v7, v15

    add-int v7, v3, v13

    int-to-float v7, v7

    div-float v25, v7, v15

    sub-int v26, v17, v19

    invoke-direct/range {v21 .. v26}, Landroid/os/HapticPlayer$RampParameter;-><init>(FFFFI)V

    move-object/from16 v7, v21

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v14, v14, 0x1

    move/from16 v18, v3

    move v10, v6

    move/from16 v19, v17

    move/from16 v7, v20

    goto :goto_1

    :cond_3
    move/from16 v20, v7

    const/16 p0, 0x0

    add-int v8, v11, v17

    goto :goto_2

    :cond_4
    move/from16 v20, v7

    const/16 p0, 0x0

    const-string/jumbo v3, "transient"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v21, Landroid/os/HapticPlayer$RampParameter;

    int-to-float v3, v12

    div-float v22, v3, v16

    int-to-float v3, v13

    div-float v24, v3, v15

    const/16 v26, 0x14

    move/from16 v23, v22

    move/from16 v25, v24

    invoke-direct/range {v21 .. v26}, Landroid/os/HapticPlayer$RampParameter;-><init>(FFFFI)V

    move-object/from16 v3, v21

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v11, 0x14

    :cond_5
    :goto_2
    add-int/lit8 v7, v20, 0x1

    goto/16 :goto_0

    :cond_6
    const/16 p0, 0x0

    new-instance v6, Landroid/os/HapticPlayer$RampParameter;

    const/4 v10, 0x0

    const/16 v11, 0x32

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v6 .. v11}, Landroid/os/HapticPlayer$RampParameter;-><init>(FFFFI)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    const/16 p0, 0x0

    :goto_3
    const-string/jumbo v1, "parseRamp: Failed to parse json string."

    invoke-static {v4, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0

    :cond_7
    :goto_4
    const/16 p0, 0x0

    const-string/jumbo v0, "parseRamp: invalid JsonString."

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private blacklist rampToStepParameter(Landroid/os/HapticPlayer$RampParameter;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HapticPlayer$RampParameter;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/HapticPlayer$StepParameter;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getStartAmplitude()F

    move-result v0

    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getEndAmplitude()F

    move-result v1

    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getStartFrequency()F

    move-result v2

    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getEndFrequency()F

    move-result v3

    invoke-virtual {p1}, Landroid/os/HapticPlayer$RampParameter;->getDuration()I

    move-result p1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-nez v4, :cond_0

    new-instance p0, Landroid/os/HapticPlayer$StepParameter;

    invoke-direct {p0, v1, v3, p1}, Landroid/os/HapticPlayer$StepParameter;-><init>(FFI)V

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget v4, p0, Landroid/os/HapticPlayer;->mStepCount:I

    div-int/lit8 v5, p1, 0x5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    div-int v6, p1, v4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v8, v5

    :goto_0
    if-ge v8, v4, :cond_1

    int-to-float v9, v8

    int-to-float v10, v4

    div-float/2addr v9, v10

    new-instance v10, Landroid/os/HapticPlayer$StepParameter;

    invoke-direct {p0, v0, v1, v9}, Landroid/os/HapticPlayer;->interpolate(FFF)F

    move-result v11

    invoke-direct {p0, v2, v3, v9}, Landroid/os/HapticPlayer;->interpolate(FFF)F

    move-result v9

    invoke-direct {v10, v11, v9, v6}, Landroid/os/HapticPlayer$StepParameter;-><init>(FFI)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/os/HapticPlayer$StepParameter;

    sub-int/2addr v4, v5

    mul-int/2addr v6, v4

    sub-int/2addr p1, v6

    invoke-direct {p0, v1, v3, p1}, Landroid/os/HapticPlayer$StepParameter;-><init>(FFI)V

    invoke-interface {v7, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method private blacklist start(IIIIZ)V
    .locals 6

    sget-boolean v0, Landroid/os/HapticPlayer;->mAvailable:Z

    const-string v1, "HapticPlayer"

    if-eqz v0, :cond_4

    sget-object v0, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/os/HapticPlayer;->mEffect:Landroid/os/DynamicEffect;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0, p2, p3, p4}, Landroid/os/HapticPlayer;->checkParameters(III)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "Failed to start vibrate; invalid interval, amplitude or frequency."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, -0x1

    const/16 v1, 0x80

    if-eq p1, v0, :cond_3

    if-lt p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroid/os/HapticPlayer;->mLoop:I

    goto :goto_1

    :cond_3
    :goto_0
    iput v1, p0, Landroid/os/HapticPlayer;->mLoop:I

    :goto_1
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Landroid/os/HapticPlayer$1;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v2, p5

    invoke-direct/range {v0 .. v5}, Landroid/os/HapticPlayer$1;-><init>(Landroid/os/HapticPlayer;ZIII)V

    const-string p0, "DynamicEffectThread"

    invoke-direct {p1, v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_4
    :goto_2
    const-string p0, "Failed to start vibrate; no support, no service or no effect info."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist update(IIIZ)V
    .locals 6

    if-eqz p4, :cond_1

    const/4 p4, -0x1

    if-eq p1, p4, :cond_0

    if-ne p2, p4, :cond_1

    :cond_0
    const-string p0, "HapticPlayer"

    const-string p1, "Fail to update."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v1, p0, Landroid/os/HapticPlayer;->mLoop:I

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/HapticPlayer;->start(IIIIZ)V

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 0

    return-void
.end method

.method public greylist start(I)V
    .locals 6

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/HapticPlayer;->start(IIIIZ)V

    return-void
.end method

.method public greylist start(III)V
    .locals 6

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/HapticPlayer;->start(IIIIZ)V

    return-void
.end method

.method public greylist start(IIII)V
    .locals 6

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/HapticPlayer;->start(IIIIZ)V

    return-void
.end method

.method public greylist stop()V
    .locals 3

    sget-boolean v0, Landroid/os/HapticPlayer;->mAvailable:Z

    const-string v1, "HapticPlayer"

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/HapticPlayer;->mService:Landroid/os/IVibratorManagerService;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object p0, p0, Landroid/os/HapticPlayer;->mToken:Landroid/os/Binder;

    const/4 v2, -0x1

    invoke-interface {v0, v2, p0}, Landroid/os/IVibratorManagerService;->cancelVibrate(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Failed to stop vibrate."

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_1
    :goto_0
    const-string p0, "Failed to stop vibrate; no support or no service."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public greylist updateAmplitude(I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v0, v1}, Landroid/os/HapticPlayer;->update(IIIZ)V

    return-void
.end method

.method public greylist updateFrequency(I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, p1, v1}, Landroid/os/HapticPlayer;->update(IIIZ)V

    return-void
.end method

.method public greylist updateInterval(I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v0, v1}, Landroid/os/HapticPlayer;->update(IIIZ)V

    return-void
.end method

.method public greylist updateParameter(III)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/os/HapticPlayer;->update(IIIZ)V

    return-void
.end method
