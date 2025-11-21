.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "AnimationSpec.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ModifierOperation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

.field public static final blacklist DISABLED:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;


# instance fields
.field blacklist mAnimationId:I

.field blacklist mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

.field blacklist mExitAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

.field blacklist mMotionDuration:F

.field blacklist mMotionEasingType:I

.field blacklist mVisibilityDuration:F

.field blacklist mVisibilityEasingType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;-><init>()V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->DEFAULT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;-><init>(I)V

    sput-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->DISABLED:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 8

    sget-object v6, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_IN:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    sget-object v7, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_OUT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    const/4 v1, -0x1

    const/high16 v2, 0x44160000    # 600.0f

    const/4 v3, 0x1

    const/high16 v4, 0x43fa0000    # 500.0f

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;-><init>(IFIFILcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;)V

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;-><init>()V

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mAnimationId:I

    return-void
.end method

.method public constructor blacklist <init>(IFIFILcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mAnimationId:I

    const/high16 v0, 0x43960000    # 300.0f

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionDuration:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionEasingType:I

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityDuration:F

    iput v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityEasingType:I

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_IN:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    sget-object v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_OUT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mAnimationId:I

    iput p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionDuration:F

    iput p3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionEasingType:I

    iput p4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityDuration:F

    iput p5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityEasingType:I

    iput-object p6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    iput-object p7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mExitAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-void
.end method

.method public static blacklist animationToInt(Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->ordinal()I

    move-result p0

    return p0
.end method

.method public static blacklist apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFIFILcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;)V
    .locals 1

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->start(I)V

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p3}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-virtual {p0, p4}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeFloat(F)V

    invoke-virtual {p0, p5}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-static {p6}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->animationToInt(Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    invoke-static {p7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->animationToInt(Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    return-void
.end method

.method public static blacklist documentation(Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->id()I

    move-result v0

    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Layout Operations"

    invoke-interface {p0, v2, v0, v1}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentationBuilder;->operation(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string v0, "define the animation"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->description(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "animationId"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v1, "motionDuration"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v1, "motionEasingType"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v1, "visibilityDuration"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    move-result-object p0

    const-string/jumbo v1, "visibilityEasingType"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;->field(ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/documentation/DocumentedOperation;

    return-void
.end method

.method public static blacklist id()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public static blacklist intToAnimation(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;
    .locals 0

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_IN:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->PARTICLE:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->ROTATE:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->SLIDE_BOTTOM:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->SLIDE_TOP:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->SLIDE_RIGHT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->SLIDE_LEFT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_OUT:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;->FADE_IN:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist name()Ljava/lang/String;
    .locals 1

    const-string v0, "AnimationSpec"

    return-object v0
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .locals 8
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

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readFloat()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->intToAnimation(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->intToAnimation(I)Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v7

    new-instance v0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;-><init>(IFIFILcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 0

    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getAnimationId()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mAnimationId:I

    return p0
.end method

.method public blacklist getEnterAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object p0
.end method

.method public blacklist getExitAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mExitAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    return-object p0
.end method

.method public blacklist getMotionDuration()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionDuration:F

    return p0
.end method

.method public blacklist getMotionEasingType()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionEasingType:I

    return p0
.end method

.method public blacklist getVisibilityDuration()F
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityDuration:F

    return p0
.end method

.method public blacklist getVisibilityEasingType()I
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityEasingType:I

    return p0
.end method

.method public blacklist isAnimationEnabled()Z
    .locals 0

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mAnimationId:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .locals 2

    const-string v0, "AnimationSpec"

    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mAnimationId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "animationId"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getMotionDuration()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "motionDuration"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getMotionEasingType()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "motionEasingType"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getVisibilityDuration()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string/jumbo v1, "visibilityDuration"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Float;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getVisibilityEasingType()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "visibilityEasingType"

    invoke-interface {p1, v1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string v0, "enterAnimation"

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getEnterAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Enum;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object p1

    const-string v0, "exitAnimation"

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getExitAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Enum;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ANIMATION_SPEC = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getMotionDuration()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getMotionEasingType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getVisibilityDuration()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getVisibilityEasingType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getEnterAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->getExitAnimation()Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ANIMATION_SPEC ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionDuration:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " ms)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .locals 8

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mAnimationId:I

    iget v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionDuration:F

    iget v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mMotionEasingType:I

    iget v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityDuration:F

    iget v5, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mVisibilityEasingType:I

    iget-object v6, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mEnterAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    iget-object v7, p0, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->mExitAnimation:Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec;->apply(Lcom/android/internal/widget/remotecompose/core/WireBuffer;IFIFILcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;Lcom/android/internal/widget/remotecompose/core/operations/layout/animation/AnimationSpec$ANIMATION;)V

    return-void
.end method
