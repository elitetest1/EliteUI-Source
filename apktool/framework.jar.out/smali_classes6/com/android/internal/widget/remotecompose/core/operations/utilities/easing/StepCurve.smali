.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;
.super Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;
.source "StepCurve.java"


# instance fields
.field private final blacklist mCurveFit:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;


# direct methods
.method public constructor blacklist <init>([FII)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    invoke-static {p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;->genSpline([FII)Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;->mCurveFit:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;

    return-void
.end method

.method private static blacklist genSpline([FII)Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;
    .locals 18

    move/from16 v0, p2

    mul-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v3, v0, -0x1

    int-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v4, v6, v4

    new-array v2, v2, [I

    const/4 v8, 0x1

    aput v8, v2, v8

    const/4 v8, 0x0

    aput v1, v2, v8

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    new-array v1, v1, [D

    move v9, v8

    :goto_0
    if-ge v9, v0, :cond_1

    add-int v10, v9, p1

    aget v10, p0, v10

    float-to-double v10, v10

    add-int v12, v9, v3

    aget-object v13, v2, v12

    aput-wide v10, v13, v8

    int-to-double v13, v9

    mul-double/2addr v13, v4

    aput-wide v13, v1, v12

    if-lez v9, :cond_0

    mul-int/lit8 v12, v3, 0x2

    add-int/2addr v12, v9

    aget-object v15, v2, v12

    add-double v16, v10, v6

    aput-wide v16, v15, v8

    add-double v15, v13, v6

    aput-wide v15, v1, v12

    add-int/lit8 v12, v9, -0x1

    aget-object v15, v2, v12

    sub-double/2addr v10, v6

    sub-double/2addr v10, v4

    aput-wide v10, v15, v8

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    add-double/2addr v13, v10

    sub-double/2addr v13, v4

    aput-wide v13, v1, v12

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;-><init>([D[[D)V

    return-object v0
.end method


# virtual methods
.method public blacklist get(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;->mCurveFit:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;

    float-to-double v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->getPos(DI)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public blacklist getDiff(F)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/StepCurve;->mCurveFit:Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;

    float-to-double v0, p1

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicCurveFit;->getSlope(DI)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method
