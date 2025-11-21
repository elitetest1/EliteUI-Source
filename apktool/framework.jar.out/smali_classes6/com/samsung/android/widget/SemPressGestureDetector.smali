.class public Lcom/samsung/android/widget/SemPressGestureDetector;
.super Ljava/lang/Object;
.source "SemPressGestureDetector.java"

# interfaces
.implements Lcom/samsung/android/widget/ISemTouchApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemPressGestureDetector$Point;
    }
.end annotation


# static fields
.field private static final blacklist BIXBY_TOUCH_AUTHORITY:Ljava/lang/String; = "content://com.samsung.android.bixbytouch"

.field private static final blacklist BIXBY_TOUCH_DETECTOR_VERSION:I = 0x3

.field private static final blacklist BIXBY_TOUCH_FOUND_TEXT_MAX_LENGTH:I = 0x1f4

.field private static final blacklist BIXBY_TOUCH_URI:Landroid/net/Uri;

.field private static final blacklist CALL_METHOD:Ljava/lang/String; = "send_bixby_touch_event"

.field private static final blacklist CALL_REFLECT_METHOD:Ljava/lang/String; = "bixby_touch_reflect_widget"

.field private static final blacklist DEFAULT_CHECK_TOUCH_DOWN_DELAY_TIME:I = 0x64

.field private static final blacklist DEFAULT_FINGER_DOWN_THRESHOLD:I = 0x64

.field private static final blacklist DEFAULT_LONG_LONG_PRESS_TIME:I = 0x5dc

.field private static final blacklist DEFAULT_LONG_PRESS_TIME:I = 0x1f4

.field private static final blacklist DOUBLE_FINGER_TOUCH_MODE:I = 0x2

.field private static final blacklist FLAG_WEB_SUMMARY_HTML_FILE:Ljava/lang/String; = "/web_summary_html_data"

.field private static final blacklist KEY_BIXBYTOUCH_FINGER_DOWN_THRESHOLD:Ljava/lang/String; = "bixbytouch_finger_down_threshold"

.field private static final blacklist KEY_BIXBYTOUCH_FINGER_TOUCH_TRIGGER:Ljava/lang/String; = "bixbytouch_finger_touch_mode"

.field private static final blacklist KEY_BIXBYTOUCH_LONG_PRESS_TIME:Ljava/lang/String; = "bixbytouch_long_press_timeout"

.field private static final blacklist KEY_BIXBYTOUCH_VERSION:Ljava/lang/String; = "key_bixbytouch_version"

.field private static final blacklist KEY_CHECK_FP_DELAY_TIME:Ljava/lang/String; = "check_touch_down_delay_time"

.field private static final blacklist KEY_LONG_LONG_PRESS_TIME:Ljava/lang/String; = "long_long_press_timeout"

.field private static final blacklist LONG_CLICKED_BIXBY:I = 0x1

.field private static final blacklist LONG_LONG_CANCEL_BIXBY:I = 0x3

.field private static final blacklist LONG_LONG_CLICKED_BIXBY:I = 0x2

.field private static final blacklist OBTAIN_HTML_DATA_FLAG:I = 0x5

.field private static final blacklist OBTAIN_VIEW_LOCATION_FLAG:I = 0x6

.field private static final blacklist PERMISSION_WRITE_SECURE_SETTINGS:Ljava/lang/String; = "android.permission.WRITE_SECURE_SETTINGS"

.field private static final blacklist REFLECT_FIELD_LEVEL_SELF:I = 0x0

.field private static final blacklist REFLECT_FIELD_LEVEL_SUPER:I = 0x1

.field private static final blacklist REFLECT_FIELD_LEVEL_SUPER_SUPER:I = 0x2

.field private static final blacklist REFLECT_MAX_COUNT:I = 0x3

.field private static final blacklist SINGLE_FINGER_TOUCH_MODE:I = 0x1

.field private static final blacklist SUPPORT_DOUBLE_FINGER_MODE_MIN_VERSION:J = 0x11e1a300L

.field private static final blacklist TAEGET_PKG_NAME:Ljava/lang/String; = "com.samsung.android.bixbytouch"

.field private static final blacklist TAG:Ljava/lang/String; = "SemPressGestureDetector"

.field private static final blacklist TOUCH_MOVE_MAX_MM:F = 3.0f

.field private static blacklist mRegisteredActivityMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private static blacklist sBixbyTouchEnable:Z

.field private static blacklist sCheckTouchDownDelayTime:I

.field private static blacklist sCurrentTouchMode:I

.field private static blacklist sFingerDownThreshold:I

.field private static blacklist sHasCallReflectCount:I

.field private static blacklist sHasFingerPrintFeature:Z

.field private static blacklist sLongLongPressTime:I

.field private static blacklist sLongPressTime:I

.field private static blacklist sPreviousPackage:Ljava/lang/String;

.field private static blacklist sRequestCode:J

.field private static blacklist sTouchMoveMaxPixel:I

.field private static blacklist sVersionCode:J

.field private static blacklist sWidgetIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sWidgetNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mActivityName:Ljava/lang/String;

.field private blacklist mAppBounds:Landroid/graphics/Rect;

.field private blacklist mBixbyTouchFoundText:Ljava/lang/String;

.field private blacklist mBixbyTouchVersion:J

.field private blacklist mBounds:Landroid/graphics/Rect;

.field private blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mCallerPackage:Ljava/lang/String;

.field private blacklist mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDecorViewBounds:Landroid/graphics/Rect;

.field private blacklist mDetachedFromWindow:Z

.field private blacklist mDisplayCutoutInsets:Landroid/graphics/Insets;

.field private blacklist mFindViewRestricted:Z

.field private blacklist mHasDoneLongTouch:Z

.field private blacklist mInitFailed:Z

.field private blacklist mLongLongTouchRunnable:Ljava/lang/Runnable;

.field private blacklist mLongTouchRunnable:Ljava/lang/Runnable;

.field private blacklist mMaxBounds:Landroid/graphics/Rect;

.field private blacklist mNavigationBarsInsets:Landroid/graphics/Insets;

.field private blacklist mProcessName:Ljava/lang/String;

.field private blacklist mRegisterBroadcastActivityName:Ljava/lang/String;

.field private blacklist mRegisterBroadcastTime:J

.field private blacklist mResponeLongLongTouch:Z

.field private blacklist mResponeLongTouch:Z

.field private blacklist mSemOneTouchApi:Lcom/samsung/android/widget/SemOneTouchApi;

.field private blacklist mTaskId:I

.field private blacklist mTouchDownRestricted:Z

.field private blacklist mTouchedPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/widget/SemPressGestureDetector$Point;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTouchedRawPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/widget/SemPressGestureDetector$Point;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTouchedTime:J

.field private blacklist mTouchedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mView:Landroid/view/View;

.field private blacklist mWindowConfig:Ljava/lang/String;

.field private blacklist mWindowType:Ljava/lang/Integer;

.field private blacklist mWindowingMode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmActivityName(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mActivityName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallerPackage(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCallerPackage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/samsung/android/widget/SemPressGestureDetector;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLongLongTouchRunnable(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongLongTouchRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProcessName(Lcom/samsung/android/widget/SemPressGestureDetector;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mProcessName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRegisterBroadcastTime(Lcom/samsung/android/widget/SemPressGestureDetector;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mRegisterBroadcastTime:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResponeLongTouch(Lcom/samsung/android/widget/SemPressGestureDetector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTouchDownRestricted(Lcom/samsung/android/widget/SemPressGestureDetector;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchDownRestricted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmView(Lcom/samsung/android/widget/SemPressGestureDetector;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasDoneLongTouch(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResponeLongLongTouch(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongLongTouch:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResponeLongTouch(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTouchDownRestricted(Lcom/samsung/android/widget/SemPressGestureDetector;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchDownRestricted:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmTouchedViews(Lcom/samsung/android/widget/SemPressGestureDetector;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcheckBlockApp(Lcom/samsung/android/widget/SemPressGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->checkBlockApp()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minitSetting(Lcom/samsung/android/widget/SemPressGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->initSetting()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$minitWebSummary(Lcom/samsung/android/widget/SemPressGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->initWebSummary()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misFingerPrintInDisplay(Lcom/samsung/android/widget/SemPressGestureDetector;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->isFingerPrintInDisplay()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mparseInfoFromView(Lcom/samsung/android/widget/SemPressGestureDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->parseInfoFromView()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msaveHtmlDataToFile(Lcom/samsung/android/widget/SemPressGestureDetector;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->saveHtmlDataToFile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendBixbyLongClickedEvent(Lcom/samsung/android/widget/SemPressGestureDetector;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendBixbyLongClickedEvent(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendHtmlData(Lcom/samsung/android/widget/SemPressGestureDetector;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendHtmlData(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendParseResult(Lcom/samsung/android/widget/SemPressGestureDetector;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendParseResult(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartObtainViewLocation(Lcom/samsung/android/widget/SemPressGestureDetector;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->startObtainViewLocation(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mstartObtainWebViewData(Lcom/samsung/android/widget/SemPressGestureDetector;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->startObtainWebViewData(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetBIXBY_TOUCH_URI()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->BIXBY_TOUCH_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsBixbyTouchEnable()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sBixbyTouchEnable:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsLongLongPressTime()I
    .locals 1

    sget v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongLongPressTime:I

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsWidgetIdList()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetIdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsWidgetNameList()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetNameList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputsRequestCode(J)V
    .locals 0

    sput-wide p0, Lcom/samsung/android/widget/SemPressGestureDetector;->sRequestCode:J

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "content://com.samsung.android.bixbytouch"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->BIXBY_TOUCH_URI:Landroid/net/Uri;

    const/16 v0, 0x1f4

    sput v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongPressTime:I

    const/16 v0, 0x5dc

    sput v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongLongPressTime:I

    const/16 v0, 0x64

    sput v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sCheckTouchDownDelayTime:I

    sput v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sBixbyTouchEnable:Z

    sput-boolean v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sHasFingerPrintFeature:Z

    sput v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sHasCallReflectCount:I

    const/16 v0, 0x32

    sput v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sTouchMoveMaxPixel:I

    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sVersionCode:J

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sPreviousPackage:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetIdList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetNameList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->mRegisteredActivityMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sRequestCode:J

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mRegisterBroadcastTime:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mDetachedFromWindow:Z

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchDownRestricted:Z

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mInitFailed:Z

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    iput-boolean v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongLongTouch:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCallerPackage:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mProcessName:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mActivityName:Ljava/lang/String;

    const/4 v3, -0x1

    iput v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTaskId:I

    iput v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowingMode:I

    iput-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowConfig:Ljava/lang/String;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    iput-wide v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedTime:J

    iput-wide v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBixbyTouchVersion:J

    iput-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowType:Ljava/lang/Integer;

    iput-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mSemOneTouchApi:Lcom/samsung/android/widget/SemOneTouchApi;

    new-instance v0, Lcom/samsung/android/widget/SemPressGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemPressGestureDetector$1;-><init>(Lcom/samsung/android/widget/SemPressGestureDetector;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongLongTouchRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/widget/SemPressGestureDetector$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemPressGestureDetector$2;-><init>(Lcom/samsung/android/widget/SemPressGestureDetector;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/widget/SemPressGestureDetector$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemPressGestureDetector$3;-><init>(Lcom/samsung/android/widget/SemPressGestureDetector;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/widget/SemPressGestureDetector;->init(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {}, Lcom/samsung/android/widget/SemOneTouchApi;->isOneTouchSupported()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/widget/SemOneTouchApi;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mSemOneTouchApi:Lcom/samsung/android/widget/SemOneTouchApi;

    :cond_0
    return-void
.end method

.method private blacklist addTouchedPoint(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result p1

    new-instance v0, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/widget/SemPressGestureDetector$Point;-><init>(FF)V

    new-instance v1, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    invoke-direct {v1, v3, p1}, Lcom/samsung/android/widget/SemPressGestureDetector$Point;-><init>(FF)V

    iget-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private blacklist checkBlockApp()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->isLauncherApp()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.samsung.android.bixbytouch"

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->matchPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mFindViewRestricted:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private blacklist checkTouchedPointIsMoved(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v3, v3, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->x:F

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v4, v4, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->y:F

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v5, Lcom/samsung/android/widget/SemPressGestureDetector;->sTouchMoveMaxPixel:I

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    const/4 v5, 0x1

    if-gtz v3, :cond_1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Lcom/samsung/android/widget/SemPressGestureDetector;->sTouchMoveMaxPixel:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    move v3, v0

    goto :goto_2

    :cond_1
    :goto_1
    move v3, v5

    :goto_2
    if-nez v2, :cond_3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    move v2, v0

    goto :goto_4

    :cond_3
    :goto_3
    move v2, v5

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method private blacklist containString([Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    array-length p0, p1

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_2

    aget-object v2, p1, v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private blacklist dispatchTouchEventDoubleFingers(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedTime:J

    sub-long/2addr v0, v3

    sget v3, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    int-to-long v3, v3

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    return v2

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->addTouchedPoint(Landroid/view/MotionEvent;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongPressTime:I

    sget v3, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sCheckTouchDownDelayTime:I

    sget v3, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    if-nez v0, :cond_2

    return v2

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->doLongPressDoubleFingers(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->doLongLongPressDoubleFingers(Landroid/view/MotionEvent;)V

    :goto_1
    iget-boolean p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongLongTouch:Z

    return p0
.end method

.method private blacklist dispatchTouchEventOneFinger(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongPressTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    sget v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sCheckTouchDownDelayTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mResponeLongTouch="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mResponeLongLongTouch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongLongTouch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemPressGestureDetector"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    if-nez v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->doLongPressOneFinger(Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->doLongLongPressOneFinger(Landroid/view/MotionEvent;)V

    :goto_1
    iget-boolean p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongLongTouch:Z

    return p0
.end method

.method private blacklist doLongLongPressDoubleFingers(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x5

    if-eq v0, p1, :cond_2

    const/4 p1, 0x6

    if-eq v0, p1, :cond_2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->checkTouchedPointIsMoved(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendBixbyLongLongCancelEvent()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendBixbyLongLongCancelEvent()V

    return-void
.end method

.method private blacklist doLongLongPressOneFinger(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x5

    if-eq v0, p1, :cond_2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->checkTouchedPointIsMoved(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendBixbyLongLongCancelEvent()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendBixbyLongLongCancelEvent()V

    return-void
.end method

.method private blacklist doLongPressDoubleFingers(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-eq p1, v1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->checkTouchedPointIsMoved(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist doLongPressOneFinger(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x5

    if-eq v0, p1, :cond_2

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->checkTouchedPointIsMoved(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist evaluateHtmlData(Landroid/webkit/WebView;ZLandroid/webkit/ValueCallback;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemPressGestureDetector;->getRule(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method private blacklist findById(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method private blacklist findTargetView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemPressGestureDetector;->findById(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    instance-of p2, p1, Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x1

    xor-int/lit8 v5, p1, 0x1

    const/4 p1, 0x0

    if-eqz p4, :cond_1

    array-length v0, p4

    if-lez v0, :cond_1

    move v6, p2

    goto :goto_0

    :cond_1
    move v6, p1

    :goto_0
    if-eqz p5, :cond_2

    array-length v0, p5

    if-lez v0, :cond_2

    move v7, p2

    goto :goto_1

    :cond_2
    move v7, p1

    :goto_1
    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/widget/SemPressGestureDetector;->findView(Landroid/view/ViewGroup;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZZLjava/util/Map;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist findView(Landroid/view/ViewGroup;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZZLjava/util/Map;)Landroid/view/View;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/widget/SemPressGestureDetector;->isTargetText(Landroid/view/View;[Ljava/lang/String;[Ljava/lang/String;ZZ)Z

    move-result v8

    if-nez v8, :cond_2

    move-object/from16 v9, p0

    move-object/from16 v11, p2

    move-object/from16 v2, p8

    if-eqz p5, :cond_0

    invoke-direct {v9, v3, v11, v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->isSameInstanceof(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v10, v3

    check-cast v10, Landroid/view/ViewGroup;

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    move/from16 v16, p7

    move-object/from16 v17, v2

    invoke-direct/range {v9 .. v17}, Lcom/samsung/android/widget/SemPressGestureDetector;->findView(Landroid/view/ViewGroup;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ZZZLjava/util/Map;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v3

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private blacklist findWebView(Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;
    .locals 5

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    const/4 p3, 0x1

    sub-int/2addr v0, p3

    :goto_0
    if-ltz v0, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/webkit/WebView;

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2, p3}, Lcom/samsung/android/widget/SemPressGestureDetector;->findWebView(Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    return-object v1

    :cond_4
    const/4 p3, 0x0

    move v2, p3

    :goto_2
    if-ge v2, v0, :cond_8

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/webkit/WebView;

    if-nez v4, :cond_7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_6

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, p2, p3}, Lcom/samsung/android/widget/SemPressGestureDetector;->findWebView(Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_6

    return-object v1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return-object v3

    :cond_8
    return-object v1
.end method

.method private blacklist getActivityFromContextWrapper(Landroid/content/Context;)Landroid/app/Activity;
    .locals 1

    instance-of v0, p1, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/app/Activity;

    return-object p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->getActivityFromContextWrapper(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private blacklist getContextFromDecorContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "mContext"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist getRule(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "javascript:document.body.innerHTML"

    return-object p0

    :cond_0
    const-string p0, "javascript:document.documentElement.innerHTML"

    return-object p0
.end method

.method private static blacklist getTextFromTextView(Landroid/widget/TextView;Landroid/graphics/PointF;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    instance-of v0, p2, Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    check-cast p2, Ljava/lang/CharSequence;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result p0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ne p0, p1, :cond_0

    add-int/lit8 p0, p1, -0x1

    :cond_0
    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v1, 0xfa

    if-ge p0, v1, :cond_2

    const/4 p0, 0x0

    invoke-interface {p2, p0, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit16 v0, p0, -0xfa

    add-int/2addr p0, v1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-interface {p2, v0, p0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method private static blacklist getTouchedAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J
    .locals 4

    sget-wide v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sVersionCode:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    if-eqz p1, :cond_1

    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sPreviousPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sVersionCode:J

    sput-object p1, Lcom/samsung/android/widget/SemPressGestureDetector;->sPreviousPackage:Ljava/lang/String;

    :cond_1
    sget-wide p0, Lcom/samsung/android/widget/SemPressGestureDetector;->sVersionCode:J

    return-wide p0
.end method

.method public static blacklist getViewContentInternal(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/graphics/PointF;Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p2, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p2, p3, p4}, Lcom/samsung/android/widget/SemPressGestureDetector;->getTextFromTextView(Landroid/widget/TextView;Landroid/graphics/PointF;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :cond_0
    :try_start_1
    sget-object p3, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetNameList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p3

    const/4 p4, -0x1

    if-eq p3, p4, :cond_1

    sget-object p3, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetIdList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p4, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    :try_start_2
    sget p3, Lcom/samsung/android/widget/SemPressGestureDetector;->sHasCallReflectCount:I

    const/4 p4, 0x3

    if-lt p3, p4, :cond_2

    return-object v0

    :cond_2
    const/4 p4, 0x1

    add-int/2addr p3, p4

    sput p3, Lcom/samsung/android/widget/SemPressGestureDetector;->sHasCallReflectCount:I

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->getTouchedAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v4, "request_code"

    sget-wide v5, Lcom/samsung/android/widget/SemPressGestureDetector;->sRequestCode:J

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v4, "caller_package"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "caller_class"

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "caller_version_code"

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/widget/SemPressGestureDetector;->BIXBY_TOUCH_URI:Landroid/net/Uri;

    const-string v2, "bixby_touch_reflect_widget"

    invoke-virtual {p0, p1, v2, v0, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_8

    const-string/jumbo p1, "reflect_field_name"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "reflect_method_name"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reflect_field_level"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    if-eqz p1, :cond_7

    if-eqz p0, :cond_5

    if-eq p0, p4, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_3

    move-object p0, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    goto :goto_0

    :cond_5
    invoke-virtual {p3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_6

    invoke-virtual {p0, p4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "SemPressGestureDetector"

    const-string p1, "getText: field not found"

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Class;

    invoke-virtual {p3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_1
    return-object v0
.end method

.method private blacklist initOnChild()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/widget/SemPressGestureDetector$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/widget/SemPressGestureDetector$5;-><init>(Lcom/samsung/android/widget/SemPressGestureDetector;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private blacklist initSetting()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.bixbytouch"

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bixbytouch_finger_touch_mode"

    invoke-static {}, Lcom/samsung/android/widget/SemOneTouchApi;->isOneTouchSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bixbytouch_long_press_timeout"

    const/16 v4, 0x1f4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongPressTime:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "long_long_press_timeout"

    const/16 v4, 0x5dc

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongLongPressTime:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "check_touch_down_delay_time"

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sCheckTouchDownDelayTime:I

    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bixbytouch_finger_down_threshold"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    iput-wide v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBixbyTouchVersion:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private blacklist initWebSummary()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mFindViewRestricted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/policy/DecorView;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->registerWebSummaryBroadcast()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemPressGestureDetector"

    invoke-static {v1, v0, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private blacklist invokeHtmlData(Landroid/view/View;ZLjava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "evaluateJavascript"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v1

    const-class v4, Landroid/webkit/ValueCallback;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemPressGestureDetector;->getRule(Z)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2, p4}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, ""

    invoke-direct {p0, p2, v1, p3}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendParseResult(Ljava/lang/String;ZLjava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "invoke : "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "SemPressGestureDetector"

    invoke-static {p2, p0, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private blacklist invokeMethodGetView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p0, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/view/View;

    if-eqz p1, :cond_0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "invoke 2: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SemPressGestureDetector"

    invoke-static {p2, p1, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v1
.end method

.method private blacklist isFingerPrintInDisplay()Z
    .locals 4

    sget-boolean v0, Lcom/samsung/android/widget/SemPressGestureDetector;->sHasFingerPrintFeature:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    const-string v0, "fingerprint"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v0, 0x1

    if-eqz p0, :cond_2

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetIconBottomMargin()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    move p0, v1

    move v2, p0

    :goto_1
    if-eqz v2, :cond_3

    if-lez p0, :cond_3

    return v0

    :catch_0
    :cond_3
    return v1
.end method

.method private blacklist isLauncherApp()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCallerPackage:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCallerPackage:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist isSameInstanceof(Landroid/view/View;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private blacklist isTargetText(Landroid/view/View;[Ljava/lang/String;[Ljava/lang/String;ZZ)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->containString([Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    if-eqz p5, :cond_2

    instance-of p2, p1, Landroid/widget/TextView;

    if-eqz p2, :cond_2

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->containString([Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private blacklist matchPackage(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCallerPackage:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private blacklist mm2px(F)F
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    const v0, 0x41cb3333    # 25.4f

    div-float/2addr p1, v0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    return p1
.end method

.method private blacklist parseActivity()Landroid/app/Activity;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    instance-of v1, v0, Lcom/android/internal/policy/DecorContext;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->getContextFromDecorContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->getActivityFromContextWrapper(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method private blacklist parseInfoFromView()V
    .locals 9

    const-string/jumbo v0, "parseInfoFromView: mDecorViewBounds = "

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->parseActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/app/Activity;->getTaskId()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTaskId:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->getCurrentConfigFromActivity(Landroid/app/Activity;)Landroid/content/res/Configuration;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowConfig:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowingMode:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowConfig:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowingMode:I

    :goto_0
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mMaxBounds:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mAppBounds:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBounds:Landroid/graphics/Rect;

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    aget v5, v2, v5

    const/4 v6, 0x1

    aget v7, v2, v6

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v5

    aget v2, v2, v6

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v4, v5, v7, v8, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mDecorViewBounds:Landroid/graphics/Rect;

    const-string v2, "SemPressGestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mDecorViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mDisplayCutoutInsets:Landroid/graphics/Insets;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mNavigationBarsInsets:Landroid/graphics/Insets;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowConfig:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mAppBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowingMode:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist parseView(Landroid/view/View;Landroid/os/Bundle;Ljava/util/Map;)[I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)[I"
        }
    .end annotation

    const-string v0, "find_parent"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->findParentView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    const-string/jumbo p1, "target_child"

    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "child_id"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p1, "child_class_name"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string p1, "child_content_desc"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string p1, "child_content_text"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/widget/SemPressGestureDetector;->findTargetView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    const/4 p0, 0x2

    new-array p1, p0, [I

    invoke-virtual {v3, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget p2, p1, v1

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result p3

    div-int/2addr p3, p0

    add-int/2addr p2, p3

    aput p2, p1, v1

    const/4 p2, 0x1

    aget p3, p1, p2

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/2addr v0, p0

    add-int/2addr p3, v0

    aput p3, p1, p2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "findView : "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "SemPressGestureDetector"

    invoke-static {p2, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist parseWebView(Landroid/content/Intent;)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    if-eqz v0, :cond_6

    const-string/jumbo v0, "request_code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "webview_class_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "top_down_find_view"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v4, "request_body"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-class v1, Landroid/webkit/WebView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_1

    check-cast v5, Landroid/view/ViewGroup;

    invoke-direct {p0, v5, v1, v2}, Lcom/samsung/android/widget/SemPressGestureDetector;->findWebView(Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, ""

    if-nez v1, :cond_2

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendHtmlData(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v5, "invoke_method"

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "method_name"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->invokeMethodGetView(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendHtmlData(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance p1, Lcom/samsung/android/widget/SemPressGestureDetector$7;

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/widget/SemPressGestureDetector$7;-><init>(Lcom/samsung/android/widget/SemPressGestureDetector;Ljava/lang/String;)V

    instance-of v2, v1, Landroid/webkit/WebView;

    if-eqz v2, :cond_5

    check-cast v1, Landroid/webkit/WebView;

    invoke-direct {p0, v1, v4, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->evaluateHtmlData(Landroid/webkit/WebView;ZLandroid/webkit/ValueCallback;)V

    return-void

    :cond_5
    invoke-direct {p0, v1, v4, v0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->invokeHtmlData(Landroid/view/View;ZLjava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_6
    return-void
.end method

.method private blacklist registerWebSummaryBroadcast()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_8

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->parseActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "web_summary_activity"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "view_location_activity"

    invoke-static {v2, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v8, 0xa

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    if-nez v4, :cond_3

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v7

    goto :goto_0

    :cond_3
    move v1, v8

    :goto_0
    if-nez v5, :cond_4

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v8, v7

    :cond_4
    if-nez v1, :cond_5

    if-nez v8, :cond_5

    goto :goto_1

    :cond_5
    new-instance v2, Lcom/samsung/android/widget/SemPressGestureDetector$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/widget/SemPressGestureDetector$6;-><init>(Lcom/samsung/android/widget/SemPressGestureDetector;)V

    iput-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->addRegisterBroadcastActivity(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "<"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SemPressGestureDetector"

    invoke-static {v4, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".START_PARSE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_6
    if-eqz v8, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".START_FIND"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v4, "android.permission.MANAGE_ACTIVITY_TASKS"

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_8
    :goto_1
    return-void
.end method

.method private blacklist resetFlags(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongLongTouch:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchDownRestricted:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedTime:J

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->addTouchedPoint(Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBixbyTouchFoundText:Ljava/lang/String;

    return-void
.end method

.method private blacklist saveHtmlDataToFile(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "SemPressGestureDetector"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "content://com.samsung.android.bixbytouch/web_summary_html_data"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/high16 v4, 0x30000000

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v1}, Landroid/content/ContentResolver;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_2

    :try_start_1
    const-string/jumbo p1, "open fail"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz p0, :cond_1

    :try_start_2
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    return v2

    :cond_2
    :try_start_3
    new-instance v1, Ljava/io/FileWriter;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    new-instance v3, Ljava/io/BufferedWriter;

    invoke-direct {v3, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v3, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz p0, :cond_3

    :try_start_8
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_a
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v1

    :try_start_c
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception p1

    if-eqz p0, :cond_4

    :try_start_d
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p0

    :try_start_e
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "save fail: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method private blacklist sendBixbyLongClickedEvent(I)Z
    .locals 9

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mDetachedFromWindow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mActivityName:Ljava/lang/String;

    if-eqz v0, :cond_10

    const-string v2, "com.samsung.android.bixbytouch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "request_code"

    sget-wide v3, Lcom/samsung/android/widget/SemPressGestureDetector;->sRequestCode:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "bixby_touch_flag"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "bixby_touch_detector_version"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_d

    const-string v3, "caller_pkg"

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCallerPackage:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "caller_activity"

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "caller_process"

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "widget_name_list"

    sget-object v4, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetNameList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v3, "widget_id_list"

    sget-object v4, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetIdList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "caller_task_id"

    iget v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTaskId:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "window_mode"

    iget v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowingMode:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "window_config"

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowConfig:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mAppBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mMaxBounds:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mDecorViewBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_2

    const-string/jumbo v7, "window_left"

    iget v8, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "window_top"

    iget v8, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "window_right"

    iget v8, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v7, "window_bottom"

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v7, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    if-eqz v4, :cond_3

    const-string/jumbo v3, "window_bounds_left"

    iget v7, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "window_bounds_top"

    iget v7, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "window_bounds_right"

    iget v7, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "window_bounds_bottom"

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    if-eqz v5, :cond_4

    const-string/jumbo v3, "window_max_bounds_left"

    iget v4, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "window_max_bounds_top"

    iget v4, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "window_max_bounds_right"

    iget v4, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "window_max_bounds_bottom"

    iget v4, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_4
    if-eqz v6, :cond_5

    const-string/jumbo v3, "window_decor_view_bounds_left"

    iget v4, v6, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "window_decor_view_bounds_top"

    iget v4, v6, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "window_decor_view_bounds_right"

    iget v4, v6, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "window_decor_view_bounds_bottom"

    iget v4, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mDisplayCutoutInsets:Landroid/graphics/Insets;

    if-eqz v3, :cond_6

    const-string v4, "display_cutout_insets_left"

    iget v3, v3, Landroid/graphics/Insets;->left:I

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "display_cutout_insets_top"

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mDisplayCutoutInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->top:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "display_cutout_insets_right"

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mDisplayCutoutInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->right:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "display_cutout_insets_bottom"

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mDisplayCutoutInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mNavigationBarsInsets:Landroid/graphics/Insets;

    if-eqz v3, :cond_7

    const-string/jumbo v4, "navigation_bars_insets_left"

    iget v3, v3, Landroid/graphics/Insets;->left:I

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "navigation_bars_insets_top"

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mNavigationBarsInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->top:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "navigation_bars_insets_right"

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mNavigationBarsInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->right:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "navigation_bars_insets_bottom"

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mNavigationBarsInsets:Landroid/graphics/Insets;

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_7
    sget v3, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v4, "touch_raw_start_y1"

    const-string/jumbo v5, "touch_raw_start_x1"

    const/4 v6, 0x2

    if-ne v3, v6, :cond_8

    :try_start_1
    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v6, :cond_9

    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v3, v3, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->x:F

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v3, v3, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->y:F

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v3, "touch_raw_start_x2"

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v4, v4, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->x:F

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string/jumbo v3, "touch_raw_start_y2"

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v4, v4, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->y:F

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_9

    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v3, v3, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->x:F

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v3, v3, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->y:F

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    :cond_9
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_d

    sget v3, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I

    if-ne v3, v2, :cond_a

    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/widget/SemPressGestureDetector;->putTouchedViewInfoToBundle(Landroid/os/Bundle;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_3

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v6, :cond_c

    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "fingers_touch_in_same_view"

    if-ne v3, v4, :cond_b

    :try_start_2
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_b
    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_c
    :goto_1
    move v3, v1

    :goto_2
    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/widget/SemPressGestureDetector;->putTouchedViewInfoToBundle(Landroid/os/Bundle;Landroid/view/View;)Landroid/os/Bundle;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "touched_view_info_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_d
    :goto_3
    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/widget/SemPressGestureDetector;->BIXBY_TOUCH_URI:Landroid/net/Uri;

    const-string/jumbo v5, "send_bixby_touch_event"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_10

    if-ne p1, v2, :cond_f

    const-string p1, "key_bixbytouch_version"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_e

    iput-wide v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBixbyTouchVersion:J

    :cond_e
    const-string p0, "bixbytouch_finger_touch_mode"

    sget p1, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I

    const-string p0, "bixbytouch_long_press_timeout"

    sget p1, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongPressTime:I

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongPressTime:I

    const-string p0, "long_long_press_timeout"

    sget p1, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongLongPressTime:I

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/samsung/android/widget/SemPressGestureDetector;->sLongLongPressTime:I

    const-string p0, "check_touch_down_delay_time"

    sget p1, Lcom/samsung/android/widget/SemPressGestureDetector;->sCheckTouchDownDelayTime:I

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/samsung/android/widget/SemPressGestureDetector;->sCheckTouchDownDelayTime:I

    const-string p0, "bixbytouch_finger_down_threshold"

    sget p1, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/samsung/android/widget/SemPressGestureDetector;->sFingerDownThreshold:I

    :cond_f
    const-string p0, "bixby_touch_response"

    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_4
    return v1
.end method

.method private blacklist sendBixbyLongLongCancelEvent()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBixbyTouchFoundText:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetNameList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    sget-object v1, Lcom/samsung/android/widget/SemPressGestureDetector;->sWidgetIdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "request_code"

    sget-wide v3, Lcom/samsung/android/widget/SemPressGestureDetector;->sRequestCode:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "bixby_touch_flag"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v2, Lcom/samsung/android/widget/SemPressGestureDetector;->BIXBY_TOUCH_URI:Landroid/net/Uri;

    const-string/jumbo v3, "send_bixby_touch_event"

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method private blacklist sendFindViewLocationResult([ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/widget/SemPressGestureDetector$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/widget/SemPressGestureDetector$9;-><init>(Lcom/samsung/android/widget/SemPressGestureDetector;[ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private blacklist sendHtmlData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/widget/SemPressGestureDetector$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/widget/SemPressGestureDetector$8;-><init>(Lcom/samsung/android/widget/SemPressGestureDetector;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private blacklist sendParseResult(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "request_code"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "bixby_touch_flag"

    const/4 v1, 0x5

    invoke-virtual {v0, p3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p3, "result"

    invoke-virtual {v0, p3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const-string/jumbo p2, "web_activity"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/widget/SemPressGestureDetector;->BIXBY_TOUCH_URI:Landroid/net/Uri;

    const-string/jumbo p2, "send_bixby_touch_event"

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method private blacklist startObtainViewLocation(Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    :cond_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-class v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Landroid/widget/TextView;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Landroid/widget/EditText;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Landroid/widget/CheckBox;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Landroid/widget/Button;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Landroid/widget/ImageView;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "class_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "content_desc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string v1, "content_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const-string v1, "id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "flag"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    instance-of v2, v3, Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendFindViewLocationResult([ILjava/lang/String;)V

    return-void

    :cond_1
    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/widget/SemPressGestureDetector;->findTargetView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-direct {v2, p0, p1, v8}, Lcom/samsung/android/widget/SemPressGestureDetector;->parseView(Landroid/view/View;Landroid/os/Bundle;Ljava/util/Map;)[I

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-direct {v2, p0, v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendFindViewLocationResult([ILjava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {v2, v0, v1}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendFindViewLocationResult([ILjava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    move-object v2, p0

    const-string p0, "empty data"

    invoke-direct {v2, v0, p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendFindViewLocationResult([ILjava/lang/String;)V

    return-void
.end method

.method private blacklist startObtainWebViewData(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->parseWebView(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public blacklist addRegisterBroadcastActivity(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mRegisterBroadcastActivityName:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->mRegisteredActivityMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mRegisterBroadcastTime:J

    sget-object p1, Lcom/samsung/android/widget/SemPressGestureDetector;->mRegisteredActivityMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mRegisterBroadcastActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-wide v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mRegisterBroadcastTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "addRegisterBroadcastActivity: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemPressGestureDetector"

    invoke-static {v0, p1, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public blacklist dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "dispatchTouchEvent:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",sBixbyTouchEnable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/samsung/android/widget/SemPressGestureDetector;->sBixbyTouchEnable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mFindViewRestricted="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mFindViewRestricted:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemPressGestureDetector"

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sput v1, Lcom/samsung/android/widget/SemPressGestureDetector;->sHasCallReflectCount:I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mSemOneTouchApi:Lcom/samsung/android/widget/SemOneTouchApi;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v0, v3, p1, v4}, Lcom/samsung/android/widget/SemOneTouchApi;->dispatchTouchEvent(Landroid/content/Context;Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_1
    move v0, v1

    :cond_2
    sget-boolean v3, Lcom/samsung/android/widget/SemPressGestureDetector;->sBixbyTouchEnable:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mFindViewRestricted:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mDetachedFromWindow:Z

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->resetFlags(Landroid/view/MotionEvent;)V

    :cond_4
    sget v3, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->dispatchTouchEventDoubleFingers(Landroid/view/MotionEvent;)Z

    move-result p0

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->dispatchTouchEventOneFinger(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_0
    if-nez v0, :cond_7

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    return v1

    :cond_7
    :goto_1
    return v2

    :cond_8
    :goto_2
    return v1
.end method

.method public blacklist findParentView(Landroid/view/View;I)Landroid/view/View;
    .locals 1

    if-lez p2, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/widget/SemPressGestureDetector;->findParentView(Landroid/view/View;I)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    return-object p1
.end method

.method public blacklist getCurrentConfig(Landroid/app/Activity;Ljava/lang/Class;)Landroid/content/res/Configuration;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "mCurrentConfig"

    invoke-virtual {p2, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/res/Configuration;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->getCurrentConfig(Landroid/app/Activity;Ljava/lang/Class;)Landroid/content/res/Configuration;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method

.method public blacklist getCurrentConfigFromActivity(Landroid/app/Activity;)Landroid/content/res/Configuration;
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/widget/SemPressGestureDetector;->getCurrentConfig(Landroid/app/Activity;Ljava/lang/Class;)Landroid/content/res/Configuration;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getMaxCreateTimeForClass()J
    .locals 5

    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->mRegisteredActivityMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mRegisterBroadcastActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->mRegisteredActivityMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mRegisterBroadcastActivityName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    move-wide v0, v2

    goto :goto_0

    :cond_2
    return-wide v0

    :cond_3
    return-wide v1
.end method

.method public blacklist getTouchedViews()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const-string v0, "getTouchedViews: mTouchedPoints: "

    const-string v1, "getTouchedViews: TouchedPoint: "

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget v3, Lcom/samsung/android/widget/SemPressGestureDetector;->sCurrentTouchMode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "SemPressGestureDetector"

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v3, v5, :cond_1

    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v5, :cond_2

    new-instance v1, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v3, v3, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->x:F

    iget-object v5, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v5, v5, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->y:F

    invoke-direct {v1, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v5, v5, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->x:F

    iget-object v8, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v8, v8, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->y:F

    invoke-direct {v3, v5, v8}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v5, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v5, v1, v7, p0}, Landroid/view/View;->semDispatchFindView(Landroid/graphics/PointF;ZLcom/samsung/android/widget/ISemTouchApi;)Landroid/view/View;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v8, v3, v7, p0}, Landroid/view/View;->semDispatchFindView(Landroid/graphics/PointF;ZLcom/samsung/android/widget/ISemTouchApi;)Landroid/view/View;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " view0: "

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " TouchedPoint0: "

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " TouchedPoint1: "

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_0

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v7, :cond_2

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedRawPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v7, :cond_2

    new-instance v0, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v3, v3, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->x:F

    iget-object v5, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mTouchedPoints:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/widget/SemPressGestureDetector$Point;

    iget v5, v5, Lcom/samsung/android/widget/SemPressGestureDetector$Point;->y:F

    invoke-direct {v0, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v3, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v3, v0, v7, p0}, Landroid/view/View;->semDispatchFindView(Landroid/graphics/PointF;ZLcom/samsung/android/widget/ISemTouchApi;)Landroid/view/View;

    move-result-object p0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " touchedView: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_2

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-object v2
.end method

.method public blacklist getViewContent(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/graphics/PointF;Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p3, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    instance-of v0, p3, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/samsung/android/widget/SemPressGestureDetector;->getViewContentInternal(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/graphics/PointF;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBixbyTouchFoundText:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public blacklist hasFingerPrintFeature()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.fingerprint"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist init(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mInitFailed:Z

    iput-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCallerPackage:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mProcessName:Ljava/lang/String;

    const/high16 p1, 0x40400000    # 3.0f

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemPressGestureDetector;->mm2px(F)F

    move-result p1

    float-to-int p1, p1

    sput p1, Lcom/samsung/android/widget/SemPressGestureDetector;->sTouchMoveMaxPixel:I

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->hasFingerPrintFeature()Z

    move-result p1

    sput-boolean p1, Lcom/samsung/android/widget/SemPressGestureDetector;->sHasFingerPrintFeature:Z

    iget-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_2

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mWindowType:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x7d0

    if-lt p1, p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mFindViewRestricted:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->initOnChild()V

    return-void

    :cond_3
    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mInitFailed:Z

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mFindViewRestricted:Z

    return-void
.end method

.method public blacklist isInitFailed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mInitFailed:Z

    return p0
.end method

.method public blacklist onDetached()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mSemOneTouchApi:Lcom/samsung/android/widget/SemOneTouchApi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemOneTouchApi;->onCleared(Landroid/content/Context;)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mFindViewRestricted:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mDetachedFromWindow:Z

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mHasDoneLongTouch:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mResponeLongTouch:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->sendBixbyLongLongCancelEvent()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mCheckRestrictTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mLongLongTouchRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_3

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->removeRegisterBroadcastActivityTime()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unregisterReceiver:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SemPressGestureDetector"

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :cond_3
    iput-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBixbyTouchFoundText:Ljava/lang/String;

    return-void
.end method

.method public blacklist putTouchedViewInfoToBundle(Landroid/os/Bundle;Landroid/view/View;)Landroid/os/Bundle;
    .locals 2

    if-eqz p2, :cond_1

    :try_start_0
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string v0, "input_type"

    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getInputType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const-string v0, "bixby_touch_find_text"

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mBixbyTouchFoundText:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "found_widget_name"

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-string v0, "found_widget_id"

    iget-object p0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object p1
.end method

.method public blacklist removeRegisterBroadcastActivityTime()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mRegisterBroadcastActivityName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->mRegisteredActivityMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mRegisterBroadcastActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/widget/SemPressGestureDetector;->mRegisteredActivityMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mRegisterBroadcastActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mRegisterBroadcastTime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "removeRegisterBroadcastActivity: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemPressGestureDetector"

    invoke-static {v1, v0, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public blacklist setBixbyTouchEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mSemOneTouchApi:Lcom/samsung/android/widget/SemOneTouchApi;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/samsung/android/widget/SemOneTouchApi;->updateSettingsValue(Landroid/content/Context;)V

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/widget/SemPressGestureDetector;->mFindViewRestricted:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sput-boolean p1, Lcom/samsung/android/widget/SemPressGestureDetector;->sBixbyTouchEnable:Z

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemPressGestureDetector;->isInitFailed()Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/samsung/android/widget/SemPressGestureDetector$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/widget/SemPressGestureDetector$4;-><init>(Lcom/samsung/android/widget/SemPressGestureDetector;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_2
    :goto_0
    return-void
.end method
