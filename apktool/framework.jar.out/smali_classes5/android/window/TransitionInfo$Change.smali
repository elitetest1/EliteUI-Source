.class public final Landroid/window/TransitionInfo$Change;
.super Ljava/lang/Object;
.source "TransitionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/TransitionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Change"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionInfo$Change;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mActivityComponent:Landroid/content/ComponentName;

.field private blacklist mAffordanceTargetFreeformTask:Z

.field private blacklist mAllowAppBackgroundLayer:Z

.field private blacklist mAllowEnterPip:Z

.field private blacklist mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

.field private blacklist mBackgroundColor:I

.field private final blacklist mChangeEndOutsets:Landroid/graphics/Rect;

.field private blacklist mChangeLeash:Landroid/view/SurfaceControl;

.field private final blacklist mChangeStartOutsets:Landroid/graphics/Rect;

.field private blacklist mChangeTransitMode:I

.field private final blacklist mConfiguration:Landroid/content/res/Configuration;

.field private final blacklist mContainer:Landroid/window/WindowContainerToken;

.field private final blacklist mEndAbsBounds:Landroid/graphics/Rect;

.field private blacklist mEndDisplayId:I

.field private blacklist mEndFixedRotation:I

.field private final blacklist mEndParentSize:Landroid/graphics/Point;

.field private final blacklist mEndRelOffset:Landroid/graphics/Point;

.field private blacklist mEndRotation:I

.field private blacklist mFadeInOutRotationNeeded:Z

.field private blacklist mFlags:I

.field private blacklist mFlags2:I

.field private blacklist mForceHidingTransit:I

.field private blacklist mFreeformStashScale:F

.field private blacklist mHasFixedRotationTransform:Z

.field private final blacklist mInitialScale:Landroid/graphics/PointF;

.field private final blacklist mInsetsForRecentsTransition:Landroid/graphics/Rect;

.field private blacklist mIsCellDivider:Z

.field private blacklist mIsEnteringPinnedMode:Z

.field private blacklist mIsInSplitActivityMode:Z

.field private blacklist mIsPopOverAnimationNeeded:Z

.field private blacklist mIsTransitionWithDim:Z

.field private blacklist mLastParent:Landroid/window/WindowContainerToken;

.field private blacklist mLeash:Landroid/view/SurfaceControl;

.field private blacklist mMinimizeAnimState:I

.field private final blacklist mMinimizePoint:Landroid/graphics/PointF;

.field private blacklist mMode:I

.field private blacklist mParent:Landroid/window/WindowContainerToken;

.field private blacklist mReleaseChangeLeashAllowed:Z

.field private blacklist mResumedAffordance:Z

.field private blacklist mRotationAnimation:I

.field private blacklist mSkipDefaultTransition:Z

.field private blacklist mSkipSetupAnimHierarchy:Z

.field private blacklist mSnapshot:Landroid/view/SurfaceControl;

.field private blacklist mSnapshotLuma:F

.field private final blacklist mStartAbsBounds:Landroid/graphics/Rect;

.field private blacklist mStartDisplayId:I

.field private blacklist mStartRotation:I

.field private blacklist mTaskFragmentToken:Landroid/os/IBinder;

.field private blacklist mTaskIdForActivity:I

.field private blacklist mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChangeLeash(Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmConfiguration(Landroid/window/TransitionInfo$Change;)Landroid/content/res/Configuration;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContainer(Landroid/window/TransitionInfo$Change;)Landroid/window/WindowContainerToken;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmReleaseChangeLeashAllowed(Landroid/window/TransitionInfo$Change;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TransitionInfo$Change;->mReleaseChangeLeashAllowed:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSnapshot(Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChangeLeash(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V
    .locals 0

    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSnapshot(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V
    .locals 0

    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlocalRemoteCopy(Landroid/window/TransitionInfo$Change;)Landroid/window/TransitionInfo$Change;
    .locals 0

    invoke-direct {p0}, Landroid/window/TransitionInfo$Change;->localRemoteCopy()Landroid/window/TransitionInfo$Change;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/window/TransitionInfo$Change$1;

    invoke-direct {v0}, Landroid/window/TransitionInfo$Change$1;-><init>()V

    sput-object v0, Landroid/window/TransitionInfo$Change;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, p0, Landroid/window/TransitionInfo$Change;->mEndParentSize:Landroid/graphics/Point;

    const/4 v5, 0x0

    iput-object v5, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v6, -0x1

    iput v6, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    iput v6, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    iput v6, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    iput v6, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    iput v6, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    iput v6, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    iput-object v5, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    iput-object v5, p0, Landroid/window/TransitionInfo$Change;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v5, p0, Landroid/window/TransitionInfo$Change;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    iput-object v5, p0, Landroid/window/TransitionInfo$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7}, Landroid/graphics/PointF;-><init>()V

    iput-object v7, p0, Landroid/window/TransitionInfo$Change;->mInitialScale:Landroid/graphics/PointF;

    new-instance v8, Landroid/content/res/Configuration;

    invoke-direct {v8}, Landroid/content/res/Configuration;-><init>()V

    iput-object v8, p0, Landroid/window/TransitionInfo$Change;->mConfiguration:Landroid/content/res/Configuration;

    iput-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mIsCellDivider:Z

    iput-object v5, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, p0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/window/TransitionInfo$Change;->mReleaseChangeLeashAllowed:Z

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, p0, Landroid/window/TransitionInfo$Change;->mInsetsForRecentsTransition:Landroid/graphics/Rect;

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mForceHidingTransit:I

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mMinimizeAnimState:I

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    iput-object v11, p0, Landroid/window/TransitionInfo$Change;->mMinimizePoint:Landroid/graphics/PointF;

    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, p0, Landroid/window/TransitionInfo$Change;->mFreeformStashScale:F

    iput v6, p0, Landroid/window/TransitionInfo$Change;->mTaskIdForActivity:I

    iput-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mHasFixedRotationTransform:Z

    iput-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mAllowAppBackgroundLayer:Z

    sget-object v0, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerToken;

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    sget-object v0, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerToken;

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    sget-object v0, Landroid/window/WindowContainerToken;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerToken;

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    new-instance v0, Landroid/view/SurfaceControl;

    invoke-direct {v0}, Landroid/view/SurfaceControl;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {v3, p1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {v4, p1}, Landroid/graphics/Point;->readFromParcel(Landroid/os/Parcel;)V

    sget-object v0, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mSnapshotLuma:F

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mActivityComponent:Landroid/content/ComponentName;

    sget-object v0, Landroid/window/TransitionInfo$AnimationOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$AnimationOptions;

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v0, :cond_0

    invoke-virtual {v8, p1}, Landroid/content/res/Configuration;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {v7, p1}, Landroid/graphics/PointF;->readFromParcel(Landroid/os/Parcel;)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/view/SurfaceControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl;

    iput-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {v9, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    :cond_1
    invoke-virtual {v10, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_WITH_DIM:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mIsTransitionWithDim:Z

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mForceHidingTransit:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mMinimizeAnimState:I

    invoke-virtual {v11, p1}, Landroid/graphics/PointF;->readFromParcel(Landroid/os/Parcel;)V

    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mAffordanceTargetFreeformTask:Z

    :cond_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FREEFORM_STASH:Z

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mFreeformStashScale:F

    :cond_5
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mResumedAffordance:Z

    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mFadeInOutRotationNeeded:Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mIsEnteringPinnedMode:Z

    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mIsPopOverAnimationNeeded:Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mTaskIdForActivity:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mHasFixedRotationTransform:Z

    :cond_8
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_EXTENSION_APP_BACKGROUND_LAYER:Z

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mAllowAppBackgroundLayer:Z

    :cond_9
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/window/TransitionInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndParentSize:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    const/4 v2, -0x1

    iput v2, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    iput v2, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    iput v2, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    iput v2, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    iput v2, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    iput v2, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Landroid/window/TransitionInfo$Change;->mInitialScale:Landroid/graphics/PointF;

    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, p0, Landroid/window/TransitionInfo$Change;->mConfiguration:Landroid/content/res/Configuration;

    iput-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mIsCellDivider:Z

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mReleaseChangeLeashAllowed:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mInsetsForRecentsTransition:Landroid/graphics/Rect;

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mForceHidingTransit:I

    iput v0, p0, Landroid/window/TransitionInfo$Change;->mMinimizeAnimState:I

    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo$Change;->mMinimizePoint:Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/window/TransitionInfo$Change;->mFreeformStashScale:F

    iput v2, p0, Landroid/window/TransitionInfo$Change;->mTaskIdForActivity:I

    iput-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mHasFixedRotationTransform:Z

    iput-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mAllowAppBackgroundLayer:Z

    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    iput-object p2, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    return-void
.end method

.method private blacklist localRemoteCopy()Landroid/window/TransitionInfo$Change;
    .locals 5

    new-instance v0, Landroid/window/TransitionInfo$Change;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    new-instance v2, Landroid/view/SurfaceControl;

    iget-object v3, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    const-string v4, "localRemote"

    invoke-direct {v2, v3, v4}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Landroid/window/TransitionInfo$Change;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;)V

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    iput-object v1, v0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    iput-object v1, v0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mMode:I

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mFlags:I

    iget-object v1, v0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    iget-object v1, v0, Landroid/window/TransitionInfo$Change;->mEndParentSize:Landroid/graphics/Point;

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mEndParentSize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v1, v0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/SurfaceControl;

    iget-object v3, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    invoke-direct {v1, v3, v4}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iput-object v1, v0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mSnapshotLuma:F

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mSnapshotLuma:F

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/window/TransitionInfo$Change;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    iput-object v1, v0, Landroid/window/TransitionInfo$Change;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/window/TransitionInfo$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/window/TransitionInfo$Change;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Landroid/window/TransitionInfo$Change;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v1, v0, Landroid/window/TransitionInfo$Change;->mInitialScale:Landroid/graphics/PointF;

    iget-object v3, p0, Landroid/window/TransitionInfo$Change;->mInitialScale:Landroid/graphics/PointF;

    invoke-virtual {v1, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_2

    new-instance v2, Landroid/view/SurfaceControl;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    invoke-direct {v2, v1, v4}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    :cond_2
    iput-object v2, v0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    iget-object v1, v0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3
    iget-object v1, v0, Landroid/window/TransitionInfo$Change;->mInsetsForRecentsTransition:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mInsetsForRecentsTransition:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_WITH_DIM:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mIsTransitionWithDim:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo$Change;->mIsTransitionWithDim:Z

    :cond_4
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mForceHidingTransit:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mForceHidingTransit:I

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    if-eqz v1, :cond_5

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mMinimizeAnimState:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mMinimizeAnimState:I

    iget-object v1, v0, Landroid/window/TransitionInfo$Change;->mMinimizePoint:Landroid/graphics/PointF;

    iget-object v2, p0, Landroid/window/TransitionInfo$Change;->mMinimizePoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    :cond_5
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mAffordanceTargetFreeformTask:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo$Change;->mAffordanceTargetFreeformTask:Z

    :cond_6
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FREEFORM_STASH:Z

    if-eqz v1, :cond_7

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mFreeformStashScale:F

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mFreeformStashScale:F

    :cond_7
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mResumedAffordance:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo$Change;->mResumedAffordance:Z

    :cond_8
    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mFadeInOutRotationNeeded:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo$Change;->mFadeInOutRotationNeeded:Z

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mIsEnteringPinnedMode:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo$Change;->mIsEnteringPinnedMode:Z

    :cond_9
    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mIsPopOverAnimationNeeded:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo$Change;->mIsPopOverAnimationNeeded:Z

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v1, :cond_a

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mTaskIdForActivity:I

    iput v1, v0, Landroid/window/TransitionInfo$Change;->mTaskIdForActivity:I

    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mHasFixedRotationTransform:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo$Change;->mHasFixedRotationTransform:Z

    :cond_a
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_EXTENSION_APP_BACKGROUND_LAYER:Z

    if-eqz v1, :cond_b

    iget-boolean p0, p0, Landroid/window/TransitionInfo$Change;->mAllowAppBackgroundLayer:Z

    iput-boolean p0, v0, Landroid/window/TransitionInfo$Change;->mAllowAppBackgroundLayer:Z

    :cond_b
    return-object v0
.end method


# virtual methods
.method public blacklist addFlags2(I)V
    .locals 1

    iget v0, p0, Landroid/window/TransitionInfo$Change;->mFlags2:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/window/TransitionInfo$Change;->mFlags2:I

    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getActivityComponent()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mActivityComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public blacklist getAffordanceTargetFreeformTask()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TransitionInfo$Change;->mAffordanceTargetFreeformTask:Z

    return p0
.end method

.method public blacklist getAllowAppBackgroundLayer()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TransitionInfo$Change;->mAllowAppBackgroundLayer:Z

    return p0
.end method

.method public blacklist getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    return-object p0
.end method

.method public blacklist getBackgroundColor()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    return p0
.end method

.method public blacklist getChangeEndOutsets()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist getChangeLeash()Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public blacklist getChangeStartOutsets()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist getChangeTransitMode()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    return p0
.end method

.method public blacklist getConfiguration()Landroid/content/res/Configuration;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mConfiguration:Landroid/content/res/Configuration;

    return-object p0
.end method

.method public blacklist getContainer()Landroid/window/WindowContainerToken;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    return-object p0
.end method

.method public blacklist getEndAbsBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist getEndDisplayId()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    return p0
.end method

.method public blacklist getEndFixedRotation()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    return p0
.end method

.method public blacklist getEndParentSize()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mEndParentSize:Landroid/graphics/Point;

    return-object p0
.end method

.method public blacklist getEndRelOffset()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    return-object p0
.end method

.method public blacklist getEndRotation()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    return p0
.end method

.method public blacklist getFlags()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    return p0
.end method

.method public blacklist getFlags2()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$Change;->mFlags2:I

    return p0
.end method

.method public blacklist getForceHidingTransit()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$Change;->mForceHidingTransit:I

    return p0
.end method

.method public blacklist getFreeformStashScale()F
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$Change;->mFreeformStashScale:F

    return p0
.end method

.method public blacklist getInitialScale()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mInitialScale:Landroid/graphics/PointF;

    return-object p0
.end method

.method public blacklist getInsetsForRecentsTransition()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mInsetsForRecentsTransition:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist getIsCellDivider()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TransitionInfo$Change;->mIsCellDivider:Z

    return p0
.end method

.method public blacklist getLastParent()Landroid/window/WindowContainerToken;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    return-object p0
.end method

.method public blacklist getLeash()Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public blacklist getMinimizeAnimState()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$Change;->mMinimizeAnimState:I

    return p0
.end method

.method public blacklist getMinimizePoint()Landroid/graphics/PointF;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mMinimizePoint:Landroid/graphics/PointF;

    return-object p0
.end method

.method public blacklist getMode()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    return p0
.end method

.method public blacklist getParent()Landroid/window/WindowContainerToken;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    return-object p0
.end method

.method public blacklist getPopOverAnimationNeeded()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TransitionInfo$Change;->mIsPopOverAnimationNeeded:Z

    return p0
.end method

.method public blacklist getResumedAffordance()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TransitionInfo$Change;->mResumedAffordance:Z

    return p0
.end method

.method public blacklist getRotationAnimation()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    return p0
.end method

.method public blacklist getSnapshot()Landroid/view/SurfaceControl;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public blacklist getSnapshotLuma()F
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$Change;->mSnapshotLuma:F

    return p0
.end method

.method public blacklist getSplitActivityMode()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TransitionInfo$Change;->mIsInSplitActivityMode:Z

    return p0
.end method

.method public blacklist getStartAbsBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist getStartDisplayId()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    return p0
.end method

.method public blacklist getStartRotation()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    return p0
.end method

.method public blacklist getTaskFragmentToken()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public blacklist getTaskIdForActivity()I
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$Change;->mTaskIdForActivity:I

    return p0
.end method

.method public blacklist getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p0
.end method

.method public blacklist hasAllFlags(I)Z
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasChangeEndOutsets()Z
    .locals 1

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-gtz v0, :cond_1

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist hasChangeStartOutsets()Z
    .locals 1

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gtz v0, :cond_1

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-gtz v0, :cond_1

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist hasFixedRotationTransform()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TransitionInfo$Change;->mHasFixedRotationTransform:Z

    return p0
.end method

.method public blacklist hasFlags(I)Z
    .locals 0

    iget p0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasValidInitialScale()Z
    .locals 2

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mInitialScale:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mInitialScale:Landroid/graphics/PointF;

    iget p0, p0, Landroid/graphics/PointF;->y:F

    cmpl-float p0, p0, v1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isAllowEnterPip()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    return p0
.end method

.method public blacklist isEnteringPinnedMode()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TransitionInfo$Change;->mIsEnteringPinnedMode:Z

    return p0
.end method

.method public blacklist isFadeInOutRotationNeeded()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TransitionInfo$Change;->mFadeInOutRotationNeeded:Z

    return p0
.end method

.method public blacklist isForceHidingEnter()Z
    .locals 2

    iget p0, p0, Landroid/window/TransitionInfo$Change;->mForceHidingTransit:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public blacklist isForceHidingWithoutAnimation()Z
    .locals 1

    iget p0, p0, Landroid/window/TransitionInfo$Change;->mForceHidingTransit:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isTransitionWithDim()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TransitionInfo$Change;->mIsTransitionWithDim:Z

    return p0
.end method

.method public blacklist setActivityComponent(Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mActivityComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public blacklist setAffordanceTargetFreeformTask(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mAffordanceTargetFreeformTask:Z

    return-void
.end method

.method public blacklist setAllowAppBackgroundLayer(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mAllowAppBackgroundLayer:Z

    return-void
.end method

.method public blacklist setAllowEnterPip(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    return-void
.end method

.method public blacklist setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V
    .locals 0

    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    return-void
.end method

.method public blacklist setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    return-void
.end method

.method public blacklist setChangeEndOutsets(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist setChangeLeash(Landroid/view/SurfaceControl;)V
    .locals 0

    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    return-void
.end method

.method public blacklist setChangeStartOutsets(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist setChangeTransitMode(I)V
    .locals 0

    iput p1, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    return-void
.end method

.method public blacklist setConfiguration(Landroid/content/res/Configuration;)V
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method

.method public blacklist setDisplayId(II)V
    .locals 0

    iput p1, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    iput p2, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    return-void
.end method

.method public blacklist setEndAbsBounds(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist setEndFixedRotation(I)V
    .locals 0

    iput p1, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    return-void
.end method

.method public blacklist setEndParentSize(II)V
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mEndParentSize:Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public blacklist setEndRelOffset(II)V
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public blacklist setEnteringPinnedMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mIsEnteringPinnedMode:Z

    return-void
.end method

.method public blacklist setFadeInOutRotationNeeded()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mFadeInOutRotationNeeded:Z

    return-void
.end method

.method public blacklist setFlags(I)V
    .locals 0

    iput p1, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    return-void
.end method

.method public blacklist setForceHidingTransit(I)V
    .locals 0

    iput p1, p0, Landroid/window/TransitionInfo$Change;->mForceHidingTransit:I

    return-void
.end method

.method public blacklist setFreeformStashScale(F)V
    .locals 0

    iput p1, p0, Landroid/window/TransitionInfo$Change;->mFreeformStashScale:F

    return-void
.end method

.method public blacklist setHasFixedRotationTransform(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mHasFixedRotationTransform:Z

    return-void
.end method

.method public blacklist setInitialScale(FF)V
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mInitialScale:Landroid/graphics/PointF;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method public blacklist setInsetsForRecentsTransition(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mInsetsForRecentsTransition:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist setIsCellDivider(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mIsCellDivider:Z

    return-void
.end method

.method public blacklist setLastParent(Landroid/window/WindowContainerToken;)V
    .locals 0

    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    return-void
.end method

.method public blacklist setLeash(Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceControl;

    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    return-void
.end method

.method public blacklist setMinimizeAnimState(I)V
    .locals 0

    iput p1, p0, Landroid/window/TransitionInfo$Change;->mMinimizeAnimState:I

    return-void
.end method

.method public blacklist setMinimizePoint(Landroid/graphics/PointF;)V
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mMinimizePoint:Landroid/graphics/PointF;

    invoke-virtual {p0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method public blacklist setMode(I)V
    .locals 0

    iput p1, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    return-void
.end method

.method public blacklist setParent(Landroid/window/WindowContainerToken;)V
    .locals 0

    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    return-void
.end method

.method public blacklist setPopOverAnimationNeeded(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mIsPopOverAnimationNeeded:Z

    return-void
.end method

.method public blacklist setReleaseChangeLeashAllowed(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mReleaseChangeLeashAllowed:Z

    return-void
.end method

.method public blacklist setResumedAffordance(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mResumedAffordance:Z

    return-void
.end method

.method public blacklist setRotation(II)V
    .locals 0

    iput p1, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    iput p2, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    return-void
.end method

.method public blacklist setRotationAnimation(I)V
    .locals 0

    iput p1, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    return-void
.end method

.method public blacklist setSkipDefaultTransition(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mSkipDefaultTransition:Z

    return-void
.end method

.method public blacklist setSkipSetupAnimHierarchy(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mSkipSetupAnimHierarchy:Z

    return-void
.end method

.method public blacklist setSnapshot(Landroid/view/SurfaceControl;F)V
    .locals 0

    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    iput p2, p0, Landroid/window/TransitionInfo$Change;->mSnapshotLuma:F

    return-void
.end method

.method public blacklist setSplitActivityMode(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mIsInSplitActivityMode:Z

    return-void
.end method

.method public blacklist setStartAbsBounds(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist setTaskFragmentToken(Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    return-void
.end method

.method public blacklist setTaskIdForActivity(I)V
    .locals 0

    iput p1, p0, Landroid/window/TransitionInfo$Change;->mTaskIdForActivity:I

    return-void
.end method

.method public blacklist setTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iput-object p1, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method

.method public blacklist setTransitionWithDim(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/window/TransitionInfo$Change;->mIsTransitionWithDim:Z

    return-void
.end method

.method public blacklist shouldSkipDefaultTransition()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TransitionInfo$Change;->mSkipDefaultTransition:Z

    return p0
.end method

.method public blacklist shouldSkipSetupAnimHierarchy()Z
    .locals 0

    iget-boolean p0, p0, Landroid/window/TransitionInfo$Change;->mSkipSetupAnimHierarchy:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    instance-of v1, v1, Landroid/os/BinderProxy;

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    invoke-static {v1}, Landroid/window/TransitionInfo;->modeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    invoke-static {v1}, Landroid/window/TransitionInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_1

    const-string v1, " p="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_2

    const-string v1, " leash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, " sb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " eb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, " eo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndParentSize:Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Point;->equals(II)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, " epz="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mEndParentSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, " d="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    iget v2, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    const-string v3, "->"

    if-eq v1, v2, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    iget v2, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    if-eq v1, v2, :cond_7

    const-string v1, " r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_7
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    const-string v1, " endFixedRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_8
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    if-eqz v1, :cond_9

    const-string v1, " bc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_a

    const-string v1, " snapshot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_b

    const-string v1, " lastParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_b
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mActivityComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_c

    const-string v1, " component="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_d

    const-string v1, " taskParent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->parentTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_d
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    if-eqz v1, :cond_e

    const-string v1, " opt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    if-eqz v1, :cond_f

    const-string v1, " taskFragmentToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_f
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_10

    const-string v1, " changeLeash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_10
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    if-eqz v1, :cond_11

    const-string v1, " cm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_11
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->hasChangeStartOutsets()Z

    move-result v1

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " cso="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->hasChangeEndOutsets()Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " ceo="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    const-string v1, " inset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/TransitionInfo$Change;->mInsetsForRecentsTransition:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_WITH_DIM:Z

    if-eqz v1, :cond_14

    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mIsTransitionWithDim:Z

    if-eqz v1, :cond_14

    const-string v1, " dim=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget v1, p0, Landroid/window/TransitionInfo$Change;->mForceHidingTransit:I

    if-eqz v1, :cond_15

    const-string v1, " fht="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mForceHidingTransit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_15
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mAffordanceTargetFreeformTask:Z

    if-eqz v1, :cond_16

    const-string v1, " affordanceTargetFreeformTask=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mFadeInOutRotationNeeded:Z

    if-eqz v1, :cond_17

    const-string v1, " fade="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mFadeInOutRotationNeeded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :cond_17
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz v1, :cond_18

    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mIsEnteringPinnedMode:Z

    if-eqz v1, :cond_18

    const-string v1, " enter_pip=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mIsPopOverAnimationNeeded:Z

    if-eqz v1, :cond_19

    const-string v1, " isPopOverAnimationNeeded=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz v1, :cond_1b

    iget v1, p0, Landroid/window/TransitionInfo$Change;->mTaskIdForActivity:I

    if-eq v1, v2, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " taskIdForActivity="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Landroid/window/TransitionInfo$Change;->mTaskIdForActivity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    iget-boolean v1, p0, Landroid/window/TransitionInfo$Change;->mHasFixedRotationTransform:Z

    if-eqz v1, :cond_1b

    const-string v1, " hasFixedRotationTransform=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_EXTENSION_APP_BACKGROUND_LAYER:Z

    if-eqz v1, :cond_1c

    iget-boolean p0, p0, Landroid/window/TransitionInfo$Change;->mAllowAppBackgroundLayer:Z

    if-eqz p0, :cond_1c

    const-string p0, " allowAppBgLayer=true"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mContainer:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mParent:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mLastParent:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/window/TransitionInfo$Change;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TransitionInfo$Change;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mStartAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndAbsBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndRelOffset:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mEndParentSize:Landroid/graphics/Point;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mAllowEnterPip:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/window/TransitionInfo$Change;->mStartDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndDisplayId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TransitionInfo$Change;->mStartRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TransitionInfo$Change;->mEndFixedRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TransitionInfo$Change;->mRotationAnimation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/window/TransitionInfo$Change;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mSnapshot:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/window/TransitionInfo$Change;->mSnapshotLuma:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mAnimationOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mTaskFragmentToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mInitialScale:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget v0, p0, Landroid/window/TransitionInfo$Change;->mChangeTransitMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeStartOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mChangeEndOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_1
    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mInsetsForRecentsTransition:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_WITH_DIM:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/window/TransitionInfo$Change;->mIsTransitionWithDim:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :cond_2
    iget v0, p0, Landroid/window/TransitionInfo$Change;->mForceHidingTransit:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_MINIMIZE_SHELL_TRANSITION:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/window/TransitionInfo$Change;->mMinimizeAnimState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/window/TransitionInfo$Change;->mMinimizePoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/PointF;->writeToParcel(Landroid/os/Parcel;I)V

    :cond_3
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_RESUMED_AFFORDANCE_SHELL_TRANSITION:Z

    if-eqz p2, :cond_4

    iget-boolean p2, p0, Landroid/window/TransitionInfo$Change;->mAffordanceTargetFreeformTask:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    :cond_4
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_FREEFORM_STASH:Z

    if-eqz p2, :cond_5

    iget p2, p0, Landroid/window/TransitionInfo$Change;->mFreeformStashScale:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    :cond_5
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_RESUMED_AFFORDANCE:Z

    if-eqz p2, :cond_6

    iget-boolean p2, p0, Landroid/window/TransitionInfo$Change;->mResumedAffordance:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    :cond_6
    iget-boolean p2, p0, Landroid/window/TransitionInfo$Change;->mFadeInOutRotationNeeded:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_PIP_SHELL_TRANSITION:Z

    if-eqz p2, :cond_7

    iget-boolean p2, p0, Landroid/window/TransitionInfo$Change;->mIsEnteringPinnedMode:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    :cond_7
    iget-boolean p2, p0, Landroid/window/TransitionInfo$Change;->mIsPopOverAnimationNeeded:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    if-eqz p2, :cond_8

    iget p2, p0, Landroid/window/TransitionInfo$Change;->mTaskIdForActivity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Landroid/window/TransitionInfo$Change;->mHasFixedRotationTransform:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    :cond_8
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_EXTENSION_APP_BACKGROUND_LAYER:Z

    if-eqz p2, :cond_9

    iget-boolean p0, p0, Landroid/window/TransitionInfo$Change;->mAllowAppBackgroundLayer:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :cond_9
    return-void
.end method
