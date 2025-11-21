.class public Landroid/location/Location;
.super Ljava/lang/Object;
.source "Location.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/Location$BearingDistanceCache;,
        Landroid/location/Location$Format;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_NO_GPS_LOCATION:Ljava/lang/String; = "noGPSLocation"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_DEGREES:I = 0x0

.field public static final whitelist FORMAT_MINUTES:I = 0x1

.field public static final whitelist FORMAT_SECONDS:I = 0x2

.field private static final blacklist HAS_ALTITUDE_ACCURACY_MASK:I = 0x20

.field private static final greylist-max-o HAS_ALTITUDE_MASK:I = 0x1

.field private static final greylist-max-o HAS_BEARING_ACCURACY_MASK:I = 0x80

.field private static final greylist-max-o HAS_BEARING_MASK:I = 0x4

.field private static final blacklist HAS_ELAPSED_REALTIME_UNCERTAINTY_MASK:I = 0x100

.field private static final greylist-max-o HAS_HORIZONTAL_ACCURACY_MASK:I = 0x8

.field private static final greylist-max-o HAS_MOCK_PROVIDER_MASK:I = 0x10

.field private static final blacklist HAS_MSL_ALTITUDE_ACCURACY_MASK:I = 0x400

.field private static final blacklist HAS_MSL_ALTITUDE_MASK:I = 0x200

.field private static final greylist-max-o HAS_SPEED_ACCURACY_MASK:I = 0x40

.field private static final greylist-max-o HAS_SPEED_MASK:I = 0x2

.field private static final greylist-max-o sBearingDistanceCache:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/location/Location$BearingDistanceCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAltitudeAccuracyMeters:F

.field private blacklist mAltitudeMeters:D

.field private greylist-max-o mBearingAccuracyDegrees:F

.field private blacklist mBearingDegrees:F

.field private blacklist mElapsedRealtimeNs:J

.field private blacklist mElapsedRealtimeUncertaintyNs:D

.field private greylist-max-o mExtras:Landroid/os/Bundle;

.field private blacklist mFieldsMask:I

.field private greylist-max-o mHorizontalAccuracyMeters:F

.field private blacklist mLatitudeDegrees:D

.field private blacklist mLongitudeDegrees:D

.field private blacklist mMslAltitudeAccuracyMeters:F

.field private blacklist mMslAltitudeMeters:D

.field private blacklist mProvider:Ljava/lang/String;

.field private greylist-max-o mSpeedAccuracyMetersPerSecond:F

.field private blacklist mSpeedMetersPerSecond:F

.field private blacklist mTimeMs:J


# direct methods
.method public static synthetic blacklist $r8$lambda$LCoyno7iOKo6n1w2mcfX-qv702o()Landroid/location/Location$BearingDistanceCache;
    .locals 2

    new-instance v0, Landroid/location/Location$BearingDistanceCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/location/Location$BearingDistanceCache;-><init>(Landroid/location/Location-IA;)V

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAltitudeAccuracyMeters(Landroid/location/Location;F)V
    .locals 0

    iput p1, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmAltitudeMeters(Landroid/location/Location;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mAltitudeMeters:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBearingAccuracyDegrees(Landroid/location/Location;F)V
    .locals 0

    iput p1, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmBearingDegrees(Landroid/location/Location;F)V
    .locals 0

    iput p1, p0, Landroid/location/Location;->mBearingDegrees:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmElapsedRealtimeNs(Landroid/location/Location;J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmElapsedRealtimeUncertaintyNs(Landroid/location/Location;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExtras(Landroid/location/Location;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFieldsMask(Landroid/location/Location;I)V
    .locals 0

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHorizontalAccuracyMeters(Landroid/location/Location;F)V
    .locals 0

    iput p1, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLatitudeDegrees(Landroid/location/Location;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLongitudeDegrees(Landroid/location/Location;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mLongitudeDegrees:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMslAltitudeAccuracyMeters(Landroid/location/Location;F)V
    .locals 0

    iput p1, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmMslAltitudeMeters(Landroid/location/Location;D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSpeedAccuracyMetersPerSecond(Landroid/location/Location;F)V
    .locals 0

    iput p1, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSpeedMetersPerSecond(Landroid/location/Location;F)V
    .locals 0

    iput p1, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTimeMs(Landroid/location/Location;J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mTimeMs:J

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/location/Location$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/location/Location$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    sput-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/location/Location$1;

    invoke-direct {v0}, Landroid/location/Location$1;-><init>()V

    sput-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/location/Location;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-void
.end method

.method private static blacklist areExtrasEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p0, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->kindofEquals(Landroid/os/BaseBundle;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_4
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method private static greylist-max-o computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V
    .locals 66

    move-object/from16 v0, p8

    const-wide v1, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double v3, p0, v1

    mul-double v5, p4, v1

    mul-double v7, p2, v1

    mul-double v1, v1, p6

    sub-double v9, v1, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v11

    const-wide v13, 0x3fefe488a57a12e4L    # 0.996647189328169

    mul-double/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->atan(D)D

    move-result-wide v11

    invoke-static {v5, v6}, Ljava/lang/Math;->tan(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->atan(D)D

    move-result-wide v13

    invoke-static {v11, v12}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double v19, v15, v17

    mul-double v21, v11, v13

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    move-wide/from16 p0, v9

    move-wide/from16 v27, v23

    move-wide/from16 v29, v27

    move-wide/from16 v31, v29

    move-wide/from16 v33, v31

    move-wide/from16 v35, v33

    move/from16 v9, v25

    move-wide/from16 v25, p0

    :goto_0
    const/16 v10, 0x14

    if-ge v9, v10, :cond_3

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v35

    mul-double v27, v17, v35

    mul-double v29, v15, v13

    mul-double v33, v11, v17

    mul-double v33, v33, v31

    sub-double v29, v29, v33

    mul-double v27, v27, v27

    mul-double v29, v29, v29

    add-double v27, v27, v29

    move/from16 p2, v9

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v9

    mul-double v27, v19, v31

    move-wide/from16 p3, v13

    add-double v13, v21, v27

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v27

    cmpl-double v29, v9, v23

    if-nez v29, :cond_0

    move-wide/from16 v29, v23

    goto :goto_1

    :cond_0
    mul-double v29, v19, v35

    div-double v29, v29, v9

    :goto_1
    mul-double v33, v29, v29

    const-wide/high16 v37, 0x3ff0000000000000L    # 1.0

    sub-double v33, v37, v33

    cmpl-double v39, v33, v23

    const-wide/high16 v40, 0x4000000000000000L    # 2.0

    if-nez v39, :cond_1

    move-wide/from16 v42, v23

    goto :goto_2

    :cond_1
    mul-double v42, v21, v40

    div-double v42, v42, v33

    sub-double v42, v13, v42

    :goto_2
    const-wide v44, 0x3f7b9adfe2939d71L    # 0.006739496756586903

    mul-double v44, v44, v33

    const-wide/high16 v46, 0x40d0000000000000L    # 16384.0

    div-double v46, v44, v46

    const-wide v48, 0x4065e00000000000L    # 175.0

    mul-double v48, v48, v44

    const-wide/high16 v50, 0x4074000000000000L    # 320.0

    sub-double v50, v50, v48

    mul-double v50, v50, v44

    const-wide/high16 v48, -0x3f78000000000000L    # -768.0

    add-double v50, v50, v48

    mul-double v50, v50, v44

    const-wide/high16 v48, 0x40b0000000000000L    # 4096.0

    add-double v50, v50, v48

    mul-double v46, v46, v50

    add-double v46, v46, v37

    const-wide/high16 v48, 0x4090000000000000L    # 1024.0

    div-double v48, v44, v48

    const-wide v50, 0x4047800000000000L    # 47.0

    mul-double v50, v50, v44

    const-wide v52, 0x4052800000000000L    # 74.0

    sub-double v52, v52, v50

    mul-double v52, v52, v44

    const-wide/high16 v50, -0x3fa0000000000000L    # -128.0

    add-double v52, v52, v50

    mul-double v44, v44, v52

    const-wide/high16 v50, 0x4070000000000000L    # 256.0

    add-double v44, v44, v50

    mul-double v48, v48, v44

    const-wide v44, 0x3f2b775a85ed1bbcL    # 2.0955066698943685E-4

    mul-double v44, v44, v33

    const-wide/high16 v50, 0x4008000000000000L    # 3.0

    mul-double v33, v33, v50

    const-wide/high16 v50, 0x4010000000000000L    # 4.0

    sub-double v33, v50, v33

    const-wide v52, 0x3f6b775a85ed1bbcL    # 0.0033528106718309896

    mul-double v33, v33, v52

    add-double v33, v33, v50

    mul-double v44, v44, v33

    mul-double v33, v42, v42

    mul-double v54, v48, v9

    div-double v56, v48, v50

    mul-double v58, v33, v40

    const-wide/high16 v60, -0x4010000000000000L    # -1.0

    add-double v58, v58, v60

    mul-double v58, v58, v13

    const-wide/high16 v62, 0x4018000000000000L    # 6.0

    div-double v48, v48, v62

    mul-double v48, v48, v42

    mul-double v62, v9, v50

    mul-double v62, v62, v9

    const-wide/high16 v64, -0x3ff8000000000000L    # -3.0

    add-double v62, v62, v64

    mul-double v48, v48, v62

    mul-double v33, v33, v50

    add-double v33, v33, v64

    mul-double v48, v48, v33

    sub-double v58, v58, v48

    mul-double v56, v56, v58

    add-double v56, v42, v56

    mul-double v33, v54, v56

    sub-double v37, v37, v44

    mul-double v37, v37, v52

    mul-double v37, v37, v29

    mul-double v9, v9, v44

    mul-double v44, v44, v13

    mul-double v40, v40, v42

    mul-double v40, v40, v42

    add-double v40, v40, v60

    mul-double v44, v44, v40

    add-double v42, v42, v44

    mul-double v9, v9, v42

    add-double v9, v27, v9

    mul-double v37, v37, v9

    add-double v9, p0, v37

    sub-double v13, v9, v25

    div-double/2addr v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v25, 0x3d719799812dea11L    # 1.0E-12

    cmpg-double v13, v13, v25

    if-gez v13, :cond_2

    move-wide/from16 v29, v33

    move-wide/from16 v33, v46

    goto :goto_3

    :cond_2
    add-int/lit8 v13, p2, 0x1

    move-wide/from16 v25, v9

    move v9, v13

    move-wide/from16 v29, v33

    move-wide/from16 v33, v46

    move-wide/from16 v13, p3

    goto/16 :goto_0

    :cond_3
    move-wide/from16 p3, v13

    :goto_3
    const-wide v9, 0x41583fc4141bda51L    # 6356752.3142

    mul-double v9, v9, v33

    sub-double v27, v27, v29

    mul-double v9, v9, v27

    double-to-float v9, v9

    iput v9, v0, Landroid/location/Location$BearingDistanceCache;->mDistance:F

    mul-double v9, v17, v35

    mul-double v13, v15, p3

    mul-double v19, v11, v17

    mul-double v19, v19, v31

    move-wide/from16 p0, v13

    sub-double v13, p0, v19

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    double-to-float v9, v9

    float-to-double v9, v9

    const-wide v13, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr v9, v13

    double-to-float v9, v9

    iput v9, v0, Landroid/location/Location$BearingDistanceCache;->mInitialBearing:F

    mul-double v9, v15, v35

    neg-double v11, v11

    mul-double v11, v11, v17

    mul-double v15, p0, v31

    add-double/2addr v11, v15

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    double-to-float v9, v9

    float-to-double v9, v9

    mul-double/2addr v9, v13

    double-to-float v9, v9

    iput v9, v0, Landroid/location/Location$BearingDistanceCache;->mFinalBearing:F

    iput-wide v3, v0, Landroid/location/Location$BearingDistanceCache;->mLat1:D

    iput-wide v5, v0, Landroid/location/Location$BearingDistanceCache;->mLat2:D

    iput-wide v7, v0, Landroid/location/Location$BearingDistanceCache;->mLon1:D

    iput-wide v1, v0, Landroid/location/Location$BearingDistanceCache;->mLon2:D

    return-void
.end method

.method public static whitelist convert(Ljava/lang/String;)D
    .locals 17

    move-object/from16 v0, p0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    const/4 v4, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move v0, v4

    goto :goto_0

    :cond_0
    move-object v2, v0

    move v0, v1

    :goto_0
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, ":"

    invoke-direct {v3, v2, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    const-string v6, "coordinate="

    if-lt v5, v4, :cond_b

    :try_start_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    if-ne v5, v4, :cond_2

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    if-eqz v0, :cond_1

    neg-double v0, v1

    return-wide v0

    :cond_1
    return-wide v1

    :cond_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-double v11, v5

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    move v3, v4

    goto :goto_1

    :cond_3
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    move v3, v1

    move-wide v13, v9

    :goto_1
    if-eqz v0, :cond_4

    const/16 v5, 0xb4

    if-ne v7, v5, :cond_4

    cmpl-double v5, v11, v9

    if-nez v5, :cond_4

    cmpl-double v5, v13, v9

    if-nez v5, :cond_4

    move v1, v4

    :cond_4
    int-to-double v4, v7

    cmpg-double v8, v4, v9

    if-ltz v8, :cond_a

    const/16 v8, 0xb3

    if-le v7, v8, :cond_5

    if-eqz v1, :cond_a

    :cond_5
    cmpg-double v1, v11, v9

    if-ltz v1, :cond_9

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    cmpl-double v1, v11, v7

    if-gez v1, :cond_9

    if-eqz v3, :cond_6

    const-wide v15, 0x404d800000000000L    # 59.0

    cmpl-double v1, v11, v15

    if-gtz v1, :cond_9

    :cond_6
    cmpg-double v1, v13, v9

    if-ltz v1, :cond_8

    cmpl-double v1, v13, v7

    if-gez v1, :cond_8

    const-wide v1, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v4, v1

    mul-double/2addr v11, v7

    add-double/2addr v4, v11

    add-double/2addr v4, v13

    div-double/2addr v4, v1

    if-eqz v0, :cond_7

    neg-double v0, v4

    return-wide v0

    :cond_7
    return-wide v4

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist convert(DI)Ljava/lang/String;
    .locals 7

    const-wide v4, 0x4066800000000000L    # 180.0

    const-string v6, "coordinate"

    const-wide v2, -0x3f99800000000000L    # -180.0

    move-wide v0, p0

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(DDDLjava/lang/String;)D

    const/4 p0, 0x2

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_1

    if-ne p2, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, p1

    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%d is an unrecognized format"

    invoke-static {v2, v4, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x0

    cmpg-double v3, v0, v3

    if-gez v3, :cond_2

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    neg-double v0, v0

    :cond_2
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, "###.#####"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    if-eq p2, p1, :cond_3

    if-ne p2, p0, :cond_4

    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p1, v4

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-double v5, p1

    sub-double/2addr v0, v5

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    mul-double/2addr v0, v5

    if-ne p2, p0, :cond_4

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-double p0, p0

    sub-double/2addr v0, p0

    mul-double/2addr v0, v5

    :cond_4
    invoke-virtual {v3, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist distanceBetween(DDDD[F)V
    .locals 12

    move-object/from16 v0, p8

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    sget-object v1, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/location/Location$BearingDistanceCache;

    move-wide v3, p0

    move-wide v5, p2

    move-wide/from16 v7, p4

    move-wide/from16 v9, p6

    invoke-static/range {v3 .. v11}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    const/4 p0, 0x0

    iget p1, v11, Landroid/location/Location$BearingDistanceCache;->mDistance:F

    aput p1, v0, p0

    array-length p0, v0

    if-le p0, v2, :cond_0

    iget p0, v11, Landroid/location/Location$BearingDistanceCache;->mInitialBearing:F

    aput p0, v0, v2

    array-length p0, v0

    const/4 p1, 0x2

    if-le p0, p1, :cond_0

    iget p0, v11, Landroid/location/Location$BearingDistanceCache;->mFinalBearing:F

    aput p0, v0, p1

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "results is null or has length < 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public whitelist bearingTo(Landroid/location/Location;)F
    .locals 10

    sget-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/location/Location$BearingDistanceCache;

    iget-wide v0, p0, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v2, v9, Landroid/location/Location$BearingDistanceCache;->mLat1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v2, v9, Landroid/location/Location$BearingDistanceCache;->mLon1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v2, v9, Landroid/location/Location$BearingDistanceCache;->mLat2:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v2, v9, Landroid/location/Location$BearingDistanceCache;->mLon2:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    iget-wide v1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v3, p0, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v5, p1, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v7, p1, Landroid/location/Location;->mLongitudeDegrees:D

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    :cond_1
    iget p0, v9, Landroid/location/Location$BearingDistanceCache;->mInitialBearing:F

    return p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist distanceTo(Landroid/location/Location;)F
    .locals 10

    sget-object v0, Landroid/location/Location;->sBearingDistanceCache:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/location/Location$BearingDistanceCache;

    iget-wide v0, p0, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v2, v9, Landroid/location/Location$BearingDistanceCache;->mLat1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v2, v9, Landroid/location/Location$BearingDistanceCache;->mLon1:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v2, v9, Landroid/location/Location$BearingDistanceCache;->mLat2:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p1, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v2, v9, Landroid/location/Location$BearingDistanceCache;->mLon2:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    iget-wide v1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v3, p0, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v5, p1, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v7, p1, Landroid/location/Location;->mLongitudeDegrees:D

    invoke-static/range {v1 .. v9}, Landroid/location/Location;->computeDistanceAndBearing(DDDDLandroid/location/Location$BearingDistanceCache;)V

    :cond_1
    iget p0, v9, Landroid/location/Location$BearingDistanceCache;->mDistance:F

    return p0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/location/Location;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroid/location/Location;

    iget-wide v3, p0, Landroid/location/Location;->mTimeMs:J

    iget-wide v5, p1, Landroid/location/Location;->mTimeMs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_c

    iget-wide v3, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    iget-wide v5, p1, Landroid/location/Location;->mElapsedRealtimeNs:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v3

    if-ne v1, v3, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p1, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    iget-wide v5, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_c

    :cond_2
    iget-wide v3, p1, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v5, p0, Landroid/location/Location;->mLatitudeDegrees:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_c

    iget-wide v3, p1, Landroid/location/Location;->mLongitudeDegrees:D

    iget-wide v5, p0, Landroid/location/Location;->mLongitudeDegrees:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->hasAltitude()Z

    move-result v3

    if-ne v1, v3, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-wide v3, p1, Landroid/location/Location;->mAltitudeMeters:D

    iget-wide v5, p0, Landroid/location/Location;->mAltitudeMeters:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_c

    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-ne v1, v3, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, p1, Landroid/location/Location;->mSpeedMetersPerSecond:F

    iget v3, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_c

    :cond_4
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-ne v1, v3, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_5

    iget v1, p1, Landroid/location/Location;->mBearingDegrees:F

    iget v3, p0, Landroid/location/Location;->mBearingDegrees:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_c

    :cond_5
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-ne v1, v3, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p1, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iget v3, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_c

    :cond_6
    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v3

    if-ne v1, v3, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p1, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    iget v3, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_c

    :cond_7
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v3

    if-ne v1, v3, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p1, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iget v3, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_c

    :cond_8
    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v3

    if-ne v1, v3, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p1, Landroid/location/Location;->mBearingAccuracyDegrees:F

    iget v3, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_c

    :cond_9
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v3

    if-ne v1, v3, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-wide v3, p1, Landroid/location/Location;->mMslAltitudeMeters:D

    iget-wide v5, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-nez v1, :cond_c

    :cond_a
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result v1

    invoke-virtual {p1}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result v3

    if-ne v1, v3, :cond_c

    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result v1

    if-eqz v1, :cond_b

    iget v1, p1, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    iget v3, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_c

    :cond_b
    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iget-object v3, p1, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object p0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    iget-object p1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-static {p0, p1}, Landroid/location/Location;->areExtrasEqual(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result p0

    if-eqz p0, :cond_c

    return v0

    :cond_c
    return v2
.end method

.method public whitelist getAccuracy()F
    .locals 0

    iget p0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    return p0
.end method

.method public whitelist getAltitude()D
    .locals 2

    iget-wide v0, p0, Landroid/location/Location;->mAltitudeMeters:D

    return-wide v0
.end method

.method public whitelist getBearing()F
    .locals 0

    iget p0, p0, Landroid/location/Location;->mBearingDegrees:F

    return p0
.end method

.method public whitelist getBearingAccuracyDegrees()F
    .locals 0

    iget p0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    return p0
.end method

.method public whitelist getElapsedRealtimeAgeMillis()J
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/location/Location;->getElapsedRealtimeAgeMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getElapsedRealtimeAgeMillis(J)J
    .locals 2

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public whitelist getElapsedRealtimeMillis()J
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getElapsedRealtimeNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    return-wide v0
.end method

.method public whitelist getElapsedRealtimeUncertaintyNanos()D
    .locals 2

    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    return-wide v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist getLatitude()D
    .locals 2

    iget-wide v0, p0, Landroid/location/Location;->mLatitudeDegrees:D

    return-wide v0
.end method

.method public whitelist getLongitude()D
    .locals 2

    iget-wide v0, p0, Landroid/location/Location;->mLongitudeDegrees:D

    return-wide v0
.end method

.method public whitelist getMslAltitudeAccuracyMeters()F
    .locals 0

    iget p0, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    return p0
.end method

.method public whitelist getMslAltitudeMeters()D
    .locals 2

    iget-wide v0, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    return-wide v0
.end method

.method public whitelist getProvider()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist getSpeed()F
    .locals 0

    iget p0, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    return p0
.end method

.method public whitelist getSpeedAccuracyMetersPerSecond()F
    .locals 0

    iget p0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    return p0
.end method

.method public whitelist getTime()J
    .locals 2

    iget-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    return-wide v0
.end method

.method public whitelist getVerticalAccuracyMeters()F
    .locals 0

    iget p0, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    return p0
.end method

.method public whitelist hasAccuracy()Z
    .locals 0

    iget p0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist hasAltitude()Z
    .locals 1

    iget p0, p0, Landroid/location/Location;->mFieldsMask:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist hasBearing()Z
    .locals 0

    iget p0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist hasBearingAccuracy()Z
    .locals 0

    iget p0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist hasElapsedRealtimeUncertaintyNanos()Z
    .locals 0

    iget p0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 p0, p0, 0x100

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist hasMslAltitude()Z
    .locals 0

    iget p0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist hasMslAltitudeAccuracy()Z
    .locals 0

    iget p0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist hasSpeed()Z
    .locals 0

    iget p0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist hasSpeedAccuracy()Z
    .locals 0

    iget p0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist hasVerticalAccuracy()Z
    .locals 0

    iget p0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 5

    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iget-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Landroid/location/Location;->mLatitudeDegrees:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Landroid/location/Location;->mLongitudeDegrees:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist isComplete()Z
    .locals 4

    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist isFromMockProvider()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/location/Location;->isMock()Z

    move-result p0

    return p0
.end method

.method public whitelist isMock()Z
    .locals 0

    iget p0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist makeComplete()V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    :cond_1
    iget-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    :cond_2
    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    :cond_3
    return-void
.end method

.method public whitelist removeAccuracy()V
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist removeAltitude()V
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist removeBearing()V
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist removeBearingAccuracy()V
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist removeElapsedRealtimeUncertaintyNanos()V
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist removeMslAltitude()V
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist removeMslAltitudeAccuracy()V
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist removeSpeed()V
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist removeSpeedAccuracy()V
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist removeVerticalAccuracy()V
    .locals 1

    iget v0, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist reset()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/location/Location;->mTimeMs:J

    iput-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    const/4 v3, 0x0

    iput v3, p0, Landroid/location/Location;->mFieldsMask:I

    iput-wide v1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    iput-wide v1, p0, Landroid/location/Location;->mLongitudeDegrees:D

    iput-wide v1, p0, Landroid/location/Location;->mAltitudeMeters:D

    const/4 v3, 0x0

    iput v3, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    iput v3, p0, Landroid/location/Location;->mBearingDegrees:F

    iput v3, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iput v3, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    iput v3, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iput v3, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    iput-wide v1, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    iput v3, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    iput-object v0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public whitelist set(Landroid/location/Location;)V
    .locals 2

    iget v0, p1, Landroid/location/Location;->mFieldsMask:I

    iput v0, p0, Landroid/location/Location;->mFieldsMask:I

    iget-object v0, p1, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    iget-wide v0, p1, Landroid/location/Location;->mTimeMs:J

    iput-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    iget-wide v0, p1, Landroid/location/Location;->mElapsedRealtimeNs:J

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    iget-wide v0, p1, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    iput-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    iget-wide v0, p1, Landroid/location/Location;->mLatitudeDegrees:D

    iput-wide v0, p0, Landroid/location/Location;->mLatitudeDegrees:D

    iget-wide v0, p1, Landroid/location/Location;->mLongitudeDegrees:D

    iput-wide v0, p0, Landroid/location/Location;->mLongitudeDegrees:D

    iget v0, p1, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iput v0, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iget-wide v0, p1, Landroid/location/Location;->mAltitudeMeters:D

    iput-wide v0, p0, Landroid/location/Location;->mAltitudeMeters:D

    iget v0, p1, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    iput v0, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    iget v0, p1, Landroid/location/Location;->mSpeedMetersPerSecond:F

    iput v0, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    iget v0, p1, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iput v0, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iget v0, p1, Landroid/location/Location;->mBearingDegrees:F

    iput v0, p0, Landroid/location/Location;->mBearingDegrees:F

    iget v0, p1, Landroid/location/Location;->mBearingAccuracyDegrees:F

    iput v0, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    iget-wide v0, p1, Landroid/location/Location;->mMslAltitudeMeters:D

    iput-wide v0, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    iget v0, p1, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    iput v0, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    iget-object v0, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    iget-object p1, p1, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public whitelist setAccuracy(F)V
    .locals 0

    iput p1, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist setAltitude(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mAltitudeMeters:D

    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist setBearing(F)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    const/4 v1, 0x0

    add-float/2addr p1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    add-float/2addr p1, v0

    :cond_0
    iput p1, p0, Landroid/location/Location;->mBearingDegrees:F

    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist setBearingAccuracyDegrees(F)V
    .locals 0

    iput p1, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist setElapsedRealtimeNanos(J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    return-void
.end method

.method public whitelist setElapsedRealtimeUncertaintyNanos(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public whitelist setIsFromMockProvider(Z)V
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/location/Location;->setMock(Z)V

    return-void
.end method

.method public whitelist setLatitude(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mLatitudeDegrees:D

    return-void
.end method

.method public whitelist setLongitude(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mLongitudeDegrees:D

    return-void
.end method

.method public whitelist setMock(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    return-void

    :cond_0
    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    and-int/lit8 p1, p1, -0x11

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist setMslAltitudeAccuracyMeters(F)V
    .locals 0

    iput p1, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist setMslAltitudeMeters(D)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit16 p1, p1, 0x200

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist setProvider(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    return-void
.end method

.method public whitelist setSpeed(F)V
    .locals 0

    iput p1, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist setSpeedAccuracyMetersPerSecond(F)V
    .locals 0

    iput p1, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist setTime(J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/Location;->mTimeMs:J

    return-void
.end method

.method public whitelist setVerticalAccuracyMeters(F)V
    .locals 0

    iput p1, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    iget p1, p0, Landroid/location/Location;->mFieldsMask:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/location/Location;->mFieldsMask:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Location["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    iget-wide v2, p0, Landroid/location/Location;->mLatitudeDegrees:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-wide v3, p0, Landroid/location/Location;->mLongitudeDegrees:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%.6f,%.6f"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " hAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, " et="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/Location;->mAltitudeMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " vAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitude()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " mslAlt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " mslAltAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " vel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " sAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " bear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/Location;->mBearingDegrees:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " bAcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Landroid/location/Location;->isMock()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " mock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object p2, p0, Landroid/location/Location;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget p2, p0, Landroid/location/Location;->mFieldsMask:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/location/Location;->mTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeNs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p0}, Landroid/location/Location;->hasElapsedRealtimeUncertaintyNanos()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-wide v0, p0, Landroid/location/Location;->mElapsedRealtimeUncertaintyNs:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    :cond_0
    iget-wide v0, p0, Landroid/location/Location;->mLatitudeDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/location/Location;->mLongitudeDegrees:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {p0}, Landroid/location/Location;->hasAltitude()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-wide v0, p0, Landroid/location/Location;->mAltitudeMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeed()Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p0, Landroid/location/Location;->mSpeedMetersPerSecond:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->hasBearing()Z

    move-result p2

    if-eqz p2, :cond_3

    iget p2, p0, Landroid/location/Location;->mBearingDegrees:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_3
    invoke-virtual {p0}, Landroid/location/Location;->hasAccuracy()Z

    move-result p2

    if-eqz p2, :cond_4

    iget p2, p0, Landroid/location/Location;->mHorizontalAccuracyMeters:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_4
    invoke-virtual {p0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result p2

    if-eqz p2, :cond_5

    iget p2, p0, Landroid/location/Location;->mAltitudeAccuracyMeters:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_5
    invoke-virtual {p0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result p2

    if-eqz p2, :cond_6

    iget p2, p0, Landroid/location/Location;->mSpeedAccuracyMetersPerSecond:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_6
    invoke-virtual {p0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result p2

    if-eqz p2, :cond_7

    iget p2, p0, Landroid/location/Location;->mBearingAccuracyDegrees:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_7
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitude()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-wide v0, p0, Landroid/location/Location;->mMslAltitudeMeters:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    :cond_8
    invoke-virtual {p0}, Landroid/location/Location;->hasMslAltitudeAccuracy()Z

    move-result p2

    if-eqz p2, :cond_9

    iget p2, p0, Landroid/location/Location;->mMslAltitudeAccuracyMeters:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_9
    iget-object p0, p0, Landroid/location/Location;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
