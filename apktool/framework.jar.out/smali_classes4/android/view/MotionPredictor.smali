.class public final Landroid/view/MotionPredictor;
.super Ljava/lang/Object;
.source "MotionPredictor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MotionPredictor$RegistryHolder;
    }
.end annotation


# instance fields
.field private final blacklist mIsPredictionEnabled:Z

.field private final blacklist mPtr:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnativeGetNativeMotionPredictorFinalizer()J
    .locals 2

    invoke-static {}, Landroid/view/MotionPredictor;->nativeGetNativeMotionPredictorFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110185

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x10e0106

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-direct {p0, v0, p1}, Landroid/view/MotionPredictor;-><init>(ZI)V

    return-void
.end method

.method public constructor blacklist <init>(ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/view/MotionPredictor;->mIsPredictionEnabled:Z

    invoke-static {p2}, Landroid/view/MotionPredictor;->nativeInitialize(I)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/view/MotionPredictor;->mPtr:J

    sget-object v0, Landroid/view/MotionPredictor$RegistryHolder;->REGISTRY:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    return-void
.end method

.method private static native blacklist nativeGetNativeMotionPredictorFinalizer()J
.end method

.method private static native blacklist nativeInitialize(I)J
.end method

.method private static native blacklist nativeIsPredictionAvailable(JII)Z
.end method

.method private static native blacklist nativePredict(JJ)Landroid/view/MotionEvent;
.end method

.method private static native blacklist nativeRecord(JLandroid/view/MotionEvent;)V
.end method


# virtual methods
.method public whitelist isPredictionAvailable(II)Z
    .locals 2

    iget-boolean v0, p0, Landroid/view/MotionPredictor;->mIsPredictionEnabled:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/view/MotionPredictor;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionPredictor;->nativeIsPredictionAvailable(JII)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist predict(J)Landroid/view/MotionEvent;
    .locals 2

    iget-boolean v0, p0, Landroid/view/MotionPredictor;->mIsPredictionEnabled:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-wide v0, p0, Landroid/view/MotionPredictor;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionPredictor;->nativePredict(JJ)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public whitelist record(Landroid/view/MotionEvent;)V
    .locals 2

    iget-boolean v0, p0, Landroid/view/MotionPredictor;->mIsPredictionEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Landroid/view/MotionPredictor;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionPredictor;->nativeRecord(JLandroid/view/MotionEvent;)V

    return-void
.end method
