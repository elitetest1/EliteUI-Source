.class public Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "TouchExpression.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/ComponentData;
.implements Lcom/android/internal/widget/remotecompose/core/VariableSupport;
.implements Lcom/android/internal/widget/remotecompose/core/TouchListener;
.implements Lcom/android/internal/widget/remotecompose/core/serialize/Serializable;


# static fields
.field private static final blacklist CLASS_NAME:Ljava/lang/String; = "TouchExpression"

.field public static final blacklist MAX_EXPRESSION_SIZE:I = 0x20

.field private static final blacklist OP_CODE:I = 0x9d

.field public static final blacklist STOP_ABSOLUTE_POS:I = 0x6

.field public static final blacklist STOP_ENDS:I = 0x2

.field public static final blacklist STOP_GENTLY:I = 0x0

.field public static final blacklist STOP_INSTANTLY:I = 0x1

.field public static final blacklist STOP_NOTCHES_ABSOLUTE:I = 0x5

.field public static final blacklist STOP_NOTCHES_EVEN:I = 0x3

.field public static final blacklist STOP_NOTCHES_PERCENTS:I = 0x4


# instance fields
.field blacklist mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

.field private blacklist mCurrentValue:F

.field private blacklist mDefValue:F

.field blacklist mDownTouchValue:F

.field private blacklist mEasingToStop:Z

.field private blacklist mEasyTouch:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;

.field blacklist mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

.field private blacklist mId:I

.field private blacklist mLastCalculatedValue:F

.field private blacklist mLastChange:F

.field blacklist mLastValue:F

.field blacklist mMax:F

.field blacklist mMaxAcceleration:F

.field blacklist mMaxTime:F

.field blacklist mMaxVelocity:F

.field blacklist mMin:F

.field blacklist mMode:I

.field blacklist mNotches:[F

.field private blacklist mOutDefValue:F

.field blacklist mOutMax:F

.field blacklist mOutMin:F

.field blacklist mOutStopSpec:[F

.field private blacklist mPreCalcValue:[F

.field blacklist mScrBottom:F

.field blacklist mScrLeft:F

.field blacklist mScrRight:F

.field blacklist mScrTop:F

.field public blacklist mSrcExp:[F

.field blacklist mStopMode:I

.field blacklist mStopSpec:[F

.field private blacklist mTouchDown:Z

.field blacklist mTouchEffects:I

.field private blacklist mTouchUpTime:F

.field blacklist mUnmodified:Z

.field blacklist mValue:F

.field blacklist mValueAtDown:F

.field blacklist mVelocityId:F

.field blacklist mWrapMode:Z


# direct methods
.method public constructor blacklist <init>(I[FFFFIFI[F[F)V
    .locals 5

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMode:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mValue:F

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mUnmodified:Z

    const/high16 v3, 0x7fc00000    # Float.NaN

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mLastChange:F

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mLastCalculatedValue:F

    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-direct {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    new-instance v4, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;

    invoke-direct {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;-><init>()V

    iput-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasyTouch:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasingToStop:Z

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchUpTime:F

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mCurrentValue:F

    iput-boolean v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchDown:Z

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxTime:F

    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxAcceleration:F

    const/high16 v1, 0x40e00000    # 7.0f

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxVelocity:F

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopMode:I

    iput-boolean v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mLastValue:F

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDefValue:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutDefValue:F

    const/4 p1, 0x6

    if-ne p1, p8, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMode:I

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    if-eqz p9, :cond_1

    array-length p1, p9

    invoke-static {p9, p1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    :cond_1
    iput p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchEffects:I

    iput p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mVelocityId:F

    invoke-static {p4}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result p1

    if-nez p1, :cond_2

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    goto :goto_1

    :cond_2
    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    :goto_1
    iput p8, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopMode:I

    iput-object p9, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    if-eqz p10, :cond_3

    array-length p1, p10

    const/4 p2, 0x4

    if-lt p1, p2, :cond_3

    aget p1, p10, v4

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-nez p1, :cond_3

    aget p1, p10, v0

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxTime:F

    const/4 p1, 0x2

    aget p1, p10, p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxAcceleration:F

    const/4 p1, 0x3

    aget p1, p10, p1

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxVelocity:F

    :cond_3
    return-void
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI[FI[F[F)V
    .locals 1

    const/16 v0, 0x9d

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p6}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    array-length p1, p7

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    array-length p1, p7

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_0

    aget p4, p7, p3

    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    if-eqz p9, :cond_1

    array-length p1, p9

    goto :goto_1

    :cond_1
    move p1, p2

    :goto_1
    shl-int/lit8 p3, p8, 0x10

    or-int/2addr p3, p1

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    move p3, p2

    :goto_2
    if-ge p3, p1, :cond_2

    aget p4, p9, p3

    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    if-eqz p10, :cond_3

    array-length p1, p10

    goto :goto_3

    :cond_3
    move p1, p2

    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    :goto_4
    if-ge p2, p1, :cond_4

    aget p3, p10, p2

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 6

    const/16 v0, 0x9d

    const-string v1, "TouchExpression"

    const-string v2, "Expressions Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "A Float expression"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "id"

    const-string v1, "The id of the Color"

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "expression length"

    const/16 v1, 0x9

    const-string v3, "expression_length"

    invoke-virtual {p0, v1, v3, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "animation description length"

    const-string v4, "animation_length"

    invoke-virtual {p0, v1, v4, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "expression"

    const-string v1, "Sequence of Floats representing and expression"

    const/16 v5, 0xa

    invoke-virtual {p0, v5, v0, v3, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "AnimationSpec"

    const-string v1, "Sequence of Floats representing animation curve"

    invoke-virtual {p0, v5, v0, v4, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "duration"

    const-string v1, "> time in sec"

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "bits"

    const-string v1, "> WRAP|INITALVALUE | TYPE "

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "spec"

    const-string v1, "> [SPEC PARAMETERS] "

    invoke-virtual {p0, v5, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "initialValue"

    const-string v1, "> [Initial value] "

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v0, "wrapValue"

    const-string v1, "> [Wrap value] "

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method private blacklist getStopPosition(FF)F
    .locals 9

    const/high16 v0, 0x40000000    # 2.0f

    div-float v1, p2, v0

    add-float v2, p1, v1

    iget-boolean v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->wrap(F)F

    move-result p1

    add-float/2addr p1, v1

    move v1, p1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    move v8, v1

    move v1, p1

    move p1, v8

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length v3, v2

    new-array v3, v3, [F

    iget-boolean v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    :goto_1
    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_d

    const/4 v7, 0x2

    if-eq v5, v7, :cond_b

    const/4 p2, 0x3

    const/4 v0, 0x0

    if-eq v5, p2, :cond_8

    const/4 p2, 0x4

    if-eq v5, p2, :cond_5

    const/4 p2, 0x5

    if-eq v5, p2, :cond_2

    return p1

    :cond_2
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    sub-float p2, p0, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    :goto_2
    array-length v1, v2

    if-ge v0, v1, :cond_4

    aget v1, v2, v0

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v3, p2, v1

    if-lez v3, :cond_3

    aget p0, v2, v0

    move p2, v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    return p0

    :cond_5
    array-length p2, v2

    new-array v1, p2, [F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    sub-float/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    :goto_3
    if-ge v0, p2, :cond_7

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    aget v3, v3, v0

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    sub-float/2addr v5, v2

    mul-float/2addr v3, v5

    add-float/2addr v2, v3

    sub-float v3, v2, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v5, v1, v3

    if-lez v5, :cond_6

    move v4, v2

    move v1, v3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    return v4

    :cond_8
    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    aget v0, p2, v0

    float-to-int v0, v0

    array-length v1, p2

    if-le v1, v6, :cond_9

    aget p2, p2, v6

    goto :goto_4

    :cond_9
    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    :goto_4
    sub-float/2addr p2, v4

    int-to-float v0, v0

    div-float/2addr p2, v0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    sub-float/2addr p1, v0

    div-float/2addr p1, p2

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    mul-float/2addr p2, p1

    add-float/2addr p2, v4

    if-nez v3, :cond_a

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p0, v4}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0

    :cond_a
    return p2

    :cond_b
    add-float/2addr v1, p2

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    add-float p1, p0, v4

    div-float/2addr p1, v0

    cmpl-float p1, v1, p1

    if-lez p1, :cond_c

    return p0

    :cond_c
    return v4

    :cond_d
    return v1
.end method

.method public static blacklist id()I
    .locals 1

    const/16 v0, 0x9d

    return v0
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "TouchExpression"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v7

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    const v2, 0xffff

    and-int/2addr v0, v2

    const/16 v8, 0x20

    if-gt v0, v8, :cond_3

    move v8, v2

    new-array v2, v0, [F

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v11

    aput v11, v2, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    and-int/2addr v8, v0

    shr-int/lit8 v0, v0, 0x10

    move v10, v9

    new-array v9, v8, [F

    move v11, v10

    :goto_1
    if-ge v11, v8, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v12

    aput v12, v9, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v8

    move v11, v10

    new-array v10, v8, [F

    :goto_2
    if-ge v11, v8, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v12

    aput v12, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;

    move v8, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;-><init>(I[FFFFIFI[F[F)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Float expression to long"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist updateBounds()V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v2

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getWidth()F

    move-result v3

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getHeight()F

    move-result v4

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getX()F

    move-result v5

    add-float/2addr v1, v5

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getY()F

    move-result v5

    add-float/2addr v2, v5

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getParent()Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    move-result-object v0

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrLeft:F

    iput v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrTop:F

    add-float/2addr v3, v1

    iput v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrRight:F

    add-float/2addr v4, v2

    iput v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrBottom:F

    :cond_1
    return-void
.end method

.method private blacklist wrap(F)F
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    rem-float/2addr p1, p0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    add-float/2addr p1, p0

    :cond_1
    return p1
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->updateBounds()V

    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mUnmodified:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutDefValue:F

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mCurrentValue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->wrap(F)F

    move-result p0

    invoke-virtual {p1, v1, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasingToStop:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchUpTime:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasyTouch:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->getPos(F)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mCurrentValue:F

    iget-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->wrap(F)F

    move-result v1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    :goto_0
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    invoke-virtual {p1, v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasyTouch:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;

    invoke-virtual {v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->getDuration()F

    move-result v1

    cmpg-float v0, v1, v0

    if-gez v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasingToStop:Z

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->crossNotchCheck(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchDown:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    array-length v3, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMode:I

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mValueAtDown:F

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDownTouchValue:F

    sub-float/2addr v0, v2

    add-float/2addr v0, v1

    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    if-eqz v1, :cond_5

    invoke-direct {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->wrap(F)F

    move-result v0

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_1
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mCurrentValue:F

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->crossNotchCheck(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mCurrentValue:F

    invoke-direct {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->wrap(F)F

    move-result p0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->loadFloat(IF)V

    return-void
.end method

.method blacklist crossNotchCheck(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 9

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mLastValue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mCurrentValue:F

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mLastValue:F

    iget-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mWrapMode:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    :goto_0
    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    const/4 v7, 0x2

    const/4 v8, 0x0

    if-eq v5, v7, :cond_6

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    const/4 v2, 0x4

    if-eq v5, v2, :cond_3

    const/4 v2, 0x5

    if-eq v5, v2, :cond_1

    goto :goto_5

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length v4, v2

    if-ge v8, v4, :cond_9

    aget v2, v2, v8

    sub-float v4, v0, v2

    sub-float v2, v1, v2

    mul-float/2addr v4, v2

    cmpg-float v2, v4, v3

    if-gez v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->haptic(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length v4, v2

    if-ge v8, v4, :cond_9

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    aget v2, v2, v8

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    sub-float/2addr v5, v4

    mul-float/2addr v2, v5

    add-float/2addr v4, v2

    sub-float v2, v0, v4

    sub-float v4, v1, v4

    mul-float/2addr v2, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->haptic(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    aget v3, v3, v8

    float-to-int v3, v3

    sub-float/2addr v4, v2

    int-to-float v3, v3

    div-float/2addr v4, v3

    sub-float/2addr v0, v2

    div-float/2addr v0, v4

    float-to-int v0, v0

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    float-to-int v1, v1

    if-eq v0, v1, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->haptic(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    return-void

    :cond_6
    sub-float v5, v2, v0

    sub-float v0, v4, v0

    mul-float/2addr v5, v0

    cmpg-float v0, v5, v3

    if-gez v0, :cond_7

    move v0, v6

    goto :goto_3

    :cond_7
    move v0, v8

    :goto_3
    sub-float/2addr v2, v1

    sub-float/2addr v4, v1

    mul-float/2addr v2, v4

    cmpg-float v1, v2, v3

    if-gez v1, :cond_8

    goto :goto_4

    :cond_8
    move v6, v8

    :goto_4
    xor-int/2addr v0, v6

    if-eqz v0, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->haptic(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    :cond_9
    :goto_5
    return-void

    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->haptic(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method blacklist haptic(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 2

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchEffects:I

    and-int/lit16 v0, p0, 0xff

    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    and-int/lit16 p0, p0, 0x7fff

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getInteger(I)I

    move-result v0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->hapticEffect(I)V

    return-void
.end method

.method public blacklist registerListening(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 6

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_1
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDefValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDefValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-nez v0, :cond_3

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->addTouchListener(Lcom/android/internal/widget/remotecompose/core/TouchListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {p1, v4, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_7

    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    invoke-virtual {p1, v3, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 3

    const-string v0, "TouchExpression"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "id"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDefValue:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutDefValue:F

    const-string v2, "defValue"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    const-string/jumbo v2, "min"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    const-string/jumbo v2, "max"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;FF)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "mode"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string/jumbo v0, "srcExp"

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    invoke-interface {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addFloatExpressionSrc(Ljava/lang/String;[F)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public blacklist setComponent(Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mComponent:Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;->getRoot()Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/RootLayoutComponent;->setHasTouchListeners(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    aget v3, v3, v1

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idStringFromNan(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    const-string v2, ")"

    const-string v3, "] = ("

    const-string v4, "TouchExpression["

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    invoke-static {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    invoke-static {p0, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->toString([F[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist touchDown(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V
    .locals 2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrLeft:F

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrRight:F

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrTop:F

    cmpl-float v0, p3, v0

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrBottom:F

    cmpg-float v0, p3, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasingToStop:Z

    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchDown:Z

    iput-boolean p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mUnmodified:Z

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMode:I

    if-nez p2, :cond_1

    iget p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mValueAtDown:F

    iget-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object p3

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    array-length v1, v0

    invoke-virtual {p2, p3, v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result p2

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDownTouchValue:F

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    return-void

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "NOT IN WINDOW "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrLeft:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mScrTop:F

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist touchDrag(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FF)V
    .locals 0

    iget-boolean p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchDown:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    return-void
.end method

.method public blacklist touchUp(Lcom/android/internal/widget/remotecompose/core/RemoteContext;FFFF)V
    .locals 14

    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchDown:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchDown:Z

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    array-length v5, v4

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result v1

    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    array-length v4, v3

    const v5, 0x38d1b717    # 1.0E-4f

    if-ge v0, v4, :cond_4

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    aget v3, v3, v0

    invoke-static {v3}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    mul-float v5, v5, p4

    add-float v5, p2, v5

    aput v5, v3, v0

    goto :goto_2

    :cond_2
    const/16 v4, 0xe

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    mul-float v5, v5, p5

    add-float v5, p3, v5

    aput v5, v3, v0

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mExp:Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getCollectionsAccess()Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    array-length v6, v4

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->eval(Lcom/android/internal/widget/remotecompose/core/operations/utilities/CollectionsAccess;[FI)F

    move-result v0

    sub-float/2addr v0, v1

    div-float v9, v0, v5

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v7

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getAnimationTime()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchUpTime:F

    invoke-direct {p0, v7, v9}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->getStopPosition(FF)F

    move-result v8

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxTime:F

    sub-float v1, v8, v7

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxVelocity:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasyTouch:Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;

    iget v11, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxAcceleration:F

    iget v12, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMaxVelocity:F

    const/4 v13, 0x0

    invoke-virtual/range {v6 .. v13}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing;->config(FFFFFFLcom/android/internal/widget/remotecompose/core/operations/utilities/touch/VelocityEasing$Easing;)V

    iput-boolean v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mEasingToStop:Z

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->needsRepaint()V

    return-void
.end method

.method public blacklist updateVariables(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    if-eqz v0, :cond_0

    array-length v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    array-length v1, v1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    if-eqz v0, :cond_2

    array-length v0, v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length v1, v1

    if-eq v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    :cond_3
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMax:F

    :cond_4
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutMin:F

    :cond_5
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDefValue:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mDefValue:F

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutDefValue:F

    :cond_6
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    array-length v3, v2

    if-ge v1, v3, :cond_8

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/AnimatedFloatExpression;->isMathOperator(F)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/NanMap;->isDataVariable(F)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v2

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    aput v2, v3, v1

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mPreCalcValue:[F

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    aget v3, v3, v1

    aput v3, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopSpec:[F

    array-length v2, v1

    if-ge v0, v2, :cond_a

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v1}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->getFloat(I)F

    move-result v1

    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    aput v1, v2, v0

    goto :goto_3

    :cond_9
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mOutStopSpec:[F

    aput v1, v2, v0

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_a
    return-void
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 11

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mValue:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMin:F

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mMax:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mVelocityId:F

    iget v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mTouchEffects:I

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mSrcExp:[F

    iget v8, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mStopMode:I

    iget-object v9, p0, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->mNotches:[F

    const/4 v10, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/TouchExpression;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFFFFI[FI[F[F)V

    return-void
.end method
