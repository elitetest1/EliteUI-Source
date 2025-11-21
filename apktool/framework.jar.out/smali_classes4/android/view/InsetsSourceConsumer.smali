.class public Landroid/view/InsetsSourceConsumer;
.super Ljava/lang/Object;
.source "InsetsSourceConsumer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/InsetsSourceConsumer$ShowResult;
    }
.end annotation


# static fields
.field protected static final blacklist ANIMATION_STATE_HIDE:I = 0x2

.field protected static final blacklist ANIMATION_STATE_NONE:I = 0x0

.field protected static final blacklist ANIMATION_STATE_SHOW:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "InsetsSourceConsumer"


# instance fields
.field protected blacklist mAnimationState:I

.field protected final blacklist mController:Landroid/view/InsetsController;

.field private blacklist mHasViewFocusWhenWindowFocusGain:Z

.field private blacklist mHasWindowFocus:Z

.field private blacklist mId:I

.field private blacklist mPendingFrame:Landroid/graphics/Rect;

.field private blacklist mPendingVisibleFrame:Landroid/graphics/Rect;

.field private blacklist mSourceControl:Landroid/view/InsetsSourceControl;

.field protected final blacklist mState:Landroid/view/InsetsState;

.field private blacklist mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

.field private final blacklist mTmpMatrix:Landroid/graphics/Matrix;

.field private final blacklist mType:I


# direct methods
.method public constructor blacklist <init>(IILandroid/view/InsetsState;Landroid/view/InsetsController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    sget-object v0, Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;->DEFAULT:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    iput-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/InsetsSourceConsumer;->mTmpMatrix:Landroid/graphics/Matrix;

    iput p1, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    iput p2, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    iput-object p3, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iput-object p4, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    return-void
.end method

.method private blacklist applyRequestedVisibilityAndPositionToControl()V
    .locals 7

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v1

    iget v2, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    and-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getSurfacePosition()Landroid/graphics/Point;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "applyRequestedVisibilityToControl: visible="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {v6}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", host="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v6}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "InsetsSourceConsumer"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Landroid/view/InsetsSourceConsumer;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v6, v4, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-virtual {v5, v6, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    new-array v2, v2, [Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    new-instance v5, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    invoke-direct {v5, v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v5, v1}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    if-eqz v1, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v0, v5}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    iget-object v5, p0, Landroid/view/InsetsSourceConsumer;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v5}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-interface {v4, v2}, Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;->applySurfaceParams([Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;)V

    invoke-virtual {p0, v1}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public blacklist applyLocalVisibilityOverride()Z
    .locals 7

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "ImeInsetsSourceConsumer#applyLocalVisibilityOverride"

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_0
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v2}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v2

    iget v3, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    and-int/2addr v2, v3

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    const-string v5, "InsetsSourceConsumer"

    if-nez v4, :cond_4

    sget-boolean v0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {p0}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "applyLocalVisibilityOverride: No control in %s for type %s, requestedVisible=%s"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    :cond_4
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    sget v6, Landroid/view/InsetsSource;->ID_IME:I

    if-ne v4, v6, :cond_6

    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-virtual {v4}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    if-nez v4, :cond_6

    sget-boolean v2, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v2, :cond_5

    iget v2, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {v2}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {p0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "applyLocalVisibilityOverride: Set the source visibility to false, as there is no leash yet for type %s in %s"

    invoke-static {v2, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p0

    invoke-virtual {v0, v1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    return p0

    :cond_6
    invoke-virtual {v0}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v4

    if-ne v4, v2, :cond_7

    return v1

    :cond_7
    sget-boolean v1, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v1, :cond_8

    iget-object p0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {p0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "applyLocalVisibilityOverride: %s requestedVisible: %b"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {v0, v2}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    return v3
.end method

.method blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10800000002L

    iget-boolean v2, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v0, 0x10800000003L

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isShowRequested()Z

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz v0, :cond_0

    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/InsetsSourceControl;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    const-wide v1, 0x10b00000005L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    const-wide v1, 0x10b00000006L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_2
    const-wide v0, 0x10500000007L

    iget v2, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000008L

    iget p0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {p1, v0, v1, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public blacklist getControl()Landroid/view/InsetsSourceControl;
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    return-object p0
.end method

.method blacklist getId()I
    .locals 0

    iget p0, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    return p0
.end method

.method blacklist getType()I
    .locals 0

    iget p0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    return p0
.end method

.method blacklist hasPendingFrame()Z
    .locals 0

    iget-object p0, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method blacklist hasViewFocusWhenWindowFocusGain()Z
    .locals 0

    iget-boolean p0, p0, Landroid/view/InsetsSourceConsumer;->mHasViewFocusWhenWindowFocusGain:Z

    return p0
.end method

.method protected blacklist isRequestedVisibleAwaitingControl()Z
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v0

    iget p0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist isShowRequested()Z
    .locals 1

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->getType()I

    move-result p0

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist onAnimationStateChanged(Z)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v3, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {v2, v3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    iget-object v3, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    iput-object v3, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isShowRequested()Z

    move-result v3

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v4}, Landroid/view/InsetsController;->getCancelledForNewAnimationTypes()I

    move-result v4

    iget v6, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    and-int/2addr v4, v6

    if-eqz v4, :cond_2

    :goto_2
    move v4, v0

    goto :goto_3

    :cond_2
    move v4, v1

    goto :goto_3

    :cond_3
    if-nez p1, :cond_4

    if-eqz v3, :cond_4

    iget v4, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    if-ne v4, v5, :cond_2

    goto :goto_2

    :cond_4
    iget v4, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    if-ne v4, v0, :cond_2

    goto :goto_2

    :goto_3
    if-eqz p1, :cond_6

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    move v0, v5

    goto :goto_4

    :cond_6
    move v0, v1

    :goto_4
    iput v0, p0, Landroid/view/InsetsSourceConsumer;->mAnimationState:I

    if-nez v4, :cond_7

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result p1

    or-int/2addr v2, p1

    :cond_7
    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {p1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object p1

    if-eqz v2, :cond_8

    iget p0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    if-ne p0, v0, :cond_8

    instance-of p0, p1, Landroid/view/ViewRootInsetsControllerHost;

    if-eqz p0, :cond_8

    check-cast p1, Landroid/view/ViewRootInsetsControllerHost;

    invoke-virtual {p1}, Landroid/view/ViewRootInsetsControllerHost;->getViewRoot()Landroid/view/ViewRootImpl;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->forceWmRelayout()V

    :cond_8
    return v2
.end method

.method public blacklist onPerceptible(Z)V
    .locals 2

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {p0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Landroid/view/inputmethod/InputMethodManager;->reportPerceptible(Landroid/os/IBinder;Z)V

    :cond_0
    return-void
.end method

.method public blacklist onWindowFocusGained(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    iput-boolean p1, p0, Landroid/view/InsetsSourceConsumer;->mHasViewFocusWhenWindowFocusGain:Z

    return-void
.end method

.method public blacklist onWindowFocusLost()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InsetsSourceConsumer;->mHasWindowFocus:Z

    return-void
.end method

.method public blacklist removeSurface()V
    .locals 2

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {p0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/inputmethod/InputMethodManager;->removeImeSurface(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method blacklist requestHide(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 0

    return-void
.end method

.method public blacklist requestShow(ZLandroid/view/inputmethod/ImeTracker$Token;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist setControl(Landroid/view/InsetsSourceControl;[I[I[I[I)Z
    .locals 6

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p2, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    if-eqz p2, :cond_0

    if-eq p2, p1, :cond_0

    new-instance p3, Landroid/view/InsetsController$$ExternalSyntheticLambda8;

    invoke-direct {p3}, Landroid/view/InsetsController$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p2, p3}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    iput-object p1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    iput-object p1, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    const-string v2, "InsetsSourceConsumer"

    if-eqz p1, :cond_2

    sget-boolean v3, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v3

    invoke-static {v3}, Landroid/view/WindowInsets$Type;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v4}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string/jumbo v4, "setControl -> %s on %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Landroid/view/InsetsSourceConsumer;->mSourceControl:Landroid/view/InsetsSourceControl;

    const/4 v4, 0x1

    if-nez v3, :cond_7

    iget-object p1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {p1, p0}, Landroid/view/InsetsController;->notifyControlRevoked(Landroid/view/InsetsSourceConsumer;)V

    iget-object p1, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget p2, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {p1, p2}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object p1

    iget-object p2, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {p2}, Landroid/view/InsetsController;->getLastDispatchedState()Landroid/view/InsetsState;

    move-result-object p2

    iget p3, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {p2, p3}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object p2

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p3

    if-eqz p3, :cond_3

    move p3, v4

    goto :goto_0

    :cond_3
    move p3, v1

    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/InsetsSource;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_4

    move v1, v4

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroid/view/InsetsSource;->setVisible(Z)Landroid/view/InsetsSource;

    :cond_5
    if-eq p3, v1, :cond_6

    iget-object p1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {p1}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    :cond_6
    sget-object p1, Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;->DEFAULT:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    invoke-virtual {p0, p1}, Landroid/view/InsetsSourceConsumer;->setSurfaceParamsApplier(Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;)V

    goto/16 :goto_3

    :cond_7
    if-eqz v0, :cond_8

    sget-object v3, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v3

    invoke-static {v3}, Landroid/view/InsetsSource;->getInsetSide(Landroid/graphics/Insets;)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object v5

    invoke-static {v5}, Landroid/view/InsetsSource;->getInsetSide(Landroid/graphics/Insets;)I

    move-result v5

    if-eq v3, v5, :cond_8

    aget v3, p4, v1

    iget v5, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    or-int/2addr v3, v5

    aput v3, p4, v1

    :cond_8
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->isRequestedVisibleAwaitingControl()Z

    move-result p4

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v3

    goto :goto_1

    :cond_9
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    if-eqz v5, :cond_e

    if-eqz v3, :cond_a

    invoke-virtual {v5, v3}, Landroid/view/SurfaceControl;->isSameSurface(Landroid/view/SurfaceControl;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_a
    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->isInitiallyVisible()Z

    move-result v3

    if-eq p4, v3, :cond_e

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getType()I

    move-result v3

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v5

    if-eq v3, v5, :cond_b

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getInsetsHint()Landroid/graphics/Insets;

    move-result-object p1

    invoke-static {p1}, Landroid/view/InsetsSource;->getInsetSide(Landroid/graphics/Insets;)I

    move-result p1

    if-eqz p1, :cond_e

    :cond_b
    sget-boolean p1, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {p1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/InsetsController$Host;->getRootViewTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Gaining leash in %s, requestedVisible: %b"

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    if-eqz p4, :cond_d

    aget p1, p2, v1

    iget p3, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    or-int/2addr p1, p3

    aput p1, p2, v1

    goto :goto_2

    :cond_d
    aget p1, p3, v1

    iget p2, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    or-int/2addr p1, p2

    aput p1, p3, v1

    :goto_2
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->isFake()Z

    move-result p1

    if-eqz p1, :cond_11

    aget p1, p5, v1

    iget p0, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    or-int/2addr p0, p1

    aput p0, p5, v1

    goto :goto_3

    :cond_e
    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {p1}, Landroid/view/InsetsController;->notifyVisibilityChanged()V

    :cond_f
    iget-object p1, p0, Landroid/view/InsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    iget p2, p0, Landroid/view/InsetsSourceConsumer;->mType:I

    invoke-virtual {p1, p2}, Landroid/view/InsetsController;->hasSurfaceAnimation(I)Z

    move-result p1

    if-nez p1, :cond_10

    invoke-direct {p0}, Landroid/view/InsetsSourceConsumer;->applyRequestedVisibilityAndPositionToControl()V

    :cond_10
    if-nez p4, :cond_11

    if-nez v0, :cond_11

    invoke-virtual {p0}, Landroid/view/InsetsSourceConsumer;->removeSurface()V

    :cond_11
    :goto_3
    if-eqz v0, :cond_12

    new-instance p0, Landroid/view/InsetsController$$ExternalSyntheticLambda8;

    invoke-direct {p0}, Landroid/view/InsetsController$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {v0, p0}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    :cond_12
    return v4
.end method

.method blacklist setId(I)V
    .locals 0

    iput p1, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    return-void
.end method

.method blacklist setSurfaceParamsApplier(Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;)V
    .locals 0

    iput-object p1, p0, Landroid/view/InsetsSourceConsumer;->mSurfaceParamsApplier:Landroid/view/InsetsAnimationControlRunner$SurfaceParamsApplier;

    return-void
.end method

.method public blacklist updateSource(Landroid/view/InsetsSource;I)V
    .locals 3

    iget-object v0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    iget v1, p0, Landroid/view/InsetsSourceConsumer;->mId:I

    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->peekSource(I)Landroid/view/InsetsSource;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, -0x1

    if-eq p2, v2, :cond_3

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :cond_1
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getFrame()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/InsetsSource;->setFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    invoke-virtual {v0}, Landroid/view/InsetsSource;->getVisibleFrame()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/InsetsSource;->setVisibleFrame(Landroid/graphics/Rect;)Landroid/view/InsetsSource;

    iget-object p0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {p0, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    sget-boolean p0, Landroid/view/InsetsController;->DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "updateSource: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InsetsSourceConsumer"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    :goto_0
    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingFrame:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/view/InsetsSourceConsumer;->mPendingVisibleFrame:Landroid/graphics/Rect;

    iget-object p0, p0, Landroid/view/InsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {p0, p1}, Landroid/view/InsetsState;->addSource(Landroid/view/InsetsSource;)V

    return-void
.end method
