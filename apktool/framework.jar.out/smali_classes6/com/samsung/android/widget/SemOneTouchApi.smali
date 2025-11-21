.class public Lcom/samsung/android/widget/SemOneTouchApi;
.super Ljava/lang/Object;
.source "SemOneTouchApi.java"

# interfaces
.implements Lcom/samsung/android/widget/ISemTouchApi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;,
        Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;,
        Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;,
        Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;,
        Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;,
        Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;,
        Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;,
        Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;,
        Lcom/samsung/android/widget/SemOneTouchApi$SaveWebViewContentRunnable;,
        Lcom/samsung/android/widget/SemOneTouchApi$ScaledDragShadowBuilder;,
        Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;
    }
.end annotation


# static fields
.field private static final blacklist BITMAP_AVAILABLE_SAMPLE_SIZE:I = 0x64

.field private static final blacklist BUNDLE_KEY_ACTIVITY_NAME:Ljava/lang/String; = "key_activity_name"

.field private static final blacklist BUNDLE_KEY_APP_PROCESS_NAME:Ljava/lang/String; = "key_app_process_name"

.field private static final blacklist BUNDLE_KEY_CUSTOM_CLIP_DATA:Ljava/lang/String; = "key_customized_clip_data"

.field private static final blacklist BUNDLE_KEY_CUSTOM_DRAG_SHADOW_WIDTH:Ljava/lang/String; = "key_custom_drag_shadow_width"

.field private static final blacklist BUNDLE_KEY_EVENT_TOOL_TYPE:Ljava/lang/String; = "key_event_tool_type"

.field private static final blacklist BUNDLE_KEY_LONG_PRESS_FLAG:Ljava/lang/String; = "key_long_press_flag"

.field private static final blacklist BUNDLE_KEY_LONG_PRESS_PHASE_TWO_CUSTOM_THRESHOLD:Ljava/lang/String; = "key_long_press_phase_two_custom_threshold"

.field private static final blacklist BUNDLE_KEY_PREVIOUS_LONG_PRESS_FLAG:Ljava/lang/String; = "key_previous_long_press_flag"

.field private static final blacklist BUNDLE_KEY_RAW_TOUCHED_POINT:Ljava/lang/String; = "key_raw_touched_point"

.field private static final blacklist BUNDLE_KEY_REQUEST_CODE:Ljava/lang/String; = "key_request_code"

.field private static final blacklist BUNDLE_KEY_RESULT_BOOLEAN:Ljava/lang/String; = "key_result_boolean"

.field private static final blacklist BUNDLE_KEY_SAVE_IMAGE_RESULT:Ljava/lang/String; = "key_save_img_result"

.field private static final blacklist BUNDLE_KEY_SKIP_DRAG_AND_DROP:Ljava/lang/String; = "key_skip_drag_and_drop"

.field private static final blacklist BUNDLE_KEY_TOUCHED_IMG_PFD:Ljava/lang/String; = "key_touched_img_pfd"

.field private static final blacklist BUNDLE_KEY_TOUCHED_POINT:Ljava/lang/String; = "key_touched_point"

.field private static final blacklist BUNDLE_KEY_TOUCHED_TEXT:Ljava/lang/String; = "key_touched_text"

.field private static final blacklist BUNDLE_KEY_TOUCHED_VIEW_SIZE:Ljava/lang/String; = "key_touched_view_size"

.field private static final blacklist BUNDLE_KEY_TOUCHED_WIDGET_ID:Ljava/lang/String; = "key_touched_widget_id"

.field private static final blacklist BUNDLE_KEY_TOUCHED_WIDGET_NAME:Ljava/lang/String; = "key_touched_widget_name"

.field private static final blacklist BUNDLE_KEY_VIDEO_VIEW_ClASS_NAME:Ljava/lang/String; = "key_video_view_class_name"

.field private static final blacklist BUNDLE_KEY_VIDEO_VIEW_FINDING_TOP_TO_DOWN:Ljava/lang/String; = "key_video_view_finding_top_to_down"

.field private static final blacklist BUNDLE_KEY_VIDEO_VIEW_ROOT_CLASS:Ljava/lang/String; = "key_video_view_root_calss_name"

.field private static final blacklist BUNDLE_KEY_VIDEO_VIEW_WIDGET_ID:Ljava/lang/String; = "key_video_view_widget_id"

.field private static final blacklist BUNDLE_KEY_VIDEO_VIEW_WIDGET_NAME:Ljava/lang/String; = "key_video_view_widget_name"

.field private static final blacklist BUNDLE_KEY_WEB_VIEW_CONTENT:Ljava/lang/String; = "key_webview_content"

.field private static final blacklist BUNDLE_KEY_WINDOW_FLAGS:Ljava/lang/String; = "key_window_flags"

.field private static final blacklist BUNDLE_KEY_WINDOW_RECT:Ljava/lang/String; = "key_window_rect"

.field private static final blacklist BUNDLE_KEY_WINDOW_TYPE:Ljava/lang/String; = "key_window_type"

.field private static final blacklist CALL_METHOD_CUSTOM_VIDEO_CLASS_NAME:Ljava/lang/String; = "query_custom_video_class_name"

.field private static final blacklist CALL_METHOD_ON_LONG_PRESSED:Ljava/lang/String; = "method_on_long_pressed"

.field public static final blacklist COLUMN_CLASS_NAME:Ljava/lang/String; = "clazz"

.field public static final blacklist COLUMN_FIELD_LEVEL:Ljava/lang/String; = "level"

.field public static final blacklist COLUMN_FIELD_NAME:Ljava/lang/String; = "field"

.field public static final blacklist COLUMN_METHOD_NAME:Ljava/lang/String; = "method"

.field public static final blacklist COLUMN_VIEW_TYPE:Ljava/lang/String; = "type"

.field private static final blacklist DEFAULT_CHECK_TOUCH_DOWN_DELAY_TIME:I = 0x64

.field private static final blacklist DEFAULT_LONG_PRESS_PHASE_ONE_THRESHOLD:I = 0x1b8

.field private static final blacklist DEFAULT_LONG_PRESS_PHASE_TWO_THRESHOLD:I = 0x32a

.field private static final blacklist DRAG_SHADOW_TEXT_VIEW_MAX_LENGTH:I = 0x64

.field private static final blacklist FOUND_TEXT_MAX_LENGTH:I = 0x7d0

.field private static final blacklist LONG_PRESS_FLAG_LONG_PRESS_CANCELLED:I = 0x3

.field private static final blacklist LONG_PRESS_FLAG_LONG_PRESS_COMPLETED:I = 0x4

.field private static final blacklist LONG_PRESS_FLAG_LONG_PRESS_PHASE_ONE:I = 0x1

.field private static final blacklist LONG_PRESS_FLAG_LONG_PRESS_PHASE_TWO:I = 0x2

.field private static final blacklist LONG_PRESS_FLAG_LONG_PRESS_START:I = 0x0

.field private static final blacklist LONG_PRESS_FLAG_SAVE_IMAGE_VIEW_FINISHED:I = 0x3e9

.field private static final blacklist LONG_PRESS_FLAG_SAVE_WEB_VIEW_CONTENT:I = 0x3ea

.field private static final blacklist OPEN_URI_SAVE_TOUCHED_IMG:Ljava/lang/String; = "uri_save_touched_img"

.field private static final blacklist OTCH_EXTERNAL_EVENT_AUTHORITY:Ljava/lang/String; = "content://com.samsung.android.onetouch.externalEvent"

.field private static final blacklist OTCH_EXTERNAL_EVENT_URI:Landroid/net/Uri;

.field public static final blacklist PACKAGE_NAME_ONE_TOUCH:Ljava/lang/String; = "com.samsung.android.onetouch"

.field private static final blacklist PACKAGE_NAME_SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"

.field public static final blacklist PROJECTION_PACKAGE_NAME:Ljava/lang/String; = "pkg"

.field private static final blacklist PROJECTION_POINTF_X:Ljava/lang/String; = "pointFX"

.field private static final blacklist PROJECTION_POINTF_Y:Ljava/lang/String; = "pointFY"

.field private static final blacklist PROJECTION_TOUCHED_VIEW_SCALE:Ljava/lang/String; = "touched_view_scale"

.field public static final blacklist PROJECTION_VERSION_CODE:Ljava/lang/String; = "ver"

.field private static final blacklist QUERY_FIND_VIEW_INFO:Ljava/lang/String; = "query_find_view_info"

.field private static final blacklist QUERY_WEBVIEW_JAVASCRIPT:Ljava/lang/String; = "query_webview_javascript"

.field private static final blacklist REFLECT_FIELD_LEVEL_SELF:I = 0x0

.field private static final blacklist REFLECT_FIELD_LEVEL_SUPER:I = 0x1

.field private static final blacklist REFLECT_FIELD_LEVEL_SUPER_SUPER:I = 0x2

.field private static final blacklist SETTING_KEY_OTCH_LONG_PRESS_ENABLE:Ljava/lang/String; = "otch_long_press_enabled_setting"

.field private static final blacklist SETTING_KEY_OTCH_LONG_PRESS_PHASE_ONE_THRESHOLD:Ljava/lang/String; = "otch_long_press_phase_one_threshold"

.field private static final blacklist SETTING_KEY_OTCH_LONG_PRESS_PHASE_TWO_THRESHOLD:Ljava/lang/String; = "otch_long_press_phase_two_threshold"

.field private static final blacklist TAG:Ljava/lang/String; = "OTCH$SemOneTouchApi"

.field private static final blacklist TOUCH_MOVE_MAX_MM:F = 3.0f

.field public static final blacklist VIEW_TYPE_BLOCK:Ljava/lang/String; = "view_type_block"

.field public static final blacklist VIEW_TYPE_IMAGE_VIEW:Ljava/lang/String; = "android.widget.ImageView"

.field public static final blacklist VIEW_TYPE_TEXT_VIEW:Ljava/lang/String; = "android.widget.TextView"

.field public static final blacklist VIEW_TYPE_WEB_VIEW:Ljava/lang/String; = "android.webkit.WebView"


# instance fields
.field private blacklist mCheckRestrictTouchRunnable:Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;

.field private blacklist mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIsInitialized:Ljava/lang/Boolean;

.field private blacklist mIsOneTouchSettingsEnabled:Ljava/lang/Boolean;

.field private blacklist mLongPressPhaseOneRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;

.field private blacklist mLongPressPhaseTwoOnResponseRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;

.field private blacklist mLongPressPhaseTwoRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;

.field private blacklist mOneTouchLongPressThreshold:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mTouchEventMoveMaxPixel:I

.field private blacklist sIsFactoryBinary:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$OZHG1O4woHFbAiuortAYR69t35o(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->lambda$isBlocked$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$sRRFVZBk_iN8Yywt7g1-isYt3SI(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/View;Landroid/content/ClipData;ILcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemOneTouchApi;->lambda$performDragAndDrop$2(Landroid/view/View;Landroid/content/ClipData;ILcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$xyNnsKpOGuQH824TO5WXOpE8cTs(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemOneTouchApi;->lambda$getWebViewTextCallback$3(Landroid/content/Context;JLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCurrentLongPressEvent(Lcom/samsung/android/widget/SemOneTouchApi;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLongPressPhaseTwoOnResponseRunnable(Lcom/samsung/android/widget/SemOneTouchApi;)Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseTwoOnResponseRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLongPressPhaseTwoRunnable(Lcom/samsung/android/widget/SemOneTouchApi;)Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseTwoRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOneTouchLongPressThreshold(Lcom/samsung/android/widget/SemOneTouchApi;)Landroid/util/Pair;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mOneTouchLongPressThreshold:Landroid/util/Pair;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCurrentLongPressEvent(Lcom/samsung/android/widget/SemOneTouchApi;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLongPressPhaseTwoOnResponseRunnable(Lcom/samsung/android/widget/SemOneTouchApi;Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseTwoOnResponseRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLongPressPhaseTwoRunnable(Lcom/samsung/android/widget/SemOneTouchApi;Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseTwoRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearEventState(Lcom/samsung/android/widget/SemOneTouchApi;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemOneTouchApi;->clearEventState()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mfindVideoView(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemOneTouchApi;->findVideoView(Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetBitmapFromImageView(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->getBitmapFromImageView(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetFindVideoViewEventInfo(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/os/Bundle;)Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemOneTouchApi;->getFindVideoViewEventInfo(Landroid/content/Context;Landroid/os/Bundle;)Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetTouchedView(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/View;Landroid/graphics/PointF;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemOneTouchApi;->getTouchedView(Landroid/view/View;Landroid/graphics/PointF;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misEventSuccess(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->isEventSuccess(Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misFingerPrintInDisplay(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->isFingerPrintInDisplay(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misSaveBitmapFileNeeded(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->isSaveBitmapFileNeeded(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monLongPressCanceled(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->onLongPressCanceled(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monLongPressCompleted(Lcom/samsung/android/widget/SemOneTouchApi;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemOneTouchApi;->onLongPressCompleted()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monLongPressError(Lcom/samsung/android/widget/SemOneTouchApi;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/widget/SemOneTouchApi;->onLongPressError()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mperformDragAndDrop(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;ILandroid/view/View;Landroid/graphics/PointF;Landroid/view/View;Landroid/content/ClipData;Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p9}, Lcom/samsung/android/widget/SemOneTouchApi;->performDragAndDrop(Landroid/content/Context;ILandroid/view/View;Landroid/graphics/PointF;Landroid/view/View;Landroid/content/ClipData;Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mputRootViewInfoToBundle(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/os/Bundle;Landroid/view/View;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemOneTouchApi;->putRootViewInfoToBundle(Landroid/content/Context;Landroid/os/Bundle;Landroid/view/View;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mputTouchedViewInfoToBundle(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/os/Bundle;Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemOneTouchApi;->putTouchedViewInfoToBundle(Landroid/content/Context;Landroid/os/Bundle;Landroid/view/View;Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mputVideoViewInfoToBundle(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/widget/SemOneTouchApi;->putVideoViewInfoToBundle(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msaveBitmapFile(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemOneTouchApi;->saveBitmapFile(Landroid/content/Context;Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendOnLongPressedEvent(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemOneTouchApi;->sendOnLongPressedEvent(Landroid/content/Context;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.onetouch.externalEvent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/widget/SemOneTouchApi;->OTCH_EXTERNAL_EVENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mIsInitialized:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mIsOneTouchSettingsEnabled:Ljava/lang/Boolean;

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->sIsFactoryBinary:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseOneRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseTwoRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseTwoOnResponseRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCheckRestrictTouchRunnable:Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;

    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0x1b8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x32a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mOneTouchLongPressThreshold:Landroid/util/Pair;

    const/16 v0, 0x32

    iput v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mTouchEventMoveMaxPixel:I

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemOneTouchApi;->isBlocked(Landroid/content/Context;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->updateSettingsValue(Landroid/content/Context;)V

    const/high16 v0, 0x40400000    # 3.0f

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemOneTouchApi;->mm2px(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mTouchEventMoveMaxPixel:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;-><init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCheckRestrictTouchRunnable:Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;

    :cond_1
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mIsInitialized:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "OTCH$SemOneTouchApi"

    const-string p2, "init failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private blacklist base64ToBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 p0, 0x0

    :try_start_0
    invoke-static {p1, p0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    array-length v0, p1

    invoke-static {p1, p0, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "base64ToBitmap fail: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OTCH$SemOneTouchApi"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static blacklist checkFindViewInfoList(Landroid/view/View;Ljava/util/List;)Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;",
            ">;)",
            "Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    instance-of v2, v1, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;

    invoke-static {v1}, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;->-$$Nest$fgetclassName(Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;->-$$Nest$fgetclassName(Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method private blacklist checkTouchedPointIsMoved(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgettouchedPoint(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mTouchEventMoveMaxPixel:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gtz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mTouchEventMoveMaxPixel:I

    int-to-float p0, p0

    cmpl-float p0, p1, p0

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

.method private blacklist clearEventState()V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseOneRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->remove()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseTwoRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;->remove()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseTwoOnResponseRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoOnResponseRunnable;->remove()V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCheckRestrictTouchRunnable:Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "OTCH$SemOneTouchApi"

    const-string v1, "clearEventState failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method

.method public static blacklist dpToPx(I)I
    .locals 1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p0, p0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private blacklist dragWithCustomShadowView(Landroid/view/View;Landroid/view/View;Landroid/content/ClipData;Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    invoke-interface {p4, p0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;->onDragAndDropResult(Z)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->setShadowViewLayout(Landroid/view/View;)V

    move-object p0, p2

    check-cast p0, Landroid/view/ViewGroup;

    new-instance v0, Lcom/samsung/android/widget/SemOneTouchApi$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p3, p1, p4}, Lcom/samsung/android/widget/SemOneTouchApi$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View;Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist drawViewOnBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "draw"

    const-string v1, "OTCH$SemOneTouchApi"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p1

    const/4 v3, 0x1

    if-nez p1, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result p1

    if-eq p1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/widget/SemOneTouchApi;->isBitmapValid(Landroid/graphics/Bitmap;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->isBitmapValid(Landroid/graphics/Bitmap;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    return-object v0

    :cond_2
    const-string p0, "draw fail"

    invoke-static {v1, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist drawable2Bitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8

    const-string v0, "OTCH$SemOneTouchApi"

    const/4 v1, 0x0

    :try_start_0
    instance-of v2, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    move-object v2, p2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    :try_start_1
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v4, "drawable2Bitmap, constantState null"

    invoke-static {v0, v4}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, p2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :goto_1
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-lez v5, :cond_3

    if-gtz v6, :cond_4

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    :cond_4
    if-lez v5, :cond_7

    if-gtz v6, :cond_5

    goto :goto_3

    :cond_5
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    if-nez v3, :cond_6

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_2

    :cond_6
    move-object v3, v1

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v3, :cond_8

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_7
    :goto_3
    const-string p1, "drawable2Bitmap fail"

    invoke-static {v0, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v2, v1

    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v3, "drawable2Bitmap fail: "

    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_5
    const/4 p1, 0x1

    invoke-virtual {p0, v2, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->isBitmapValid(Landroid/graphics/Bitmap;Z)Z

    move-result p0

    if-nez p0, :cond_9

    return-object v1

    :cond_9
    return-object v2
.end method

.method private blacklist evaluateHtmlData(Landroid/content/Context;Landroid/webkit/WebView;Landroid/graphics/PointF;Landroid/webkit/ValueCallback;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebView;",
            "Landroid/graphics/PointF;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-nez p4, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2}, Landroid/webkit/WebView;->getScale()F

    move-result v1

    invoke-direct {p0, p1, p3, v1}, Lcom/samsung/android/widget/SemOneTouchApi;->getWebViewScript(Landroid/content/Context;Landroid/graphics/PointF;F)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p2, p0, p4}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private blacklist findVideoView(Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-eqz p3, :cond_4

    const/4 p3, 0x1

    sub-int/2addr v1, p3

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Landroid/view/SurfaceView;

    if-nez v3, :cond_2

    instance-of v3, v2, Landroid/view/TextureView;

    if-nez v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-direct {p0, v2, p2, p3}, Lcom/samsung/android/widget/SemOneTouchApi;->findVideoView(Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    return-object v0

    :cond_4
    const/4 p3, 0x0

    move v2, p3

    :goto_2
    if-ge v2, v1, :cond_8

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v4, v3, Landroid/view/SurfaceView;

    if-nez v4, :cond_7

    instance-of v4, v3, Landroid/view/TextureView;

    if-nez v4, :cond_7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_6

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {p0, v3, p2, p3}, Lcom/samsung/android/widget/SemOneTouchApi;->findVideoView(Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_6

    return-object v0

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    return-object v3

    :cond_8
    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "OTCH$SemOneTouchApi"

    const-string p2, "findVideoView failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
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
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->getActivityFromContextWrapper(Landroid/content/Context;)Landroid/app/Activity;

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

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getAppVersionCode fail: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OTCH$SemOneTouchApi"

    invoke-static {p1, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method private blacklist getBitmapFromFile(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "OTCH$SemOneTouchApi"

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string/jumbo p0, "pfd null"

    invoke-static {v0, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v3, 0x168

    invoke-virtual {p0, p1, v3, v3}, Lcom/samsung/android/widget/SemOneTouchApi;->calculateInSampleSize(Landroid/os/ParcelFileDescriptor;II)I

    move-result p0

    iput p0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "getBitmapFromFile failed, abandon SaveBitmapFile"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private blacklist getBitmapFromImageView(Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/widget/SemOneTouchApi;->drawable2Bitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_1

    :try_start_1
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->drawViewOnBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    return-object v1

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "getBitmapFromView fail: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OTCH$SemOneTouchApi"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private blacklist getBitmapFromView(Landroid/view/View;Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 1

    :try_start_0
    instance-of v0, p2, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p2, Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    check-cast p2, Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/widget/SemOneTouchApi;->drawable2Bitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->drawViewOnBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getBitmapFromView failed: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OTCH$SemOneTouchApi"

    invoke-static {p1, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
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

.method private blacklist getCustomImageView(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/PointF;I)Landroid/widget/ImageView;
    .locals 1

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p4}, Lcom/samsung/android/widget/SemOneTouchApi;->dpToPx(I)I

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    if-gt p4, p1, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    if-le p4, p1, :cond_3

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-le p4, v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setMaxWidth(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setMaxHeight(I)V

    :cond_3
    :goto_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget p1, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setX(F)V

    iget p1, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setY(F)V

    return-object p0
.end method

.method private blacklist getCustomTextThumbnailView(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/PointF;I)Landroid/widget/FrameLayout;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const p0, 0x10901ad

    invoke-static {p1, p0, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    invoke-static {p4}, Lcom/samsung/android/widget/SemOneTouchApi;->dpToPx(I)I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setMaxWidth(I)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p4

    const/16 v0, 0x64

    if-le p4, v0, :cond_3

    const/4 p4, 0x0

    invoke-virtual {p2, p4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    :cond_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget p1, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setX(F)V

    iget p1, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setY(F)V

    return-object p0
.end method

.method private blacklist getFindVideoViewEventInfo(Landroid/content/Context;Landroid/os/Bundle;)Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;
    .locals 3

    const-string p0, "OTCH$SemOneTouchApi"

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/widget/SemOneTouchApi;->OTCH_EXTERNAL_EVENT_URI:Landroid/net/Uri;

    const-string/jumbo v2, "query_custom_video_class_name"

    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendOnLongPressedEvent fail: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v0

    :goto_0
    const/4 p2, 0x1

    if-nez p1, :cond_0

    const-string/jumbo p1, "sendOnLongPressedEvent fail, result null"

    invoke-static {p0, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;-><init>(ZLjava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;

    const-string v1, "key_video_view_finding_top_to_down"

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    const-string v1, "key_video_view_class_name"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;-><init>(ZLjava/lang/String;)V

    return-object p0
.end method

.method private blacklist getReflectedResult(Landroid/view/View;Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/Object;
    .locals 7

    const-string p0, "OTCH$SemOneTouchApi"

    const-string/jumbo v0, "reflectedObject: "

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p2}, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;->-$$Nest$fgetmethodName(Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    invoke-static {p2}, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;->-$$Nest$fgetmethodName(Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/String;

    move-result-object p2

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v2, p2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_0
    invoke-static {p2}, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;->-$$Nest$fgetfieldName(Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {p2}, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;->-$$Nest$fgetfieldLevel(Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    const/4 v6, 0x2

    if-eq v3, v6, :cond_1

    move-object p2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p2}, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;->-$$Nest$fgetfieldName(Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p2}, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;->-$$Nest$fgetfieldName(Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;->-$$Nest$fgetfieldName(Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_4

    const-string p1, "getFiled null"

    invoke-static {p0, p1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    invoke-virtual {p2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_5
    move-object p1, v1

    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    move v4, v5

    :cond_6
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_7

    const-string p1, "get Object null"

    invoke-static {p0, p1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_7
    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "getFiledObject: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private blacklist getTextFromTextView(Ljava/lang/Object;Landroid/view/View;Landroid/graphics/PointF;)Ljava/lang/String;
    .locals 3

    instance-of p0, p1, Ljava/lang/CharSequence;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    instance-of v0, p2, Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v2, 0x7d0

    if-eqz v0, :cond_4

    check-cast p2, Landroid/widget/TextView;

    iget v0, p3, Landroid/graphics/PointF;->x:F

    iget p3, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v0, p3}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result p2

    if-ne p2, p1, :cond_1

    add-int/lit8 p2, p1, -0x1

    :cond_1
    if-ge p1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 p3, 0x3e8

    if-ge p2, p3, :cond_3

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    add-int/lit16 v0, p2, -0x3e8

    add-int/2addr p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    if-gt p1, v2, :cond_5

    :goto_0
    return-object p0

    :cond_5
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist getTouchedView(Landroid/view/View;Landroid/graphics/PointF;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1, p2, v0, p0}, Landroid/view/View;->semDispatchFindView(Landroid/graphics/PointF;ZLcom/samsung/android/widget/ISemTouchApi;)Landroid/view/View;

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

.method private blacklist getViewContentInternal(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/graphics/PointF;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const-string p2, "OTCH$SemOneTouchApi"

    const-string p5, "block: "

    const-string v0, "findViewInfo: "

    const/4 v1, 0x0

    :try_start_0
    instance-of v2, p3, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/widget/SemOneTouchApi;->getTextFromTextView(Ljava/lang/Object;Landroid/view/View;Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v2, p3, Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    move-object v2, p3

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :cond_1
    :try_start_1
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v4}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v4}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v2

    if-eq v2, v3, :cond_4

    :cond_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "getViewContentInternal draw Exception"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1

    :cond_3
    instance-of v2, p3, Landroid/webkit/WebView;

    if-eqz v2, :cond_4

    check-cast p3, Landroid/webkit/WebView;

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->getWebViewTextCallback(Landroid/content/Context;)Landroid/webkit/ValueCallback;

    move-result-object p5

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/samsung/android/widget/SemOneTouchApi;->evaluateHtmlData(Landroid/content/Context;Landroid/webkit/WebView;Landroid/graphics/PointF;Landroid/webkit/ValueCallback;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    invoke-static {v2}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgetfindViewInfos(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Ljava/util/List;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/samsung/android/widget/SemOneTouchApi;->checkFindViewInfoList(Landroid/view/View;Ljava/util/List;)Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;

    move-result-object v2

    if-eqz v2, :cond_b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;->-$$Nest$fgetviewType(Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x2

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "android.widget.TextView"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v4, "android.widget.ImageView"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v6

    goto :goto_1

    :sswitch_2
    const-string v4, "android.webkit.WebView"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v4, "view_type_block"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v5

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_a

    if-eq v0, v3, :cond_8

    if-eq v0, v6, :cond_7

    if-eq v0, v5, :cond_6

    return-object v1

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_7
    invoke-direct {p0, p3, v2}, Lcom/samsung/android/widget/SemOneTouchApi;->getReflectedResult(Landroid/view/View;Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->getBitmapFromView(Landroid/view/View;Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-direct {p0, p3, v2}, Lcom/samsung/android/widget/SemOneTouchApi;->getReflectedResult(Landroid/view/View;Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/widget/SemOneTouchApi;->getTextFromTextView(Ljava/lang/Object;Landroid/view/View;Landroid/graphics/PointF;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    return-object v1

    :cond_a
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->getWebViewTextCallback(Landroid/content/Context;)Landroid/webkit/ValueCallback;

    move-result-object p5

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/samsung/android/widget/SemOneTouchApi;->invokeHtmlData(Landroid/content/Context;Landroid/view/View;Landroid/graphics/PointF;Landroid/webkit/ValueCallback;)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "getViewContentInternal failed: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4414aade -> :sswitch_3
        0x3f0ae6c -> :sswitch_2
        0x27fd74f5 -> :sswitch_1
        0x5bce347d -> :sswitch_0
    .end sparse-switch
.end method

.method private blacklist getWebViewScript(Landroid/content/Context;Landroid/graphics/PointF;F)Ljava/lang/String;
    .locals 10

    const-string v0, "content://com.samsung.android.onetouch.externalEvent/query_webview_javascript"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/widget/SemOneTouchApi;->isProviderLegal(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p0

    const-string v8, "OTCH$SemOneTouchApi"

    const/4 v9, 0x0

    if-nez p0, :cond_0

    const-string p0, "Provider illegal"

    invoke-static {v8, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_0
    const-string/jumbo p0, "pointFY"

    const-string/jumbo v0, "touched_view_scale"

    const-string/jumbo v1, "pointFX"

    filled-new-array {v1, p0, v0}, [Ljava/lang/String;

    move-result-object v3

    iget p0, p2, Landroid/graphics/PointF;->x:F

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    filled-new-array {p0, p2, p3}, [Ljava/lang/String;

    move-result-object v5

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "method"

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    if-eqz p0, :cond_1

    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getWebViewScript fail: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "getWebViewScript fail"

    invoke-static {v8, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v9
.end method

.method private blacklist getWebViewTextCallback(Landroid/content/Context;)Landroid/webkit/ValueCallback;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    if-nez v0, :cond_0

    const-string p0, "OTCH$SemOneTouchApi"

    const-string p1, "getWebViewTextCallback eventInfo null"

    invoke-static {p0, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgetrequestCode(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)J

    move-result-wide v0

    new-instance v2, Lcom/samsung/android/widget/SemOneTouchApi$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/samsung/android/widget/SemOneTouchApi$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;J)V

    return-object v2
.end method

.method private blacklist invokeHtmlData(Landroid/content/Context;Landroid/view/View;Landroid/graphics/PointF;Landroid/webkit/ValueCallback;)Ljava/lang/Boolean;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    const-string v0, "OTCH$SemOneTouchApi"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    if-nez p4, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    :try_start_0
    const-string v4, "getScale"

    new-array v5, v1, [Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    const-string p0, "getScale failed"

    invoke-static {v0, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    const-string v5, "evaluateJavascript"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v1

    const-class v1, Landroid/webkit/ValueCallback;

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, p1, p3, v3}, Lcom/samsung/android/widget/SemOneTouchApi;->getWebViewScript(Landroid/content/Context;Landroid/graphics/PointF;F)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v2

    :cond_2
    filled-new-array {p0, p4}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "invokeHtmlData fail: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method private blacklist isBlocked(Landroid/content/Context;Landroid/view/View;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->sIsFactoryBinary:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-string v2, "com.samsung.android.onetouch"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/samsung/android/widget/SemOneTouchApi$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/widget/SemOneTouchApi$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/View;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    new-instance p0, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.category.HOME"

    invoke-virtual {p0, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    iget-object p1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return p2

    :cond_5
    :goto_1
    return v1
.end method

.method private blacklist isEventSuccess(Landroid/os/Bundle;)Ljava/lang/Boolean;
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "OTCH$SemOneTouchApi"

    const-string v0, "call One Touch error, bundle null"

    invoke-static {p0, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    const-string p0, "key_result_boolean"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private blacklist isFingerPrintInDisplay(Landroid/content/Context;)Z
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorPosition()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p0

    :goto_0
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->semGetIconBottomMargin()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    move p1, p0

    move v1, p1

    :goto_1
    if-eqz v1, :cond_2

    if-lez p1, :cond_2

    return v0

    :catch_0
    :cond_2
    return p0
.end method

.method public static blacklist isOneTouchSupported()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_ONE_TOUCH:Z

    return v0
.end method

.method private blacklist isProviderLegal(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 7

    const-string p0, "OTCH$SemOneTouchApi"

    const-string/jumbo v0, "package not uid signature: "

    const-string/jumbo v1, "package not platform: "

    const-string/jumbo v2, "package illegal flag: "

    const-string/jumbo v3, "packageName not legal: "

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v6, "isDualAppId"

    invoke-static {p0, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Landroid/os/UserHandle;->semOf(I)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {p1, v6, v4}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-nez p1, :cond_1

    return v4

    :cond_1
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p2

    if-nez p2, :cond_3

    const-string/jumbo p1, "providerInfo null"

    invoke-static {p0, p1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_3
    iget-object p2, p2, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.samsung.android.onetouch"

    invoke-static {p2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    invoke-virtual {p1, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-nez v3, :cond_5

    const-string/jumbo p1, "packageInfo null"

    invoke-static {p0, p1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_5
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v6, 0x1

    and-int/2addr v3, v6

    if-eqz v3, :cond_9

    const-string v2, "android"

    invoke-virtual {p1, v2, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_8

    if-nez v5, :cond_7

    invoke-virtual {p1, p2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    invoke-virtual {p1, v2, v1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " uid: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_7
    :goto_0
    return v6

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_1
    return v4

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Exception: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method private blacklist isSaveBitmapFileNeeded(Landroid/view/View;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of p0, p1, Landroid/widget/ImageView;

    return p0
.end method

.method static synthetic blacklist lambda$dragWithCustomShadowView$1(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View;Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V
    .locals 2

    new-instance v0, Landroid/view/View$DragShadowBuilder;

    invoke-direct {v0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    const/4 p2, 0x0

    const/16 v1, 0x300

    invoke-virtual {p0, p1, v0, p2, v1}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result p0

    invoke-interface {p3, p0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;->onDragAndDropResult(Z)V

    return-void
.end method

.method private synthetic blacklist lambda$getWebViewTextCallback$3(Landroid/content/Context;JLjava/lang/String;)V
    .locals 7

    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/widget/SemOneTouchApi$SaveWebViewContentRunnable;

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p2

    move-object v4, p4

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/widget/SemOneTouchApi$SaveWebViewContentRunnable;-><init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Ljava/lang/String;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getWebViewTextCallback : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OTCH$SemOneTouchApi"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private synthetic blacklist lambda$isBlocked$0(Landroid/view/View;)V
    .locals 1

    const-string v0, "OTCH$SemOneTouchApi"

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getWindowFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_0

    const-string p1, "FLAG_SECURE, blocked"

    invoke-static {v0, p1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mIsInitialized:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "isBlocked failed"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method private synthetic blacklist lambda$performDragAndDrop$2(Landroid/view/View;Landroid/content/ClipData;ILcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/widget/SemOneTouchApi$ScaledDragShadowBuilder;

    invoke-direct {v0, p0, p1, p3}, Lcom/samsung/android/widget/SemOneTouchApi$ScaledDragShadowBuilder;-><init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/View;I)V

    const/16 p0, 0x300

    invoke-virtual {p1, p2, v0, p1, p0}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result p0

    invoke-interface {p4, p0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;->onDragAndDropResult(Z)V

    return-void
.end method

.method private blacklist mm2px(Landroid/content/Context;F)F
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    const p1, 0x41cb3333    # 25.4f

    div-float/2addr p2, p1

    int-to-float p0, p0

    mul-float/2addr p2, p0

    return p2
.end method

.method private blacklist onLongPressCanceled(Landroid/content/Context;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    invoke-direct {p0}, Lcom/samsung/android/widget/SemOneTouchApi;->clearEventState()V

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgeteventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgetbundle(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgetbundle(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "key_previous_long_press_flag"

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgeteventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputeventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;I)V

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/widget/SemOneTouchApi;->sendOnLongPressedEvent(Landroid/content/Context;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/os/Bundle;

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist onLongPressCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputeventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;I)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    :cond_0
    return-void
.end method

.method private blacklist onLongPressError()V
    .locals 2

    const-string v0, "OTCH$SemOneTouchApi"

    const-string/jumbo v1, "onLongPressError"

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemOneTouchApi;->clearEventState()V

    return-void
.end method

.method private blacklist onLongPressStart(Landroid/content/Context;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onLongPressStart state error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", replace LongPressEvent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OTCH$SemOneTouchApi"

    invoke-static {v1, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/widget/SemOneTouchApi;->clearEventState()V

    :cond_0
    new-instance v0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p2}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;-><init>(JILandroid/view/MotionEvent;)V

    new-instance p2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p2, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;

    invoke-direct {p2, p0, p1, p3}, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;-><init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/view/View;)V

    iput-object p2, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mLongPressPhaseOneRunnable:Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;

    iget-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mOneTouchLongPressThreshold:Landroid/util/Pair;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-virtual {p3, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCheckRestrictTouchRunnable:Lcom/samsung/android/widget/SemOneTouchApi$CheckRestrictTouchRunnable;

    if-eqz p0, :cond_1

    const-wide/16 p1, 0x64

    invoke-virtual {p3, p0, p1, p2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private blacklist parseActivity(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    :goto_0
    move-object v0, p2

    goto :goto_1

    :cond_0
    instance-of v1, p1, Lcom/android/internal/policy/DecorContext;

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->getContextFromDecorContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Landroid/app/Activity;

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->getActivityFromContextWrapper(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    const-string p1, "OTCH$SemOneTouchApi"

    const-string/jumbo p2, "parseActivity failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private blacklist performDragAndDrop(Landroid/content/Context;ILandroid/view/View;Landroid/graphics/PointF;Landroid/view/View;Landroid/content/ClipData;Landroid/os/ParcelFileDescriptor;Ljava/lang/Object;Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V
    .locals 2

    if-eqz p5, :cond_3

    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p8}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of p7, p8, Ljava/lang/CharSequence;

    if-eqz p7, :cond_1

    check-cast p8, Ljava/lang/CharSequence;

    invoke-interface {p8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p0, p1, p5, p4, p2}, Lcom/samsung/android/widget/SemOneTouchApi;->getCustomTextThumbnailView(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/PointF;I)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-direct {p0, p1, p3, p6, p9}, Lcom/samsung/android/widget/SemOneTouchApi;->dragWithCustomShadowView(Landroid/view/View;Landroid/view/View;Landroid/content/ClipData;Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V

    return-void

    :cond_1
    instance-of p7, p8, Landroid/graphics/Bitmap;

    if-eqz p7, :cond_2

    check-cast p8, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, p8, p4, p2}, Lcom/samsung/android/widget/SemOneTouchApi;->getCustomImageView(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/PointF;I)Landroid/widget/ImageView;

    move-result-object p1

    invoke-direct {p0, p1, p3, p6, p9}, Lcom/samsung/android/widget/SemOneTouchApi;->dragWithCustomShadowView(Landroid/view/View;Landroid/view/View;Landroid/content/ClipData;Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V

    return-void

    :cond_2
    new-instance p1, Lcom/samsung/android/widget/SemOneTouchApi$$ExternalSyntheticLambda3;

    move-object p3, p5

    move-object p4, p6

    move-object p6, p9

    move p5, p2

    move-object p2, p0

    invoke-direct/range {p1 .. p6}, Lcom/samsung/android/widget/SemOneTouchApi$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/View;Landroid/content/ClipData;ILcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V

    invoke-virtual {p3, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_3
    :goto_0
    move p5, p2

    move-object p2, p0

    move-object p0, p6

    move-object p6, p9

    invoke-virtual {p0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object p8

    const/4 p9, 0x0

    invoke-virtual {p0, p9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-eqz p8, :cond_7

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "text/*"

    invoke-virtual {p8, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p7

    invoke-interface {p7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-direct {p2, p1, p7, p4, p5}, Lcom/samsung/android/widget/SemOneTouchApi;->getCustomTextThumbnailView(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/PointF;I)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-direct {p2, p1, p3, p0, p6}, Lcom/samsung/android/widget/SemOneTouchApi;->dragWithCustomShadowView(Landroid/view/View;Landroid/view/View;Landroid/content/ClipData;Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V

    return-void

    :cond_5
    const-string v0, "image/*"

    invoke-virtual {p8, v0}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result p8

    if-eqz p8, :cond_6

    invoke-direct {p2, p7}, Lcom/samsung/android/widget/SemOneTouchApi;->getBitmapFromFile(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object p7

    invoke-direct {p2, p1, p7, p4, p5}, Lcom/samsung/android/widget/SemOneTouchApi;->getCustomImageView(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/PointF;I)Landroid/widget/ImageView;

    move-result-object p1

    invoke-direct {p2, p1, p3, p0, p6}, Lcom/samsung/android/widget/SemOneTouchApi;->dragWithCustomShadowView(Landroid/view/View;Landroid/view/View;Landroid/content/ClipData;Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;)V

    return-void

    :cond_6
    invoke-interface {p6, p9}, Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;->onDragAndDropResult(Z)V

    return-void

    :cond_7
    :goto_1
    invoke-interface {p6, p9}, Lcom/samsung/android/widget/SemOneTouchApi$OtchDragAndDropResultCallback;->onDragAndDropResult(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "OTCH$SemOneTouchApi"

    const-string p2, "dragTouchedView failed"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private blacklist putRootViewInfoToBundle(Landroid/content/Context;Landroid/os/Bundle;Landroid/view/View;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)V
    .locals 2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputpackageName(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Ljava/lang/String;)V

    const-string v0, "key_raw_touched_point"

    invoke-static {p4}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgettouchedRawPoint(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "key_app_process_name"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/widget/SemOneTouchApi;->parseActivity(Landroid/content/Context;Landroid/view/View;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputcomponentName(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "key_window_rect"

    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    invoke-static {p4}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgetcomponentName(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p0, "key_activity_name"

    invoke-static {p4}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgetcomponentName(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager$LayoutParams;

    if-eqz p0, :cond_2

    const-string p1, "key_window_type"

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "putRootViewInfoToBundle fail: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OTCH$SemOneTouchApi"

    invoke-static {p1, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private blacklist putTouchedViewInfoToBundle(Landroid/content/Context;Landroid/os/Bundle;Landroid/view/View;Ljava/lang/Object;)V
    .locals 3

    const-string p0, "OTCH$SemOneTouchApi"

    const-string v0, "NotFoundException: "

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    instance-of v1, p4, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    check-cast p4, Ljava/lang/CharSequence;

    const-string v1, "key_touched_text"

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p4, "key_touched_widget_name"

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "key_touched_view_size"

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {p2, p4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p4

    const/4 v1, -0x1

    if-eq p4, v1, :cond_2

    const-string p4, "key_touched_widget_id"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "putTouchedViewInfoToBundle fail: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist putVideoViewInfoToBundle(Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;)V
    .locals 8

    const-string p0, "OTCH$SemOneTouchApi"

    const-string v0, "VideoView: Found TextureView but consider not a video view, class: "

    :try_start_0
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    instance-of v2, p4, Landroid/view/SurfaceView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "key_video_view_root_calss_name"

    if-eqz v2, :cond_0

    :try_start_1
    const-class p3, Landroid/view/SurfaceView;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    instance-of v2, p4, Landroid/view/TextureView;

    if-eqz v2, :cond_3

    move-object v2, p4

    check-cast v2, Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    const-wide/16 v4, -0x1

    :goto_0
    invoke-virtual {v2}, Landroid/view/TextureView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_2

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    invoke-static {p3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " timestamp: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-class p3, Landroid/view/TextureView;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string p3, "key_video_view_widget_name"

    invoke-virtual {p2, p3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Landroid/view/View;->getId()I

    move-result p3

    const/4 v0, -0x1

    if-eq p3, v0, :cond_4

    const-string p3, "key_video_view_widget_id"

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p4}, Landroid/view/View;->getId()I

    move-result p4

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "putVideoViewInfoToBundle fail: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public static blacklist pxToDp(I)I
    .locals 1

    int-to-float p0, p0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private blacklist saveBitmapFile(Landroid/content/Context;Landroid/graphics/Bitmap;)Z
    .locals 5

    const-string p0, "OTCH$SemOneTouchApi"

    const-string v0, "bitmap.compress fail: "

    const-string v1, "content://com.samsung.android.onetouch.externalEvent"

    new-instance v2, Landroid/os/CancellationSignal;

    invoke-direct {v2}, Landroid/os/CancellationSignal;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uri_save_touched_img"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/high16 v4, 0x30000000

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4, v2}, Landroid/content/ContentResolver;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez p1, :cond_1

    :try_start_1
    const-string/jumbo p2, "openFile fail"

    invoke-static {p0, p2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p1, :cond_0

    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    return v3

    :cond_1
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p2, v2, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception p2

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_7
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_1
    if-eqz p1, :cond_2

    :try_start_9
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :goto_2
    if-eqz p1, :cond_3

    :try_start_a
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    :try_start_b
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p2
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "saveBitmapFile fail: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v3
.end method

.method private blacklist sendOnLongPressedEvent(Landroid/content/Context;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/os/Bundle;
    .locals 1

    invoke-static {p2}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgetbundle(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/widget/SemOneTouchApi;->sendOnLongPressedEvent(Landroid/content/Context;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private blacklist sendOnLongPressedEvent(Landroid/content/Context;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string p0, "key_request_code"

    invoke-static {p2}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgetrequestCode(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)J

    move-result-wide v0

    invoke-virtual {p3, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p0, "key_long_press_flag"

    invoke-static {p2}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgeteventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)I

    move-result v0

    invoke-virtual {p3, p0, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "key_event_tool_type"

    invoke-static {p2}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgeteventToolType(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)I

    move-result p2

    invoke-virtual {p3, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/widget/SemOneTouchApi;->OTCH_EXTERNAL_EVENT_URI:Landroid/net/Uri;

    const-string/jumbo v0, "method_on_long_pressed"

    invoke-virtual {p1, p2, v0, p0, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo p3, "sendOnLongPressedEvent fail: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OTCH$SemOneTouchApi"

    invoke-static {p2, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private blacklist setShadowViewLayout(Landroid/view/View;)V
    .locals 2

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p0, 0x0

    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p1, p0, p0, v0, v1}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public blacklist calculateInSampleSize(Landroid/os/ParcelFileDescriptor;II)I
    .locals 2

    const/4 p0, 0x1

    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean p0, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v0, p3, :cond_1

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 p1, p1, 0x2

    :goto_1
    div-int v1, v0, p0

    if-lt v1, p3, :cond_2

    div-int v1, p1, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v1, p2, :cond_2

    mul-int/lit8 p0, p0, 0x2

    goto :goto_1

    :cond_2
    return p0

    :catch_0
    move-exception p1

    const-string p2, "OTCH$SemOneTouchApi"

    const-string p3, "calculateInSampleSize failed"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p0
.end method

.method public blacklist dispatchTouchEvent(Landroid/content/Context;Landroid/view/MotionEvent;Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mIsInitialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mIsOneTouchSettingsEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_6

    iget-object p3, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p3

    if-nez p3, :cond_1

    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v2, 0x2

    if-eq p3, v2, :cond_2

    const/4 p2, 0x3

    if-eq p3, p2, :cond_3

    const/4 p2, 0x5

    if-eq p3, p2, :cond_3

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/samsung/android/widget/SemOneTouchApi;->checkTouchedPointIsMoved(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->onLongPressCanceled(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemOneTouchApi;->clearEventState()V

    return v1

    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->onLongPressCanceled(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/samsung/android/widget/SemOneTouchApi;->clearEventState()V

    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    if-eqz p0, :cond_5

    invoke-static {p0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgeteventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_5

    return v0

    :cond_5
    return v1

    :cond_6
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/widget/SemOneTouchApi;->onLongPressStart(Landroid/content/Context;Landroid/view/MotionEvent;Landroid/view/View;)V

    :cond_7
    :goto_1
    return v1
.end method

.method public blacklist getViewContent(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/graphics/PointF;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/widget/SemOneTouchApi;->getViewContentInternal(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/graphics/PointF;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    invoke-static {p2, p1}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputfoundViewContent(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Ljava/lang/Object;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isBitmapValid(Landroid/graphics/Bitmap;Z)Z
    .locals 8

    const-string p0, "OTCH$SemOneTouchApi"

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    move v5, v0

    :goto_0
    const/16 v6, 0x64

    if-ge v5, v6, :cond_2

    invoke-virtual {v4, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    const/4 v7, 0x1

    if-eqz p2, :cond_0

    shr-int/lit8 v6, v6, 0x18

    and-int/lit16 v6, v6, 0xff

    if-eqz v6, :cond_1

    return v7

    :cond_0
    if-eq v6, v3, :cond_1

    return v7

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bitmap invalid, checkTransparency: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "isBitmapValid failed"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v0
.end method

.method public blacklist onCleared(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mCurrentLongPressEvent:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/widget/SemOneTouchApi;->onLongPressCanceled(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method blacklist queryFindViewInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "pkg"

    const-string/jumbo v1, "ver"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, p2}, Lcom/samsung/android/widget/SemOneTouchApi;->getAppVersionCode(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object v6

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string p1, "content://com.samsung.android.onetouch.externalEvent/query_find_view_info"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_7

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_7

    :cond_0
    const-string p2, "clazz"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    const-string/jumbo v2, "type"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v1, :cond_2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, "android.widget.TextView"

    :goto_1
    const-string v3, "field"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v1, :cond_3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v0

    :goto_2
    const-string v4, "level"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v1, :cond_4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string/jumbo v5, "method"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v1, :cond_5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_5
    move-object v5, v0

    new-instance v0, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/widget/SemOneTouchApi$FindViewInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p2, :cond_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object p2, v0

    if-eqz p1, :cond_6

    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_3
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    throw p2

    :cond_7
    :goto_5
    if-eqz p1, :cond_8

    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    move-object p1, v0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "sendOnLongPressedEvent fail: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OTCH$SemOneTouchApi"

    invoke-static {p2, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object p0
.end method

.method public blacklist updateSettingsValue(Landroid/content/Context;)V
    .locals 4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_ONE_TOUCH:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "otch_long_press_enabled_setting"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mIsOneTouchSettingsEnabled:Ljava/lang/Boolean;

    new-instance p1, Landroid/util/Pair;

    const-string/jumbo v1, "otch_long_press_phase_one_threshold"

    const/16 v2, 0x1b8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "otch_long_press_phase_two_threshold"

    const/16 v3, 0x32a

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi;->mOneTouchLongPressThreshold:Landroid/util/Pair;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "OTCH$SemOneTouchApi"

    const-string/jumbo v0, "updateSettingsValue failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
