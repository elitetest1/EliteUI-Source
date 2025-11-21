.class public abstract Landroid/hardware/SensorManager;
.super Ljava/lang/Object;
.source "SensorManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/SensorManager$DynamicSensorCallback;,
        Landroid/hardware/SensorManager$DataInjectionMode;
    }
.end annotation


# static fields
.field public static final whitelist AXIS_MINUS_X:I = 0x81

.field public static final whitelist AXIS_MINUS_Y:I = 0x82

.field public static final whitelist AXIS_MINUS_Z:I = 0x83

.field public static final whitelist AXIS_X:I = 0x1

.field public static final whitelist AXIS_Y:I = 0x2

.field public static final whitelist AXIS_Z:I = 0x3

.field public static final blacklist DATA_INJECTION:I = 0x1

.field public static final whitelist DATA_X:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DATA_Y:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DATA_Z:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist GRAVITY_DEATH_STAR_I:F = 3.5303614E-7f

.field public static final whitelist GRAVITY_EARTH:F = 9.80665f

.field public static final whitelist GRAVITY_JUPITER:F = 23.12f

.field public static final whitelist GRAVITY_MARS:F = 3.71f

.field public static final whitelist GRAVITY_MERCURY:F = 3.7f

.field public static final whitelist GRAVITY_MOON:F = 1.6f

.field public static final whitelist GRAVITY_NEPTUNE:F = 11.0f

.field public static final whitelist GRAVITY_PLUTO:F = 0.6f

.field public static final whitelist GRAVITY_SATURN:F = 8.96f

.field public static final whitelist GRAVITY_SUN:F = 275.0f

.field public static final whitelist GRAVITY_THE_ISLAND:F = 4.815162f

.field public static final whitelist GRAVITY_URANUS:F = 8.69f

.field public static final whitelist GRAVITY_VENUS:F = 8.87f

.field public static final blacklist HAL_BYPASS_REPLAY_DATA_INJECTION:I = 0x4

.field private static final blacklist INJECT_MAIN_SCREEN_ON:I = 0x20047c1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist INJECT_SUB_SCREEN_ON:I = 0x30047c1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LIGHT_CLOUDY:F = 100.0f

.field public static final whitelist LIGHT_FULLMOON:F = 0.25f

.field public static final whitelist LIGHT_NO_MOON:F = 0.001f

.field public static final whitelist LIGHT_OVERCAST:F = 10000.0f

.field public static final whitelist LIGHT_SHADE:F = 20000.0f

.field public static final whitelist LIGHT_SUNLIGHT:F = 110000.0f

.field public static final whitelist LIGHT_SUNLIGHT_MAX:F = 120000.0f

.field public static final whitelist LIGHT_SUNRISE:F = 400.0f

.field public static final whitelist MAGNETIC_FIELD_EARTH_MAX:F = 60.0f

.field public static final whitelist MAGNETIC_FIELD_EARTH_MIN:F = 30.0f

.field public static final whitelist PRESSURE_STANDARD_ATMOSPHERE:F = 1013.25f

.field public static final whitelist RAW_DATA_INDEX:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RAW_DATA_X:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RAW_DATA_Y:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist RAW_DATA_Z:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist REPLAY_DATA_INJECTION:I = 0x3

.field public static final whitelist SENSOR_ACCELEROMETER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_ALL:I = 0x7f
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_DELAY_FASTEST:I = 0x0

.field public static final whitelist SENSOR_DELAY_GAME:I = 0x1

.field public static final whitelist SENSOR_DELAY_NORMAL:I = 0x3

.field public static final whitelist SENSOR_DELAY_UI:I = 0x2

.field public static final whitelist SENSOR_LIGHT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_MAGNETIC_FIELD:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_MAX:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_MIN:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_ORIENTATION:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_ORIENTATION_RAW:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_PROXIMITY:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_STATUS_ACCURACY_HIGH:I = 0x3

.field public static final whitelist SENSOR_STATUS_ACCURACY_LOW:I = 0x1

.field public static final whitelist SENSOR_STATUS_ACCURACY_MEDIUM:I = 0x2

.field public static final whitelist SENSOR_STATUS_NO_CONTACT:I = -0x1

.field public static final whitelist SENSOR_STATUS_UNRELIABLE:I = 0x0

.field public static final whitelist SENSOR_TEMPERATURE:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist SENSOR_TRICORDER:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist STANDARD_GRAVITY:F = 9.80665f

.field protected static final greylist-max-o TAG:Ljava/lang/String; = "SensorManager"

.field private static final greylist-max-o sTempMatrix:[F


# instance fields
.field private greylist-max-o mLegacySensorManager:Landroid/hardware/LegacySensorManager;

.field private final greylist-max-o mSensorListByType:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Landroid/hardware/SensorManager;->sTempMatrix:[F

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    return-void
.end method

.method public static whitelist getAltitude(FF)F
    .locals 2

    div-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v0, 0x3fc85b95c0000000L    # 0.19029495120048523

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p0

    const p0, 0x472d2a00    # 44330.0f

    mul-float/2addr p1, p0

    return p1
.end method

.method public static whitelist getAngleChange([F[F[F)V
    .locals 25

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v0

    const/16 v3, 0xa

    const/4 v4, 0x7

    const/4 v5, 0x3

    const/16 v6, 0x10

    const/16 v7, 0x8

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x9

    if-ne v2, v15, :cond_0

    aget v2, v0, v13

    aget v16, v0, v12

    aget v17, v0, v11

    aget v18, v0, v5

    aget v19, v0, v10

    aget v20, v0, v9

    aget v21, v0, v8

    aget v22, v0, v4

    aget v0, v0, v7

    :goto_0
    move/from16 v23, v3

    goto :goto_1

    :cond_0
    array-length v2, v0

    if-ne v2, v6, :cond_1

    aget v2, v0, v13

    aget v16, v0, v12

    aget v17, v0, v11

    aget v18, v0, v10

    aget v19, v0, v9

    aget v20, v0, v8

    aget v21, v0, v7

    aget v22, v0, v15

    aget v0, v0, v3

    goto :goto_0

    :cond_1
    move/from16 v23, v3

    move v0, v14

    move v2, v0

    move/from16 v16, v2

    move/from16 v17, v16

    move/from16 v18, v17

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v21, v20

    move/from16 v22, v21

    :goto_1
    array-length v3, v1

    if-ne v3, v15, :cond_2

    aget v14, v1, v13

    aget v3, v1, v12

    aget v6, v1, v11

    aget v5, v1, v5

    aget v10, v1, v10

    aget v9, v1, v9

    aget v8, v1, v8

    aget v4, v1, v4

    aget v1, v1, v7

    move v7, v8

    move v8, v9

    move v9, v1

    move v1, v6

    move v6, v10

    goto :goto_2

    :cond_2
    array-length v3, v1

    if-ne v3, v6, :cond_3

    aget v14, v1, v13

    aget v3, v1, v12

    aget v4, v1, v11

    aget v5, v1, v10

    aget v6, v1, v9

    aget v8, v1, v8

    aget v7, v1, v7

    aget v9, v1, v15

    aget v1, v1, v23

    move/from16 v24, v9

    move v9, v1

    move v1, v4

    move/from16 v4, v24

    goto :goto_2

    :cond_3
    move v1, v14

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    :goto_2
    mul-float v14, v14, v16

    mul-float v5, v5, v19

    add-float/2addr v14, v5

    mul-float v7, v7, v22

    add-float/2addr v14, v7

    mul-float v3, v3, v16

    mul-float v6, v6, v19

    add-float/2addr v3, v6

    mul-float v4, v4, v22

    add-float/2addr v3, v4

    mul-float/2addr v2, v1

    mul-float v18, v18, v8

    add-float v2, v2, v18

    mul-float v21, v21, v9

    add-float v2, v2, v21

    mul-float v16, v16, v1

    mul-float v19, v19, v8

    add-float v16, v16, v19

    mul-float v22, v22, v9

    add-float v4, v16, v22

    mul-float v1, v1, v17

    mul-float v8, v8, v20

    add-float/2addr v1, v8

    mul-float/2addr v9, v0

    add-float/2addr v1, v9

    float-to-double v5, v14

    float-to-double v7, v3

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float v0, v5

    aput v0, p0, v13

    neg-float v0, v4

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->asin(D)D

    move-result-wide v3

    double-to-float v0, v3

    aput v0, p0, v12

    neg-float v0, v2

    float-to-double v2, v0

    float-to-double v0, v1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p0, v11

    return-void
.end method

.method private static greylist-max-o getDelay(I)I
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    const p0, 0x30d40

    return p0

    :cond_1
    const p0, 0x1046b

    return p0

    :cond_2
    const/16 p0, 0x4e20

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static whitelist getInclination([F)F
    .locals 4

    array-length v0, p0

    const/16 v1, 0x9

    const/4 v2, 0x5

    if-ne v0, v1, :cond_0

    aget v0, p0, v2

    float-to-double v0, v0

    const/4 v2, 0x4

    aget p0, p0, v2

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    :goto_0
    double-to-float p0, v0

    return p0

    :cond_0
    const/4 v0, 0x6

    aget v0, p0, v0

    float-to-double v0, v0

    aget p0, p0, v2

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method private greylist-max-o getLegacySensorManager()Landroid/hardware/LegacySensorManager;
    .locals 3

    iget-object v0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    if-nez v1, :cond_0

    const-string v1, "SensorManager"

    const-string v2, "This application is using deprecated SensorManager API which will be removed someday.  Please consider switching to the new API."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/hardware/LegacySensorManager;

    invoke-direct {v1, p0}, Landroid/hardware/LegacySensorManager;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    :cond_0
    iget-object p0, p0, Landroid/hardware/SensorManager;->mLegacySensorManager:Landroid/hardware/LegacySensorManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static whitelist getOrientation([F[F)[F
    .locals 10

    array-length v0, p0

    const/16 v1, 0x8

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x9

    if-ne v0, v5, :cond_0

    aget v0, p0, v4

    float-to-double v5, v0

    const/4 v0, 0x4

    aget v0, p0, v0

    float-to-double v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    double-to-float v0, v5

    aput v0, p1, v3

    const/4 v0, 0x7

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    double-to-float v0, v5

    aput v0, p1, v4

    const/4 v0, 0x6

    aget v0, p0, v0

    neg-float v0, v0

    float-to-double v3, v0

    aget p0, p0, v1

    float-to-double v0, p0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p0, v0

    aput p0, p1, v2

    return-object p1

    :cond_0
    aget v0, p0, v4

    float-to-double v6, v0

    const/4 v0, 0x5

    aget v0, p0, v0

    float-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v0, v6

    aput v0, p1, v3

    aget v0, p0, v5

    neg-float v0, v0

    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->asin(D)D

    move-result-wide v5

    double-to-float v0, v5

    aput v0, p1, v4

    aget v0, p0, v1

    neg-float v0, v0

    float-to-double v0, v0

    const/16 v3, 0xa

    aget p0, p0, v3

    float-to-double v3, p0

    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p0, v0

    aput p0, p1, v2

    return-object p1
.end method

.method public static whitelist getQuaternionFromVector([F[F)V
    .locals 7

    array-length v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lt v0, v1, :cond_0

    aget v0, p1, v2

    aput v0, p0, v5

    goto :goto_0

    :cond_0
    aget v0, p1, v5

    mul-float/2addr v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    aget v0, p1, v4

    mul-float/2addr v0, v0

    sub-float/2addr v1, v0

    aget v0, p1, v3

    mul-float/2addr v0, v0

    sub-float/2addr v1, v0

    aput v1, p0, v5

    const/4 v0, 0x0

    cmpl-float v6, v1, v0

    if-lez v6, :cond_1

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    :cond_1
    aput v0, p0, v5

    :goto_0
    aget v0, p1, v5

    aput v0, p0, v4

    aget v0, p1, v4

    aput v0, p0, v3

    aget p1, p1, v3

    aput p1, p0, v2

    return-void
.end method

.method public static whitelist getRotationMatrix([F[F[F[F)Z
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    aget v3, p2, v2

    const/4 v4, 0x1

    aget v5, p2, v4

    const/4 v6, 0x2

    aget v7, p2, v6

    mul-float v8, v3, v3

    mul-float v9, v5, v5

    add-float/2addr v8, v9

    mul-float v9, v7, v7

    add-float/2addr v8, v9

    const v9, 0x3f765d4b

    cmpg-float v9, v8, v9

    if-gez v9, :cond_0

    return v2

    :cond_0
    aget v9, p3, v2

    aget v10, p3, v4

    aget v11, p3, v6

    mul-float v12, v10, v7

    mul-float v13, v11, v5

    sub-float/2addr v12, v13

    mul-float v13, v11, v3

    mul-float v14, v9, v7

    sub-float/2addr v13, v14

    mul-float v14, v9, v5

    mul-float v15, v10, v3

    sub-float/2addr v14, v15

    mul-float v15, v12, v12

    mul-float v16, v13, v13

    add-float v15, v15, v16

    mul-float v16, v14, v14

    add-float v15, v15, v16

    move/from16 v16, v2

    move/from16 v17, v3

    float-to-double v2, v15

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3dcccccd    # 0.1f

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    return v16

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    mul-float/2addr v12, v2

    mul-float/2addr v13, v2

    mul-float/2addr v14, v2

    move/from16 p2, v3

    move v2, v4

    float-to-double v3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    div-float v3, p2, v3

    mul-float v4, v17, v3

    mul-float/2addr v5, v3

    mul-float/2addr v7, v3

    mul-float v3, v5, v14

    mul-float v8, v7, v13

    sub-float/2addr v3, v8

    mul-float v8, v7, v12

    mul-float v15, v4, v14

    sub-float/2addr v8, v15

    mul-float v15, v4, v13

    mul-float v17, v5, v12

    sub-float v15, v15, v17

    const/16 v17, 0xf

    const/16 v18, 0xe

    const/16 v19, 0xd

    const/16 v20, 0xc

    const/16 v21, 0xb

    const/16 v22, 0xa

    move/from16 p3, v2

    const/16 v23, 0x8

    const/16 v24, 0x7

    const/16 v25, 0x6

    const/16 v26, 0x5

    const/16 v27, 0x4

    const/16 v28, 0x3

    move/from16 v29, v6

    const/16 v6, 0x9

    const/16 v30, 0x0

    if-eqz v0, :cond_3

    array-length v2, v0

    if-ne v2, v6, :cond_2

    aput v12, v0, v16

    aput v13, v0, p3

    aput v14, v0, v29

    aput v3, v0, v28

    aput v8, v0, v27

    aput v15, v0, v26

    aput v4, v0, v25

    aput v5, v0, v24

    aput v7, v0, v23

    goto :goto_0

    :cond_2
    array-length v2, v0

    move/from16 v31, v6

    const/16 v6, 0x10

    if-ne v2, v6, :cond_4

    aput v12, v0, v16

    aput v13, v0, p3

    aput v14, v0, v29

    aput v30, v0, v28

    aput v3, v0, v27

    aput v8, v0, v26

    aput v15, v0, v25

    aput v30, v0, v24

    aput v4, v0, v23

    aput v5, v0, v31

    aput v7, v0, v22

    aput v30, v0, v21

    aput v30, v0, v20

    aput v30, v0, v19

    aput v30, v0, v18

    aput p2, v0, v17

    goto :goto_1

    :cond_3
    :goto_0
    move/from16 v31, v6

    :cond_4
    :goto_1
    if-eqz v1, :cond_6

    mul-float v0, v9, v9

    mul-float v2, v10, v10

    add-float/2addr v0, v2

    mul-float v2, v11, v11

    add-float/2addr v0, v2

    float-to-double v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v0, v12

    div-float v0, p2, v0

    mul-float/2addr v3, v9

    mul-float/2addr v8, v10

    add-float/2addr v3, v8

    mul-float/2addr v15, v11

    add-float/2addr v3, v15

    mul-float/2addr v3, v0

    mul-float/2addr v9, v4

    mul-float/2addr v10, v5

    add-float/2addr v9, v10

    mul-float/2addr v11, v7

    add-float/2addr v9, v11

    mul-float/2addr v9, v0

    array-length v0, v1

    move/from16 v2, v31

    if-ne v0, v2, :cond_5

    aput p2, v1, v16

    aput v30, v1, p3

    aput v30, v1, v29

    aput v30, v1, v28

    aput v3, v1, v27

    aput v9, v1, v26

    aput v30, v1, v25

    neg-float v0, v9

    aput v0, v1, v24

    aput v3, v1, v23

    goto :goto_2

    :cond_5
    array-length v0, v1

    const/16 v6, 0x10

    if-ne v0, v6, :cond_6

    aput p2, v1, v16

    aput v30, v1, p3

    aput v30, v1, v29

    aput v30, v1, v27

    aput v3, v1, v26

    aput v9, v1, v25

    aput v30, v1, v23

    neg-float v0, v9

    const/16 v31, 0x9

    aput v0, v1, v31

    aput v3, v1, v22

    aput v30, v1, v18

    aput v30, v1, v19

    aput v30, v1, v20

    aput v30, v1, v21

    aput v30, v1, v24

    aput v30, v1, v28

    aput p2, v1, v17

    :cond_6
    :goto_2
    return p3
.end method

.method public static whitelist getRotationMatrixFromVector([F[F)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    const/4 v6, 0x2

    aget v7, v1, v6

    array-length v8, v1

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x4

    if-lt v8, v12, :cond_0

    aget v1, v1, v9

    goto :goto_0

    :cond_0
    mul-float v1, v3, v3

    sub-float v1, v11, v1

    mul-float v8, v5, v5

    sub-float/2addr v1, v8

    mul-float v8, v7, v7

    sub-float/2addr v1, v8

    cmpl-float v8, v1, v10

    if-lez v8, :cond_1

    float-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v1, v13

    goto :goto_0

    :cond_1
    move v1, v10

    :goto_0
    const/high16 v8, 0x40000000    # 2.0f

    mul-float v13, v3, v8

    mul-float/2addr v3, v13

    mul-float v14, v5, v8

    mul-float v15, v14, v5

    mul-float/2addr v8, v7

    mul-float v16, v8, v7

    mul-float/2addr v5, v13

    mul-float/2addr v8, v1

    mul-float v17, v13, v7

    mul-float v18, v14, v1

    mul-float/2addr v14, v7

    mul-float/2addr v13, v1

    array-length v1, v0

    const/16 v7, 0x8

    const/16 v19, 0x7

    const/16 v20, 0x6

    const/16 v21, 0x5

    move/from16 v22, v2

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    sub-float v1, v11, v15

    sub-float v1, v1, v16

    aput v1, v0, v22

    sub-float v1, v5, v8

    aput v1, v0, v4

    add-float v1, v17, v18

    aput v1, v0, v6

    add-float/2addr v5, v8

    aput v5, v0, v9

    sub-float/2addr v11, v3

    sub-float v1, v11, v16

    aput v1, v0, v12

    sub-float v1, v14, v13

    aput v1, v0, v21

    sub-float v17, v17, v18

    aput v17, v0, v20

    add-float/2addr v14, v13

    aput v14, v0, v19

    sub-float/2addr v11, v15

    aput v11, v0, v7

    return-void

    :cond_2
    array-length v1, v0

    move/from16 p1, v2

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    sub-float v1, v11, v15

    sub-float v1, v1, v16

    aput v1, v0, v22

    sub-float v1, v5, v8

    aput v1, v0, v4

    add-float v1, v17, v18

    aput v1, v0, v6

    aput v10, v0, v9

    add-float/2addr v5, v8

    aput v5, v0, v12

    sub-float v1, v11, v3

    sub-float v2, v1, v16

    aput v2, v0, v21

    sub-float v2, v14, v13

    aput v2, v0, v20

    aput v10, v0, v19

    sub-float v17, v17, v18

    aput v17, v0, v7

    add-float/2addr v14, v13

    aput v14, v0, p1

    const/16 v2, 0xa

    sub-float/2addr v1, v15

    aput v1, v0, v2

    const/16 v1, 0xb

    aput v10, v0, v1

    const/16 v1, 0xe

    aput v10, v0, v1

    const/16 v1, 0xd

    aput v10, v0, v1

    const/16 v1, 0xc

    aput v10, v0, v1

    const/16 v1, 0xf

    aput v11, v0, v1

    :cond_3
    return-void
.end method

.method public static whitelist remapCoordinateSystem([FII[F)Z
    .locals 2

    if-ne p0, p3, :cond_2

    sget-object v0, Landroid/hardware/SensorManager;->sTempMatrix:[F

    monitor-enter v0

    :try_start_0
    invoke-static {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result v1

    if-eqz v1, :cond_1

    array-length p0, p3

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p0, :cond_0

    aget p2, v0, p1

    aput p2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    invoke-static {p0, p1, p2, p3}, Landroid/hardware/SensorManager;->remapCoordinateSystemImpl([FII[F)Z

    move-result p0

    return p0
.end method

.method private static greylist-max-o remapCoordinateSystemImpl([FII[F)Z
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    array-length v4, v3

    array-length v5, v0

    const/4 v6, 0x0

    if-eq v5, v4, :cond_0

    return v6

    :cond_0
    and-int/lit8 v5, v1, 0x7c

    if-nez v5, :cond_13

    and-int/lit8 v5, v2, 0x7c

    if-eqz v5, :cond_1

    goto/16 :goto_c

    :cond_1
    and-int/lit8 v5, v1, 0x3

    if-eqz v5, :cond_12

    and-int/lit8 v7, v2, 0x3

    if-nez v7, :cond_2

    goto/16 :goto_b

    :cond_2
    if-ne v5, v7, :cond_3

    return v6

    :cond_3
    xor-int v8, v1, v2

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    sub-int/2addr v7, v9

    and-int/lit8 v10, v8, 0x3

    add-int/lit8 v11, v10, -0x1

    rem-int/lit8 v12, v10, 0x3

    add-int/lit8 v10, v10, 0x1

    const/4 v13, 0x3

    rem-int/2addr v10, v13

    xor-int/2addr v12, v5

    xor-int/2addr v10, v7

    or-int/2addr v10, v12

    if-eqz v10, :cond_4

    xor-int/lit16 v8, v8, 0x80

    :cond_4
    const/16 v10, 0x80

    if-lt v1, v10, :cond_5

    move v1, v9

    goto :goto_0

    :cond_5
    move v1, v6

    :goto_0
    if-lt v2, v10, :cond_6

    move v2, v9

    goto :goto_1

    :cond_6
    move v2, v6

    :goto_1
    if-lt v8, v10, :cond_7

    move v8, v9

    goto :goto_2

    :cond_7
    move v8, v6

    :goto_2
    const/16 v10, 0x10

    if-ne v4, v10, :cond_8

    const/4 v12, 0x4

    goto :goto_3

    :cond_8
    move v12, v13

    :goto_3
    move v14, v6

    :goto_4
    if-ge v14, v13, :cond_10

    mul-int v15, v14, v12

    move/from16 v16, v6

    :goto_5
    if-ge v6, v13, :cond_f

    if-ne v5, v6, :cond_a

    add-int v17, v15, v6

    move/from16 v18, v9

    if-eqz v1, :cond_9

    aget v9, v0, v15

    neg-float v9, v9

    goto :goto_6

    :cond_9
    aget v9, v0, v15

    :goto_6
    aput v9, v3, v17

    goto :goto_7

    :cond_a
    move/from16 v18, v9

    :goto_7
    if-ne v7, v6, :cond_c

    add-int v9, v15, v6

    if-eqz v2, :cond_b

    add-int/lit8 v17, v15, 0x1

    move/from16 v19, v13

    aget v13, v0, v17

    neg-float v13, v13

    goto :goto_8

    :cond_b
    move/from16 v19, v13

    add-int/lit8 v13, v15, 0x1

    aget v13, v0, v13

    :goto_8
    aput v13, v3, v9

    goto :goto_9

    :cond_c
    move/from16 v19, v13

    :goto_9
    if-ne v11, v6, :cond_e

    add-int v9, v15, v6

    add-int/lit8 v13, v15, 0x2

    if-eqz v8, :cond_d

    aget v13, v0, v13

    neg-float v13, v13

    goto :goto_a

    :cond_d
    aget v13, v0, v13

    :goto_a
    aput v13, v3, v9

    :cond_e
    add-int/lit8 v6, v6, 0x1

    move/from16 v9, v18

    move/from16 v13, v19

    goto :goto_5

    :cond_f
    move/from16 v18, v9

    move/from16 v19, v13

    add-int/lit8 v14, v14, 0x1

    move/from16 v6, v16

    goto :goto_4

    :cond_10
    move/from16 v18, v9

    move/from16 v19, v13

    if-ne v4, v10, :cond_11

    const/16 v0, 0xe

    const/4 v1, 0x0

    aput v1, v3, v0

    const/16 v0, 0xd

    aput v1, v3, v0

    const/16 v0, 0xc

    aput v1, v3, v0

    const/16 v0, 0xb

    aput v1, v3, v0

    const/4 v0, 0x7

    aput v1, v3, v0

    aput v1, v3, v19

    const/16 v0, 0xf

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, v3, v0

    :cond_11
    return v18

    :cond_12
    :goto_b
    move/from16 v16, v6

    return v16

    :cond_13
    :goto_c
    move/from16 v16, v6

    return v16
.end method


# virtual methods
.method public whitelist cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z

    move-result p0

    return p0
.end method

.method protected abstract greylist-max-o cancelTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;Z)Z
.end method

.method protected abstract greylist-max-o configureDirectChannelImpl(Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;I)I
.end method

.method public whitelist createDirectChannel(Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/SensorManager;->createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;

    move-result-object p0

    return-object p0
.end method

.method public whitelist createDirectChannel(Landroid/os/MemoryFile;)Landroid/hardware/SensorDirectChannel;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;

    move-result-object p0

    return-object p0
.end method

.method protected abstract greylist-max-o createDirectChannelImpl(Landroid/os/MemoryFile;Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;
.end method

.method greylist-max-o destroyDirectChannel(Landroid/hardware/SensorDirectChannel;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V

    return-void
.end method

.method protected abstract greylist-max-o destroyDirectChannelImpl(Landroid/hardware/SensorDirectChannel;)V
.end method

.method public whitelist flush(Landroid/hardware/SensorEventListener;)Z
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->flushImpl(Landroid/hardware/SensorEventListener;)Z

    move-result p0

    return p0
.end method

.method protected abstract greylist-max-o flushImpl(Landroid/hardware/SensorEventListener;)Z
.end method

.method public whitelist getDefaultSensor(I)Landroid/hardware/Sensor;
    .locals 6

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eq p1, v2, :cond_1

    const/16 v3, 0x11

    if-eq p1, v3, :cond_1

    const/16 v3, 0x16

    if-eq p1, v3, :cond_1

    const/16 v3, 0x17

    if-eq p1, v3, :cond_1

    const/16 v3, 0x18

    if-eq p1, v3, :cond_1

    const/16 v3, 0x19

    if-eq p1, v3, :cond_1

    const/16 v3, 0x22

    if-eq p1, v3, :cond_1

    const/16 v3, 0x1a

    if-eq p1, v3, :cond_1

    const v3, 0x10073

    if-eq p1, v3, :cond_1

    const v3, 0x10075    # 9.2E-41f

    if-eq p1, v3, :cond_1

    const/16 v3, 0x20

    if-eq p1, v3, :cond_1

    const/16 v3, 0x24

    if-eq p1, v3, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v5

    if-ne v5, v3, :cond_2

    return-object v4

    :cond_3
    const-string v0, "SensorManager"

    if-ne p1, v2, :cond_6

    invoke-virtual {p0, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v5

    if-ne v5, v3, :cond_4

    const-string p0, "get Physical proximity"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_5
    move p1, v2

    :cond_6
    const v2, 0x10041

    if-ne p1, v2, :cond_8

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v5

    if-ne v5, v3, :cond_7

    const-string p0, "get light sensor instead of autobrightness"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_8
    const/high16 v2, 0x10000

    if-le p1, v2, :cond_9

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/Sensor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get Sensor type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getDefaultSensor(IZ)Landroid/hardware/Sensor;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Sensor;

    invoke-virtual {p1}, Landroid/hardware/Sensor;->isWakeUpSensor()Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getDynamicSensorList(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullDynamicSensorList()Ljava/util/List;

    move-result-object p0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected abstract greylist-max-o getFullDynamicSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract greylist-max-o getFullSensorList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation
.end method

.method public blacklist getSensorByHandle(I)Landroid/hardware/Sensor;
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getHandle()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getSensorList(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/hardware/SensorManager;->getFullSensorList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_3

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, p1, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object v0, v2

    :goto_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iget-object p0, p0, Landroid/hardware/SensorManager;->mSensorListByType:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_3
    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist getSensors()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/LegacySensorManager;->getSensors()I

    move-result p0

    return p0
.end method

.method public whitelist initDataInjection(Z)Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->initDataInjectionImpl(ZI)Z

    move-result p0

    return p0
.end method

.method public blacklist initDataInjection(ZI)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->initDataInjectionImpl(ZI)Z

    move-result p0

    return p0
.end method

.method protected abstract blacklist initDataInjectionImpl(ZI)Z
.end method

.method public whitelist injectSensorData(Landroid/hardware/Sensor;[FIJ)Z
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    const/16 v0, 0x17

    invoke-static {p1, v0}, Landroid/hardware/Sensor;->getMaxLengthValuesArray(Landroid/hardware/Sensor;I)I

    move-result v0

    array-length v1, p2

    if-ne v1, v0, :cond_2

    const/4 v0, -0x1

    if-lt p3, v0, :cond_1

    const/4 v0, 0x3

    if-gt p3, v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    invoke-virtual/range {p0 .. p5}, Landroid/hardware/SensorManager;->injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative or zero sensor timestamp"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid sensor accuracy"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Wrong number of values for sensor "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " actual="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " expected="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sensor data cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sensor cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected abstract greylist-max-o injectSensorDataImpl(Landroid/hardware/Sensor;[FIJ)Z
.end method

.method public whitelist isDynamicSensorDiscoverySupported()Z
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public whitelist registerDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected abstract greylist-max-o registerDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;Landroid/os/Handler;)V
.end method

.method public whitelist registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result p0

    return p0
.end method

.method public whitelist registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z
    .locals 7

    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result p0

    return p0
.end method

.method public whitelist registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z
    .locals 7

    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result p0

    return p0
.end method

.method public whitelist registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z
    .locals 7

    invoke-static {p3}, Landroid/hardware/SensorManager;->getDelay(I)I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/SensorManager;->registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z

    move-result p0

    return p0
.end method

.method public whitelist registerListener(Landroid/hardware/SensorListener;I)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result p0

    return p0
.end method

.method public whitelist registerListener(Landroid/hardware/SensorListener;II)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/hardware/LegacySensorManager;->registerListener(Landroid/hardware/SensorListener;II)Z

    move-result p0

    return p0
.end method

.method protected abstract greylist-max-o registerListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;II)Z
.end method

.method public whitelist requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result p0

    return p0
.end method

.method protected abstract greylist-max-o requestTriggerSensorImpl(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z
.end method

.method public blacklist setActiveScreenParameter(I)V
    .locals 5

    const v0, 0x10032

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Sensor;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v3, v1, v2

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const v3, 0x20047c1

    aput v3, v1, v2

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    const v3, 0x30047c1

    aput v3, v1, v2

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/hardware/SensorAdditionalInfo;->createSContextData(Landroid/hardware/Sensor;[I)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "set parameter active screen = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v2

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SensorManager"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "set parameter active screen failed "

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public blacklist setBrightnessHysteresisParameter([F)V
    .locals 3

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getVersion()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const-string v0, "Inject hysteresis info"

    const-string v2, "SensorManager"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x10000002

    :try_start_0
    invoke-static {v1, v0, p1}, Landroid/hardware/SensorAdditionalInfo;->createCustomInfo(Landroid/hardware/Sensor;I[F)Landroid/hardware/SensorAdditionalInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "Inject hysteresis info failed "

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "IllegalArgumentException"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public greylist-max-o setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result p0

    return p0
.end method

.method protected abstract greylist-max-o setOperationParameterImpl(Landroid/hardware/SensorAdditionalInfo;)Z
.end method

.method public whitelist unregisterDynamicSensorCallback(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/hardware/SensorManager;->unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V

    return-void
.end method

.method protected abstract greylist-max-o unregisterDynamicSensorCallbackImpl(Landroid/hardware/SensorManager$DynamicSensorCallback;)V
.end method

.method public whitelist unregisterListener(Landroid/hardware/SensorEventListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    return-void
.end method

.method public whitelist unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/hardware/SensorManager;->unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public whitelist unregisterListener(Landroid/hardware/SensorListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0xff

    invoke-virtual {p0, p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    return-void
.end method

.method public whitelist unregisterListener(Landroid/hardware/SensorListener;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Landroid/hardware/SensorManager;->getLegacySensorManager()Landroid/hardware/LegacySensorManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/hardware/LegacySensorManager;->unregisterListener(Landroid/hardware/SensorListener;I)V

    return-void
.end method

.method protected abstract greylist-max-o unregisterListenerImpl(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V
.end method
