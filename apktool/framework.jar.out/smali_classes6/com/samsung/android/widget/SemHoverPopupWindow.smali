.class public Lcom/samsung/android/widget/SemHoverPopupWindow;
.super Ljava/lang/Object;
.source "SemHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemHoverPopupWindow$Gravity;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;,
        Lcom/samsung/android/widget/SemHoverPopupWindow$QuintEaseOut;
    }
.end annotation


# static fields
.field private static final blacklist ANCHOR_VIEW_COORDINATES_TYPE_SCREEN:I = 0x2

.field private static final blacklist ANCHOR_VIEW_COORDINATES_TYPE_WINDOW:I = 0x1

.field private static final blacklist DEBUG:Z = false

.field private static final blacklist HOVER_DETECT_TIME_MS:I = 0x12c

.field private static final blacklist HOVER_DETECT_TIME_MS_DEX:I = 0x2ee

.field private static final blacklist MSG_TIMEOUT:I = 0x1

.field private static final blacklist POPUP_TIMEOUT_MS:I = 0x1388

.field private static final blacklist TAG:Ljava/lang/String; = "SemHoverPopupWindow"

.field private static final blacklist TIMEOUT_DELAY:I = 0x7d0

.field public static final whitelist TYPE_NONE:I = 0x0

.field public static final whitelist TYPE_TOOLTIP:I = 0x1

.field public static final whitelist TYPE_USER_CUSTOM:I = 0x3

.field public static final whitelist TYPE_WIDGET_DEFAULT:I = 0x2

.field private static final blacklist UI_THREAD_BUSY_TIME_MS:I = 0x3e8

.field private static final blacklist localLOGV:Z

.field private static final blacklist sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;


# instance fields
.field private blacklist mAnchorRect:Landroid/graphics/Rect;

.field private blacklist mAnchorView:Landroid/view/View;

.field protected blacklist mAnimationStyle:I

.field private blacklist mContentHeight:I

.field private blacklist mContentLP:Landroid/view/ViewGroup$LayoutParams;

.field protected blacklist mContentText:Ljava/lang/CharSequence;

.field protected blacklist mContentView:Landroid/view/View;

.field private blacklist mContentWidth:I

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mCoordinatesOfAnchorView:I

.field private blacklist mCoverManager:Lcom/samsung/android/cover/ICoverManager;

.field private blacklist mDeviceRotation:I

.field private blacklist mDismissHandler:Landroid/os/Handler;

.field private blacklist mDismissTouchableHPWOnActionUp:Z

.field private blacklist mDisplayFrame:Landroid/graphics/Rect;

.field private blacklist mEnabled:Z

.field private blacklist mHashCodeForViewState:I

.field protected blacklist mHoverDetectTimeMS:I

.field private blacklist mHoverPaddingBottom:I

.field private blacklist mHoverPaddingLeft:I

.field private blacklist mHoverPaddingRight:I

.field private blacklist mHoverPaddingTop:I

.field private blacklist mHoveringPointX:I

.field private blacklist mHoveringPointY:I

.field private blacklist mIsCheckedRealDisplayMetricsInDexMode:Z

.field private blacklist mIsHoverPaddingEnabled:Z

.field private blacklist mIsPopupTouchable:Z

.field private blacklist mIsSPenPointChanged:Z

.field private blacklist mIsShowMessageSent:Z

.field private blacklist mIsSkipPenPointEffect:Z

.field private blacklist mIsTryingShowPopup:Z

.field private blacklist mIsUspFeature:Z

.field private blacklist mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

.field private blacklist mNavigationBarHeight:I

.field private blacklist mNeedNotWindowOffset:Z

.field private blacklist mNeedToMeasureContentView:Z

.field protected final blacklist mParentView:Landroid/view/View;

.field private blacklist mPopup:Landroid/widget/PopupWindow;

.field protected blacklist mPopupGravity:I

.field private blacklist mPopupOffsetX:I

.field private blacklist mPopupOffsetY:I

.field private blacklist mPopupPosX:I

.field private blacklist mPopupPosY:I

.field protected blacklist mPopupType:I

.field private blacklist mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

.field private final blacklist mResources:Landroid/content/res/Resources;

.field private blacklist mShowPopupRunnable:Ljava/lang/Runnable;

.field private blacklist mToolType:I

.field private blacklist mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

.field private blacklist mWindowGapX:I


# direct methods
.method public static synthetic blacklist $r8$lambda$VAWVpXN7ujernJyIDGuMo72mIns(Lcom/samsung/android/widget/SemHoverPopupWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPopup()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDismissTouchableHPWOnActionUp(Lcom/samsung/android/widget/SemHoverPopupWindow;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPopup(Lcom/samsung/android/widget/SemHoverPopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmToolType(Lcom/samsung/android/widget/SemHoverPopupWindow;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/View;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedNotWindowOffset:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x10104a9

    invoke-virtual {v2, v3, v1, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v1, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->initInstance()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setInstanceByType(I)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x2ee

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    :cond_1
    new-instance p1, Lcom/samsung/android/widget/SemHoverPopupWindow$1;

    iget-object p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/widget/SemHoverPopupWindow$1;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    return-void
.end method

.method private blacklist computePopupPosition(Landroid/view/View;III)V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_0

    goto/16 :goto_d

    :cond_0
    iget v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-eqz v1, :cond_1

    invoke-direct {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getDeviceRotation()I

    move-result v1

    iput v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    :cond_1
    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v3, v1, [I

    iget-object v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    if-nez p1, :cond_2

    iget-object v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object/from16 v5, p1

    :goto_0
    iput-object v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    move/from16 v6, p2

    iput v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    move/from16 v6, p3

    iput v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v6, p4

    iput v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    invoke-virtual {v5, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationInWindow([I)V

    sget-boolean v6, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    const-string v7, "computePopupPosition :anchorLocInWindow y:"

    const-string v8, "computePopupPosition :anchorLocInWindow x:"

    const-string v9, "computePopupPosition :anchorLocOnScr y:"

    const-string v10, "computePopupPosition :anchorLocOnScr x:"

    const-string v11, "SemHoverPopupWindow"

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v14, v2, v13

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v14, v2, v12

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v14, v3, v13

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget v14, v3, v12

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    move-result-object v14

    invoke-virtual {v14}, Landroid/graphics/RenderNode;->hasIdentityMatrix()Z

    move-result v14

    if-nez v14, :cond_4

    move/from16 p1, v13

    move/from16 v15, p1

    goto :goto_2

    :cond_4
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    move v15, v12

    move/from16 p1, v13

    :goto_1
    instance-of v13, v14, Landroid/view/View;

    if-eqz v13, :cond_6

    check-cast v14, Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/graphics/RenderNode;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/RenderNode;->hasIdentityMatrix()Z

    move-result v13

    if-nez v13, :cond_5

    move/from16 v15, p1

    :cond_5
    invoke-virtual {v14}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    goto :goto_1

    :cond_6
    :goto_2
    if-nez v15, :cond_7

    invoke-virtual {v5, v6}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    aget v13, v3, p1

    iget v14, v6, Landroid/graphics/Rect;->left:I

    aget v16, v2, p1

    sub-int v14, v14, v16

    add-int/2addr v13, v14

    aput v13, v3, p1

    aget v13, v3, v12

    iget v14, v6, Landroid/graphics/Rect;->top:I

    aget v16, v2, v12

    sub-int v14, v14, v16

    add-int/2addr v13, v14

    aput v13, v3, v12

    iget v13, v6, Landroid/graphics/Rect;->left:I

    aput v13, v2, p1

    iget v13, v6, Landroid/graphics/Rect;->top:I

    aput v13, v2, v12

    :cond_7
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v5, v13}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    sget-boolean v14, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    if-eqz v14, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    move/from16 p2, v12

    const-string v12, "computePopupPosition :displayFrame left:"

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v13, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v12, "computePopupPosition :displayFrame right:"

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v13, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v12, "computePopupPosition :displayFrame top:"

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v12, "computePopupPosition :displayFrame bottom:"

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v12, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    move/from16 p2, v12

    :goto_3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v17

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    aget v18, v2, p1

    aget v19, v3, p1

    move-object/from16 v20, v2

    sub-int v2, v18, v19

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int v2, v2, v17

    iput v2, v1, Landroid/graphics/Rect;->right:I

    aget v2, v20, p2

    aget v17, v3, p2

    sub-int v2, v2, v17

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v12

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v13, Landroid/graphics/Rect;->left:I

    iget v12, v1, Landroid/graphics/Rect;->left:I

    if-ne v2, v12, :cond_a

    iget v2, v13, Landroid/graphics/Rect;->right:I

    iget v12, v1, Landroid/graphics/Rect;->right:I

    if-ne v2, v12, :cond_a

    iget v2, v13, Landroid/graphics/Rect;->top:I

    iget v12, v1, Landroid/graphics/Rect;->top:I

    if-ne v2, v12, :cond_a

    iget v2, v13, Landroid/graphics/Rect;->bottom:I

    iget v12, v1, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v12, :cond_9

    goto :goto_4

    :cond_9
    move-object/from16 v18, v3

    move-object/from16 v19, v5

    goto/16 :goto_7

    :cond_a
    :goto_4
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v12, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-direct {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getRealDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    invoke-direct {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isFreeFormMode()Z

    move-result v17

    move-object/from16 v18, v3

    if-nez v17, :cond_e

    if-nez v17, :cond_b

    iget v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v19, v5

    const/16 v5, -0x2710

    if-ne v3, v5, :cond_c

    iget v3, v2, Landroid/graphics/Rect;->right:I

    const/16 v5, 0x2710

    if-ne v3, v5, :cond_c

    iget v3, v2, Landroid/graphics/Rect;->top:I

    const/16 v5, -0x2710

    if-ne v3, v5, :cond_c

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    const/16 v5, 0x2710

    if-eq v3, v5, :cond_f

    goto :goto_5

    :cond_b
    move-object/from16 v19, v5

    :cond_c
    :goto_5
    if-nez v17, :cond_d

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v5

    iget v5, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    if-gt v3, v5, :cond_f

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    iget v2, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v3, v2, :cond_f

    :cond_d
    if-nez v17, :cond_10

    iget v2, v13, Landroid/graphics/Rect;->left:I

    aget v3, v18, p1

    add-int/2addr v2, v3

    aget v3, v20, p1

    if-ne v2, v3, :cond_f

    iget v2, v13, Landroid/graphics/Rect;->top:I

    aget v3, v18, p2

    add-int/2addr v2, v3

    aget v3, v20, p2

    if-eq v2, v3, :cond_10

    goto :goto_6

    :cond_e
    move-object/from16 v19, v5

    :cond_f
    :goto_6
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v13, Landroid/graphics/Rect;->left:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, v13, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, v13, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v13, Landroid/graphics/Rect;->bottom:I

    :cond_10
    :goto_7
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_12

    aget v1, v20, p1

    aget v2, v18, p1

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    move/from16 v1, p2

    iput v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    if-eqz v15, :cond_11

    new-instance v2, Landroid/graphics/Rect;

    aget v3, v18, p1

    aget v5, v18, v1

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v3

    aget v12, v18, v1

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v12, v1

    invoke-direct {v2, v3, v5, v6, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_9

    :cond_11
    new-instance v2, Landroid/graphics/Rect;

    iget v1, v6, Landroid/graphics/Rect;->left:I

    iget v3, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v3, v6, Landroid/graphics/Rect;->top:I

    iget v5, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v5

    iget v5, v6, Landroid/graphics/Rect;->right:I

    iget v12, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v12

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v12, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v12

    invoke-direct {v2, v1, v3, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_9

    :cond_12
    const/4 v1, 0x2

    iput v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    move/from16 v1, p1

    iput v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    if-eqz v15, :cond_13

    new-instance v2, Landroid/graphics/Rect;

    aget v3, v20, v1

    const/4 v5, 0x1

    aget v6, v20, v5

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v3

    aget v15, v20, v5

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v16

    add-int v15, v15, v16

    invoke-direct {v2, v3, v6, v12, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_8

    :cond_13
    const/4 v5, 0x1

    new-instance v2, Landroid/graphics/Rect;

    aget v3, v20, v1

    aget v12, v20, v5

    iget v5, v6, Landroid/graphics/Rect;->right:I

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v3, v12, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_8
    iget v3, v13, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_14

    iget v3, v13, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_14

    iput v1, v13, Landroid/graphics/Rect;->left:I

    iget v3, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v13, Landroid/graphics/Rect;->right:I

    iput v1, v13, Landroid/graphics/Rect;->top:I

    iget v1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v13, Landroid/graphics/Rect;->bottom:I

    :cond_14
    :goto_9
    iget v1, v13, Landroid/graphics/Rect;->left:I

    if-gez v1, :cond_17

    iget v1, v13, Landroid/graphics/Rect;->top:I

    if-gez v1, :cond_17

    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v3, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_17

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v3, v5

    and-int/lit16 v3, v3, 0x404

    if-nez v3, :cond_15

    const/4 v3, 0x1

    goto :goto_a

    :cond_15
    const/4 v3, 0x0

    :goto_a
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x200

    const/4 v5, 0x1

    if-ne v1, v5, :cond_16

    if-eqz v3, :cond_16

    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v3, 0x10505cb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_b

    :cond_16
    const/4 v1, 0x0

    :goto_b
    const/4 v3, 0x0

    iput v3, v13, Landroid/graphics/Rect;->left:I

    iput v1, v13, Landroid/graphics/Rect;->top:I

    iget v1, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v13, Landroid/graphics/Rect;->right:I

    iget v1, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v13, Landroid/graphics/Rect;->bottom:I

    :cond_17
    if-eqz v14, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "computePopupPosition: displayMetrics"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v5, v20, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    aget v3, v20, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v5, v18, v3

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    aget v3, v18, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "computePopupPosition :displayFrame:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    invoke-direct {v0, v4}, Lcom/samsung/android/widget/SemHoverPopupWindow;->measureContentView(Landroid/util/DisplayMetrics;)V

    invoke-direct {v0, v2, v13}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-boolean v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v1, :cond_1c

    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    if-nez v1, :cond_19

    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iget-object v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;Landroid/content/Context;)V

    iput-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    :cond_19
    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iget-object v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    goto :goto_c

    :cond_1a
    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->removeAllViews()V

    iget-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iget-object v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    :cond_1b
    :goto_c
    iget v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1c

    const-string v1, "computePopupPosition: Call resetTimeout()"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;->resetTimeout()V

    :cond_1c
    :goto_d
    return-void
.end method

.method private blacklist computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iput-object v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iput-object v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iget v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    iget v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    and-int/lit16 v6, v5, 0xf0f

    const v7, 0xf0f0

    and-int/2addr v5, v7

    iget-object v7, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-direct {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getRealDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget-object v9, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget-object v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v11, 0x10504cd

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iget-object v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v12, 0x10505cb

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    instance-of v12, v9, Landroid/view/WindowManager$LayoutParams;

    if-eqz v12, :cond_0

    check-cast v9, Landroid/view/WindowManager$LayoutParams;

    iget v12, v9, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v9, v12

    and-int/lit16 v9, v9, 0x404

    if-nez v9, :cond_0

    move v9, v11

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    iget v12, v2, Landroid/graphics/Rect;->right:I

    iget v14, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v14

    iget v14, v2, Landroid/graphics/Rect;->bottom:I

    iget v15, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    iget v15, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    const/4 v13, 0x2

    if-nez v15, :cond_2

    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    if-ne v6, v13, :cond_1

    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    iget v6, v2, Landroid/graphics/Rect;->top:I

    :goto_1
    add-int/2addr v4, v6

    goto/16 :goto_7

    :cond_1
    const/4 v15, 0x1

    if-ne v6, v15, :cond_14

    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iget v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    goto/16 :goto_7

    :cond_2
    const/4 v15, 0x1

    if-eq v6, v15, :cond_d

    const/4 v3, 0x3

    if-eq v6, v3, :cond_c

    const/4 v3, 0x5

    if-eq v6, v3, :cond_b

    const/16 v3, 0x101

    if-eq v6, v3, :cond_a

    const/16 v3, 0x103

    if-eq v6, v3, :cond_9

    const/16 v3, 0x105

    if-eq v6, v3, :cond_8

    const/16 v3, 0x201

    if-eq v6, v3, :cond_5

    const/16 v3, 0x303

    if-eq v6, v3, :cond_4

    const/16 v3, 0x505

    if-eq v6, v3, :cond_3

    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    goto :goto_4

    :cond_3
    iget v3, v1, Landroid/graphics/Rect;->right:I

    goto :goto_4

    :cond_4
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    goto :goto_3

    :cond_5
    invoke-direct {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isPopOver()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    div-int/2addr v4, v13

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    iput v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    goto :goto_2

    :cond_6
    iget v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    iget v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    div-int/2addr v4, v13

    sub-int/2addr v3, v4

    :goto_2
    iget-boolean v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedNotWindowOffset:Z

    if-eqz v4, :cond_7

    invoke-direct {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v4

    if-nez v4, :cond_e

    :cond_7
    iget v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    goto :goto_4

    :cond_9
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    goto :goto_3

    :cond_a
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    div-int/2addr v4, v13

    goto :goto_3

    :cond_b
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    goto :goto_3

    :cond_c
    iget v3, v1, Landroid/graphics/Rect;->left:I

    goto :goto_4

    :cond_d
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    div-int/2addr v4, v13

    :goto_3
    sub-int/2addr v3, v4

    :cond_e
    :goto_4
    iget v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    add-int/2addr v3, v4

    const/16 v4, 0x10

    if-eq v5, v4, :cond_13

    const/16 v4, 0x30

    if-eq v5, v4, :cond_12

    const/16 v4, 0x50

    if-eq v5, v4, :cond_11

    const/16 v4, 0x3030

    if-eq v5, v4, :cond_10

    const/16 v4, 0x5050

    if-eq v5, v4, :cond_f

    iget v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    goto :goto_6

    :cond_f
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    :cond_10
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    goto :goto_5

    :cond_11
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    goto :goto_5

    :cond_12
    iget v4, v1, Landroid/graphics/Rect;->top:I

    goto :goto_6

    :cond_13
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    div-int/2addr v6, v13

    :goto_5
    sub-int/2addr v4, v6

    :goto_6
    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    goto/16 :goto_1

    :cond_14
    :goto_7
    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    if-ne v6, v13, :cond_1c

    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    add-int/2addr v6, v4

    iget v11, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v6, v11, :cond_16

    const/16 v6, 0x5050

    if-ne v5, v6, :cond_15

    iget v6, v1, Landroid/graphics/Rect;->top:I

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-lt v6, v11, :cond_16

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int/2addr v4, v6

    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    goto :goto_8

    :cond_15
    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    :goto_8
    sub-int/2addr v4, v6

    :cond_16
    if-gez v3, :cond_17

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_9

    :cond_17
    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    add-int/2addr v6, v3

    iget v11, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v6, v11, :cond_18

    iget v6, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v11, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int/2addr v6, v11

    sub-int/2addr v6, v10

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    :cond_18
    :goto_9
    sget-boolean v6, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    if-eqz v6, :cond_19

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v10, "computePopupPositionInternal :realDisplayMetrics width:"

    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v10, "SemHoverPopupWindow"

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v11, "computePopupPositionInternal :realDisplayMetrics height:"

    invoke-direct {v6, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    if-ge v4, v9, :cond_33

    const/16 v6, 0x3030

    if-ne v5, v6, :cond_1b

    iget v2, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    iget v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-lt v2, v4, :cond_1a

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    add-int v9, v1, v2

    goto/16 :goto_f

    :cond_1a
    iget v2, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v9

    if-le v2, v4, :cond_34

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_f

    :cond_1b
    iget v1, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_f

    :cond_1c
    const/4 v15, 0x1

    if-ne v6, v15, :cond_33

    iget v6, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    if-gtz v6, :cond_1f

    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int/2addr v12, v6

    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    const/4 v12, 0x3

    if-ne v6, v12, :cond_1d

    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-eqz v6, :cond_1d

    iget v6, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-ge v6, v12, :cond_1d

    add-int/2addr v12, v10

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto/16 :goto_a

    :cond_1d
    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    const/4 v15, 0x1

    if-ne v6, v15, :cond_1e

    if-eqz v11, :cond_1e

    iget v6, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    if-ge v6, v11, :cond_1e

    add-int/2addr v10, v11

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto/16 :goto_a

    :cond_1e
    iget v6, v2, Landroid/graphics/Rect;->left:I

    neg-int v6, v6

    add-int/2addr v6, v10

    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto/16 :goto_a

    :cond_1f
    invoke-direct {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isPopOver()Z

    move-result v6

    if-nez v6, :cond_20

    invoke-direct {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isEmbeddedMode()Z

    move-result v6

    if-nez v6, :cond_20

    iget-object v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v6, v13}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isAnchorViewInAppBounds(II)Z

    move-result v6

    if-eqz v6, :cond_20

    iget v6, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    iget v13, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    add-int/2addr v6, v13

    iget v13, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    if-lt v6, v13, :cond_20

    iget v6, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v12, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v12

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int/2addr v6, v12

    sub-int/2addr v6, v10

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_a

    :cond_20
    iget v6, v2, Landroid/graphics/Rect;->left:I

    if-ltz v6, :cond_25

    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    if-ge v12, v6, :cond_21

    iget v6, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v12

    iget v10, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    sub-int/2addr v6, v10

    if-ltz v6, :cond_25

    sub-int/2addr v12, v10

    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_a

    :cond_21
    add-int v13, v3, v6

    if-le v13, v12, :cond_23

    add-int v13, v6, v10

    if-lt v12, v13, :cond_22

    sub-int/2addr v12, v6

    sub-int/2addr v12, v10

    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_a

    :cond_22
    if-lt v12, v6, :cond_25

    sub-int/2addr v12, v6

    invoke-static {v3, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_a

    :cond_23
    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    const/4 v12, 0x3

    if-ne v6, v12, :cond_24

    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-eqz v6, :cond_24

    iget v6, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    iget v12, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-ge v6, v12, :cond_24

    add-int/2addr v12, v10

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_a

    :cond_24
    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_25
    :goto_a
    iget v6, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v6, v4

    if-ge v6, v11, :cond_2a

    const/16 v6, 0x3030

    if-ne v5, v6, :cond_29

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v4

    sub-int/2addr v14, v11

    iget v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-lt v14, v4, :cond_26

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    sub-int/2addr v14, v1

    iget v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-lt v14, v2, :cond_28

    add-int/2addr v11, v1

    goto :goto_b

    :cond_26
    iget v4, v1, Landroid/graphics/Rect;->top:I

    if-gt v14, v4, :cond_27

    iget v4, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v2

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    iget v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-le v4, v2, :cond_28

    :cond_27
    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    :cond_28
    :goto_b
    move v9, v11

    goto/16 :goto_f

    :cond_29
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto/16 :goto_f

    :cond_2a
    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    add-int v10, v4, v6

    if-le v10, v14, :cond_2f

    const/16 v10, 0x5050

    if-ne v5, v10, :cond_2c

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget v6, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-lt v5, v6, :cond_33

    iget v5, v2, Landroid/graphics/Rect;->top:I

    if-ne v5, v11, :cond_2b

    iget v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    add-int/2addr v5, v4

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_33

    :cond_2b
    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    iget v5, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    add-int/2addr v2, v5

    iget v5, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v5, :cond_33

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    :goto_c
    sub-int v9, v1, v2

    goto/16 :goto_f

    :cond_2c
    iget v1, v2, Landroid/graphics/Rect;->top:I

    if-eq v1, v9, :cond_2e

    iget v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDeviceRotation:I

    if-nez v1, :cond_2d

    iget v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    if-eqz v1, :cond_2d

    iget v1, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int/2addr v1, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_f

    :cond_2d
    iget v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int/2addr v14, v1

    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_f

    :cond_2e
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    sub-int/2addr v1, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_f

    :cond_2f
    const/16 v7, 0x3030

    if-ne v5, v7, :cond_30

    if-ge v4, v11, :cond_31

    add-int/2addr v6, v4

    add-int/2addr v6, v11

    iget v5, v1, Landroid/graphics/Rect;->top:I

    if-le v6, v5, :cond_31

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v5, v6, :cond_31

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_d

    :cond_30
    if-ge v4, v11, :cond_31

    iget v1, v2, Landroid/graphics/Rect;->top:I

    if-ne v1, v11, :cond_31

    goto :goto_d

    :cond_31
    move v11, v4

    :goto_d
    invoke-direct {v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v1

    if-eqz v1, :cond_32

    const/16 v1, 0x28

    goto :goto_e

    :cond_32
    iget v1, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    :goto_e
    if-eqz v1, :cond_28

    iget v1, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v11

    iget v4, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    add-int/2addr v1, v4

    iget v4, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v4, :cond_28

    iget v1, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    goto :goto_c

    :cond_33
    move v9, v4

    :cond_34
    :goto_f
    iput v3, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iput v9, v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    return-void
.end method

.method private blacklist dismissPopup()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iput-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    :cond_2
    return-void
.end method

.method private blacklist getDeviceRotation()I
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0
.end method

.method private blacklist getNavigationBarHeight()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v1, 0x111024a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    const v0, 0x10502f0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist getRealDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "SemHoverPopupWindow"

    if-nez v2, :cond_1

    const-string v2, "getApplicationContext() is null"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsCheckedRealDisplayMetricsInDexMode:Z

    sget-boolean p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getRealDisplayMetrics :sRealDisplayMetricsInDexMode width:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v1, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getRealDisplayMetrics :sRealDisplayMetricsInDexMode height:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v1, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    iget v0, v1, Landroid/view/DisplayInfo;->appWidth:I

    iput v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v1, Landroid/view/DisplayInfo;->appHeight:I

    iput v0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_3
    sget-object p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->sRealDisplayMetricsInDexMode:Landroid/util/DisplayMetrics;

    return-object p0

    :cond_4
    sget-boolean p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getRealDisplayMetrics :displaySize width:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "getRealDisplayMetrics :displaySize height:"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-object v0
.end method

.method private blacklist getStateHashCode()I
    .locals 5

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/4 v4, 0x2

    shl-int/2addr v3, v4

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v1, v3

    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    or-int/2addr v0, v1

    new-array v1, v4, [I

    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p0, 0x0

    aget p0, v1, p0

    shl-int/lit8 p0, p0, 0x14

    aget v1, v1, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0

    :cond_0
    return v0
.end method

.method private blacklist getTooltipText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static final greylist hidden_TYPE_NONE()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static final greylist hidden_TYPE_TOOLTIP()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static final greylist hidden_TYPE_USER_CUSTOM()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method private greylist hidden_setGravity(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setGravity(I)V

    return-void
.end method

.method private greylist hidden_setHoverDetectTime(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setHoverDetectTime(I)V

    return-void
.end method

.method private greylist hidden_setOffset(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setOffset(II)V

    return-void
.end method

.method private greylist hidden_update()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->update()V

    return-void
.end method

.method private blacklist initCoverManager()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string p0, "SemHoverPopupWindow"

    const-string/jumbo v0, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private blacklist initInstance()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mEnabled:Z

    const/16 v1, 0x12c

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    const/16 v1, 0x3231

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mWindowGapX:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getNavigationBarHeight()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNavigationBarHeight:I

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    const v2, 0x1030312

    iput v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    iput v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoordinatesOfAnchorView:I

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->initCoverManager()V

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_PEN_SUPPORTED:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    return-void
.end method

.method private blacklist isAnchorViewInAppBounds(II)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0
.end method

.method private blacklist isEmbeddedMode()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getEmbedActivityMode()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isFreeFormMode()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isHoveringSettingEnabled()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result p0

    return p0

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isSPenHoveringSettingsEnabled()Z

    move-result p0

    return p0
.end method

.method private blacklist isLockScreenMode()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p0

    return p0
.end method

.method private blacklist isMouseHoveringSettingsEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->semIsDesktopMode()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isPopOver()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->semIsPopOver()Z

    move-result p0

    return p0
.end method

.method private blacklist isSPenHoveringSettingsEnabled()Z
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x3

    const-string/jumbo v1, "pen_hovering"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v2
.end method

.method private blacklist isTalkBackEnabledForDeX()Z
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isMouseHoveringSettingsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private blacklist isViewCoverClose()Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mCoverManager:Lcom/samsung/android/cover/ICoverManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "SemHoverPopupWindow"

    const-string v2, "RemoteException in getCoverState: "

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move p0, v0

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method private blacklist measureContentView(Landroid/util/DisplayMetrics;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    const/high16 v1, -0x80000000

    if-nez v0, :cond_1

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    :cond_1
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    if-gez v0, :cond_2

    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_3

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1, v0, p1}, Landroid/view/View;->measure(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    iget-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    iget-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    iget-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {p1, p0}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private blacklist pointInValidHoverArea(FF)Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr p1, v0

    iget p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    sub-int/2addr p1, p0

    int-to-float p0, p1

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist resetTimeout()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    return-void
.end method

.method private blacklist setPopupContent()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->makeDefaultContentView()V

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-interface {v0, v1, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;->onSetContentView(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow;)Z

    :cond_4
    return-void
.end method

.method private blacklist showPopup()V
    .locals 4

    const-string v0, "SemHoverPopupWindow"

    const-string/jumbo v1, "showPopup() is cancelled : "

    :try_start_0
    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHashCodeForViewState:I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getStateHashCode()I

    move-result v3

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHashCodeForViewState:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getStateHashCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->createPopupWindow()Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setPopupContent()V

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->update()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fail show hover popup :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist updateHoverPopup(Landroid/view/View;III)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "updateHoverPopup(), returned due to mPopup == null  "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemHoverPopupWindow"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPosition(Landroid/view/View;III)V

    iget p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    if-nez p2, :cond_1

    iget p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mTouchableContainer:Lcom/samsung/android/widget/SemHoverPopupWindow$TouchablePopupContainer;

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p3, p2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object p3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p2, p3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_3

    :goto_1
    return-void

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget p3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    iget p4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentWidth:I

    iget p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentHeight:I

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/widget/PopupWindow;->update(IIII)V

    return-void

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p4

    if-eq p2, p4, :cond_5

    iget-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget p4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    return-void

    :cond_5
    iget-object p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget p4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    invoke-virtual {p2, p1, p3, p4, p0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method


# virtual methods
.method protected blacklist createPopupWindow()Landroid/widget/PopupWindow;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_2

    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setIsLaidOutInScreen(Z)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method public whitelist dismiss()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismissPopup()V

    return-void
.end method

.method public whitelist getContentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    return-object p0
.end method

.method public blacklist getIsDismissTouchableHPWOnActionUp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return p0
.end method

.method public blacklist getParentView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    return-object p0
.end method

.method public whitelist isHoverPopupPossible()Z
    .locals 3

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method public whitelist isShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected blacklist isUspFeature()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsUspFeature:Z

    return p0
.end method

.method protected blacklist makeDefaultContentView()V
    .locals 0

    return-void
.end method

.method public blacklist onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const/4 v5, 0x7

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v0, v5, :cond_5

    const/16 p1, 0x9

    if-eq v0, p1, :cond_2

    const/16 p1, 0xa

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {p1, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_4

    return v9

    :cond_2
    cmp-long p1, v3, v6

    if-lez p1, :cond_3

    return v9

    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz p1, :cond_4

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    :cond_4
    :goto_0
    return v8

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setHoveringPoint(II)V

    iget-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz p1, :cond_8

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/widget/SemHoverPopupWindow;->pointInValidHoverArea(FF)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    if-nez v0, :cond_7

    cmp-long p1, v3, v6

    if-lez p1, :cond_6

    iput-boolean v8, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    return v9

    :cond_6
    iput-boolean v9, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->show()V

    return v9

    :cond_7
    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    if-nez p1, :cond_8

    iput-boolean v8, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->dismiss()V

    return v9

    :cond_8
    iget p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->resetTimeout()V

    :cond_9
    return v9
.end method

.method protected blacklist postDismiss(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/widget/SemHoverPopupWindow$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    int-to-long p0, p1

    invoke-virtual {v0, v1, p0, p1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public blacklist setAnimationStyle(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnimationStyle:I

    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :cond_0
    return-void
.end method

.method public whitelist setContent(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public whitelist setContent(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentView:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    return-void
.end method

.method public whitelist setContent(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContentText:Ljava/lang/CharSequence;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    return-void
.end method

.method public blacklist setDismissTouchableHPWOnActionUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z

    return-void
.end method

.method public whitelist setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    return-void
.end method

.method public whitelist setHoverDetectTime(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    return-void
.end method

.method public blacklist setHoverPaddingArea(IIII)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingLeft:I

    iput p3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingRight:I

    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingTop:I

    iput p4, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverPaddingBottom:I

    if-nez p1, :cond_1

    if-nez p3, :cond_1

    if-nez p2, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    return-void
.end method

.method public blacklist setHoverPopupPreShowListener(Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    return-void
.end method

.method public blacklist setHoverPopupToolType(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    return-void
.end method

.method public greylist setHoveringPoint(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointX:I

    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoveringPointY:I

    return-void
.end method

.method protected blacklist setInstanceByType(I)V
    .locals 0

    return-void
.end method

.method public blacklist setNeedNotWindowOffset(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedNotWindowOffset:Z

    return-void
.end method

.method public whitelist setOffset(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iput p2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    return-void
.end method

.method public whitelist setOnSetContentViewListener(Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mListener:Lcom/samsung/android/widget/SemHoverPopupWindow$OnSetContentViewListener;

    return-void
.end method

.method public whitelist setTouchable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsPopupTouchable:Z

    iget-object p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    :cond_0
    return-void
.end method

.method public whitelist show()V
    .locals 5

    sget-boolean v0, Lcom/samsung/android/widget/SemHoverPopupWindow;->localLOGV:Z

    const-string v1, "SemHoverPopupWindow"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "show :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "Toolkit porting remove this log after all feature included"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->semGetHoverPopupType()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupType:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->setInstanceByType(I)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;->onHoverPopupPreShow()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mEnabled:Z

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsHoverPaddingEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsTryingShowPopup:Z

    if-eqz v0, :cond_7

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isHoverPopupPossible()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isHoveringSettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isViewCoverClose()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isLockScreenMode()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->isTalkBackEnabledForDeX()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/widget/SemHoverPopupWindow;->getStateHashCode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHashCodeForViewState:I

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSkipPenPointEffect:Z

    if-nez v0, :cond_6

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->showPenPointEffect(Z)V

    :cond_6
    new-instance v0, Lcom/samsung/android/widget/SemHoverPopupWindow$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemHoverPopupWindow$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/widget/SemHoverPopupWindow;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mShowPopupRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mHoverDetectTimeMS:I

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsShowMessageSent:Z

    :cond_7
    :goto_1
    return-void
.end method

.method protected blacklist showPenPointEffect(Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mToolType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mContext:Landroid/content/Context;

    const/16 v0, 0x4e2a

    invoke-static {p1, v0}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->semSetPointerIcon(ILandroid/view/PointerIcon;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->semSetPointerIcon(ILandroid/view/PointerIcon;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mIsSPenPointChanged:Z

    :cond_1
    return-void
.end method

.method public whitelist update()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mNeedToMeasureContentView:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/widget/SemHoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosX:I

    iget p0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupPosY:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, p0, v2, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mParentView:Landroid/view/View;

    :goto_0
    iget v1, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupGravity:I

    iget v2, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetX:I

    iget v3, p0, Lcom/samsung/android/widget/SemHoverPopupWindow;->mPopupOffsetY:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/widget/SemHoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    return-void
.end method
