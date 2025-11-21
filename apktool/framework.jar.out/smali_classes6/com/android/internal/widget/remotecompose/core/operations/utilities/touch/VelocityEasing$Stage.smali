.class Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;
.super Ljava/lang/Object;
.source "VelocityEasing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Stage"
.end annotation


# instance fields
.field private blacklist mDeltaT:F

.field private blacklist mDeltaV:F

.field private blacklist mEndPos:F

.field private blacklist mEndTime:F

.field private blacklist mEndV:F

.field final blacklist mStage:I

.field private blacklist mStartPos:F

.field private blacklist mStartTime:F

.field private blacklist mStartV:F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmEndPos(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndPos:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEndTime(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndTime:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartPos(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartPos:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartTime(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartTime:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStartV(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;)F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartV:F

    return p0
.end method

.method constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartV:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartPos:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartTime:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndV:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndPos:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndTime:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mDeltaV:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mDeltaT:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStage:I

    return-void
.end method


# virtual methods
.method blacklist getPos(F)F
    .locals 3

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartTime:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mDeltaT:F

    div-float v0, p1, v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartV:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mDeltaV:F

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    add-float/2addr v1, v2

    mul-float/2addr p1, v1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartPos:F

    add-float/2addr p1, p0

    return p1
.end method

.method blacklist getVel(F)F
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartTime:F

    sub-float/2addr p1, v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndTime:F

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartV:F

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mDeltaV:F

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    return v0
.end method

.method blacklist setUp(FFFFFF)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartV:F

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartPos:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mStartTime:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndV:F

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndTime:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mEndPos:F

    sub-float/2addr p4, p1

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mDeltaV:F

    sub-float/2addr p6, p3

    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Stage;->mDeltaT:F

    return-void
.end method
