.class public Landroid/media/FaceDetector$Face;
.super Ljava/lang/Object;
.source "FaceDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/FaceDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Face"
.end annotation


# static fields
.field public static final whitelist CONFIDENCE_THRESHOLD:F = 0.4f

.field public static final whitelist EULER_X:I = 0x0

.field public static final whitelist EULER_Y:I = 0x1

.field public static final whitelist EULER_Z:I = 0x2


# instance fields
.field private greylist-max-o mConfidence:F

.field private greylist-max-o mEyesDist:F

.field private greylist-max-o mMidPointX:F

.field private greylist-max-o mMidPointY:F

.field private greylist-max-o mPoseEulerX:F

.field private greylist-max-o mPoseEulerY:F

.field private greylist-max-o mPoseEulerZ:F


# direct methods
.method private constructor blacklist <init>(Landroid/media/FaceDetector;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/FaceDetector;Landroid/media/FaceDetector-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/FaceDetector$Face;-><init>(Landroid/media/FaceDetector;)V

    return-void
.end method


# virtual methods
.method public whitelist confidence()F
    .locals 0

    iget p0, p0, Landroid/media/FaceDetector$Face;->mConfidence:F

    return p0
.end method

.method public whitelist eyesDistance()F
    .locals 0

    iget p0, p0, Landroid/media/FaceDetector$Face;->mEyesDist:F

    return p0
.end method

.method public whitelist getMidPoint(Landroid/graphics/PointF;)V
    .locals 1

    iget v0, p0, Landroid/media/FaceDetector$Face;->mMidPointX:F

    iget p0, p0, Landroid/media/FaceDetector$Face;->mMidPointY:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public whitelist pose(I)F
    .locals 1

    if-nez p1, :cond_0

    iget p0, p0, Landroid/media/FaceDetector$Face;->mPoseEulerX:F

    return p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget p0, p0, Landroid/media/FaceDetector$Face;->mPoseEulerY:F

    return p0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget p0, p0, Landroid/media/FaceDetector$Face;->mPoseEulerZ:F

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
