.class public Lcom/android/server/knox/zt/usertrust/TouchEventView;
.super Ljava/lang/Object;
.source "TouchEventView.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/knox/zt/usertrust/TouchEventView$FasterStringBuilder;,
        Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;
    }
.end annotation


# static fields
.field private static final blacklist FLOATING_KEYBOARD_HEIGHT:Ljava/lang/String; = "floating_keyboard_height"

.field private static final blacklist FLOATING_KEYBOARD_INFO:Ljava/lang/String; = "floating_keyboard_info"

.field private static final blacklist FLOATING_KEYBOARD_LOCATION_LAND_X:Ljava/lang/String; = "floating_keyboard_location_land_x"

.field private static final blacklist FLOATING_KEYBOARD_LOCATION_LAND_Y:Ljava/lang/String; = "floating_keyboard_location_land_y"

.field private static final blacklist FLOATING_KEYBOARD_LOCATION_X:Ljava/lang/String; = "floating_keyboard_location_x"

.field private static final blacklist FLOATING_KEYBOARD_LOCATION_Y:Ljava/lang/String; = "floating_keyboard_location_y"

.field private static final blacklist FLOATING_KEYBOARD_ON:Ljava/lang/String; = "floating_keyboard_on"

.field private static final blacklist FLOATING_KEYBOARD_WIDTH:Ljava/lang/String; = "floating_keyboard_width"

.field public static final blacklist HONEY_BOARD_PROVIDER:Ljava/lang/String; = "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider"

.field private static final blacklist HONEY_DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.honeyboard/.service.HoneyBoardService"

.field public static final blacklist KEYBOARD_SETTINGS_PROVIDER:Ljava/lang/String; = "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

.field public static final blacklist KEYBOARD_SETTINGS_PROVIDER_BETA:Ljava/lang/String; = "content://com.sec.android.inputmethod.beta.implement.setting.provider.KeyboardSettingsProvider"

.field private static final blacklist SKBDN_DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

.field private static final blacklist SKBD_DEFAULT_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.inputmethod/.SamsungKeypad"

.field private static final blacklist TAG:Ljava/lang/String; = "TouchEventView"


# instance fields
.field private blacklist isTyping:Z

.field private blacklist keyboard_x:I

.field private blacklist keyboard_y:I

.field private blacklist mActivePointerId:I

.field private final blacklist mAltVelocity:Landroid/view/VelocityTracker;

.field private blacklist mAuthFactorTouchManager:Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mCurDown:Z

.field private blacklist mCurNumPointers:I

.field private blacklist mDebugmodeOn:Z

.field private blacklist mDownTime:J

.field private blacklist mIm:Landroid/hardware/input/InputManager;

.field private blacklist mMaxNumPointers:I

.field private final blacklist mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRawX:F

.field private blacklist mRawY:F

.field private final blacklist mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final blacklist mText:Lcom/android/server/knox/zt/usertrust/TouchEventView$FasterStringBuilder;

.field private final blacklist mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private blacklist mTouchMajor:F

.field private blacklist mTouchMinor:F

.field private blacklist mUpTime:J

.field private final blacklist mVelocity:Landroid/view/VelocityTracker;

.field private blacklist x_offset:F

.field private blacklist y_offset:F


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mIm:Landroid/hardware/input/InputManager;

    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    new-instance v1, Lcom/android/server/knox/zt/usertrust/TouchEventView$FasterStringBuilder;

    invoke-direct {v1}, Lcom/android/server/knox/zt/usertrust/TouchEventView$FasterStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mText:Lcom/android/server/knox/zt/usertrust/TouchEventView$FasterStringBuilder;

    iput-object v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mAltVelocity:Landroid/view/VelocityTracker;

    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mPointers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mDebugmodeOn:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mRawX:F

    iput v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mRawY:F

    iput v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mTouchMinor:F

    iput v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mTouchMajor:F

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mDownTime:J

    iput-wide v3, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mUpTime:J

    iput v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->keyboard_x:I

    iput v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->keyboard_y:I

    iput v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->x_offset:F

    iput v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->y_offset:F

    iput-boolean v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->isTyping:Z

    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    iput-object v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mIm:Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mAuthFactorTouchManager:Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;

    new-instance p1, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;

    invoke-direct {p1}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;-><init>()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mActivePointerId:I

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mVelocity:Landroid/view/VelocityTracker;

    return-void
.end method

.method private blacklist KeyboardInfo()V
    .locals 11

    const-string v0, "isFloatingKeyboardOn: "

    const-string v1, "floating_keyboard_info"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_input_method"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.sec.android.inputmethod/.SamsungKeypad"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "TouchEventView"

    if-eqz v3, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v3, "com.sec.android.inputmethod.beta/com.sec.android.inputmethod.SamsungKeypad"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.sec.android.inputmethod.beta.implement.setting.provider.KeyboardSettingsProvider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v3, "com.samsung.android.honeyboard/.service.HoneyBoardService"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://com.samsung.android.honeyboard.provider.KeyboardSettingsProvider"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v2, "floating_keyboard_on"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "floating_keyboard_location_x"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "floating_keyboard_location_y"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "floating_keyboard_location_land_x"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string v6, "floating_keyboard_location_land_y"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v7, "floating_keyboard_width"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v9, "floating_keyboard_height"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", x: "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", y: "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", landX: "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", landY: "

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->keyboard_x:I

    iput v9, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->keyboard_y:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    :cond_3
    :try_start_2
    const-string/jumbo p0, "unkown keyboard"

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p0

    :catch_0
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-void
.end method

.method private blacklist isKeyboardShown()Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mContext:Landroid/content/Context;

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result p0

    return p0
.end method

.method private blacklist isUserTypingKeyboard(FFI)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/knox/zt/usertrust/TouchEventView;->isKeyboardShown()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p3, v0, :cond_3

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    if-eq p3, v2, :cond_2

    const/4 v0, 0x3

    if-ne p3, v0, :cond_4

    :cond_2
    cmpl-float p3, p1, v3

    if-ltz p3, :cond_4

    iget p3, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->keyboard_x:I

    int-to-float p3, p3

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_4

    cmpl-float p1, p2, v3

    if-ltz p1, :cond_4

    iget p0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->keyboard_y:I

    int-to-float p0, p0

    cmpl-float p0, p0, p2

    if-ltz p0, :cond_4

    return v2

    :cond_3
    :goto_0
    cmpl-float p3, p1, v3

    if-ltz p3, :cond_4

    iget p3, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->keyboard_x:I

    int-to-float p3, p3

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_4

    cmpl-float p1, p2, v3

    if-ltz p1, :cond_4

    iget p0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->keyboard_y:I

    int-to-float p0, p0

    cmpl-float p0, p0, p2

    if-ltz p0, :cond_4

    return v2

    :cond_4
    return v1
.end method

.method private blacklist logInputDeviceState(ILjava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mIm:Landroid/hardware/input/InputManager;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object p0

    const-string v0, ": "

    const-string v1, "TouchEventView"

    if-eqz p0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist setOffset()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->x_offset:F

    const v1, -0x3b418000    # -1524.0f

    iput v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->y_offset:F

    return v0

    :cond_0
    const/4 v1, 0x1

    const/high16 v2, -0x3bea0000    # -600.0f

    if-ne v0, v1, :cond_1

    const v1, -0x3c698000    # -301.0f

    iput v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->x_offset:F

    iput v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->y_offset:F

    return v0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const v1, -0x3c4f8000    # -353.0f

    iput v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->x_offset:F

    iput v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->y_offset:F

    :cond_2
    return v0
.end method


# virtual methods
.method public whitelist onInputDeviceAdded(I)V
    .locals 1

    const-string v0, "Device Added"

    invoke-direct {p0, p1, v0}, Lcom/android/server/knox/zt/usertrust/TouchEventView;->logInputDeviceState(ILjava/lang/String;)V

    return-void
.end method

.method public whitelist onInputDeviceChanged(I)V
    .locals 1

    const-string v0, "Device Changed"

    invoke-direct {p0, p1, v0}, Lcom/android/server/knox/zt/usertrust/TouchEventView;->logInputDeviceState(ILjava/lang/String;)V

    return-void
.end method

.method public whitelist onInputDeviceRemoved(I)V
    .locals 1

    const-string v0, "Device Removed"

    invoke-direct {p0, p1, v0}, Lcom/android/server/knox/zt/usertrust/TouchEventView;->logInputDeviceState(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 14

    iget-object v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mAuthFactorTouchManager:Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;

    invoke-virtual {v0, p1}, Lcom/android/server/knox/zt/usertrust/AuthFactorTouchManager;->onPointerEvent(Landroid/view/MotionEvent;)V

    iget-boolean v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mDebugmodeOn:Z

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mRawX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mRawY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getTouchMinor()F

    move-result v0

    iput v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mTouchMinor:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getTouchMajor()F

    move-result v0

    iput v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mTouchMajor:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mUpTime:J

    invoke-direct {p0}, Lcom/android/server/knox/zt/usertrust/TouchEventView;->KeyboardInfo()V

    invoke-direct {p0}, Lcom/android/server/knox/zt/usertrust/TouchEventView;->setOffset()I

    move-result v0

    iget v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mRawX:F

    iget v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->x_offset:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mRawX:F

    iget v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mRawY:F

    iget v3, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->y_offset:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mRawY:F

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/knox/zt/usertrust/TouchEventView;->isUserTypingKeyboard(FFI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->isTyping:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mTouchMajor: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mTouchMajor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mTouchMinor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mTouchMinor:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mDownTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mDownTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mUpTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mUpTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TouchEventView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isTyping: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->isTyping:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x20

    const v4, 0xff00

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_1

    and-int/lit16 v7, v0, 0xff

    const/4 v8, 0x5

    if-ne v7, v8, :cond_9

    :cond_1
    and-int v7, v0, v4

    shr-int/lit8 v7, v7, 0x8

    if-nez v0, :cond_3

    move v8, v5

    :goto_0
    if-ge v8, v2, :cond_2

    iget-object v9, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;

    invoke-virtual {v9}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->clearTrace()V

    invoke-static {v9, v5}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmCurDown(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v6, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mCurDown:Z

    iput v5, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mCurNumPointers:I

    iput v5, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mMaxNumPointers:I

    iget-object v8, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    iget-object v8, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    :cond_3
    iget v8, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mCurNumPointers:I

    add-int/2addr v8, v6

    iput v8, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mCurNumPointers:I

    iget v9, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mMaxNumPointers:I

    if-ge v9, v8, :cond_4

    iput v8, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mMaxNumPointers:I

    :cond_4
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    :goto_1
    if-gt v2, v7, :cond_5

    new-instance v8, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;

    invoke-direct {v8}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;-><init>()V

    iget-object v9, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    iget v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mActivePointerId:I

    if-ltz v2, :cond_6

    iget-object v8, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;

    invoke-static {v2}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmCurDown(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    iput v7, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mActivePointerId:I

    :cond_7
    iget-object v2, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;

    invoke-static {v2, v6}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmCurDown(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;Z)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v7

    invoke-static {v7}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7, v3}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v7

    if-eqz v7, :cond_8

    move v7, v6

    goto :goto_2

    :cond_8
    move v7, v5

    :goto_2
    invoke-static {v2, v7}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmHasBoundingBox(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;Z)V

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    iget-object v7, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v7, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v7, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v7, :cond_a

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v7, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v7, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    move v8, v5

    :goto_3
    const/4 v9, 0x0

    if-ge v8, v7, :cond_f

    move v10, v5

    :goto_4
    if-ge v10, v2, :cond_e

    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v11

    iget-boolean v12, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mCurDown:Z

    if-eqz v12, :cond_b

    iget-object v12, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;

    goto :goto_5

    :cond_b
    move-object v11, v9

    :goto_5
    if-eqz v11, :cond_c

    invoke-static {v11}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v12

    goto :goto_6

    :cond_c
    iget-object v12, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    :goto_6
    invoke-virtual {p1, v10, v8, v12}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    if-eqz v11, :cond_d

    iget v13, v12, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v12, v12, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v11, v13, v12, v5}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->addTrace(FFZ)V

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_f
    move v7, v5

    :goto_7
    if-ge v7, v2, :cond_14

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iget-boolean v10, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mCurDown:Z

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;

    goto :goto_8

    :cond_10
    move-object v10, v9

    :goto_8
    if-eqz v10, :cond_11

    invoke-static {v10}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmCoords(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v11

    goto :goto_9

    :cond_11
    iget-object v11, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    :goto_9
    invoke-virtual {p1, v7, v11}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    if-eqz v10, :cond_13

    iget v12, v11, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v11, v11, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v10, v12, v11, v6}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->addTrace(FFZ)V

    iget-object v11, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v8}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v11

    invoke-static {v10, v11}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmXVelocity(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;F)V

    iget-object v11, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v8}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v11

    invoke-static {v10, v11}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmYVelocity(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;F)V

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "mXVelocity: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmXVelocity(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)F

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v12, ", mYVelocity: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmYVelocity(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)F

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mAltVelocity:Landroid/view/VelocityTracker;

    if-eqz v11, :cond_12

    invoke-virtual {v11, v8}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v11

    invoke-static {v10, v11}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmAltXVelocity(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;F)V

    iget-object v11, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mAltVelocity:Landroid/view/VelocityTracker;

    invoke-virtual {v11, v8}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v8

    invoke-static {v10, v8}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmAltYVelocity(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;F)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "mAltXVelocity: "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmAltXVelocity(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)F

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", mAltYVelocity: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmAltYVelocity(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)F

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    invoke-static {v10, v8}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmToolType(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;I)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "ToolType: "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmToolType(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmHasBoundingBox(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {p1, v3, v7}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v8

    invoke-static {v10, v8}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmBoundingLeft(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;F)V

    const/16 v8, 0x21

    invoke-virtual {p1, v8, v7}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v8

    invoke-static {v10, v8}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmBoundingTop(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;F)V

    const/16 v8, 0x22

    invoke-virtual {p1, v8, v7}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v8

    invoke-static {v10, v8}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmBoundingRight(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;F)V

    const/16 v8, 0x23

    invoke-virtual {p1, v8, v7}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v8

    invoke-static {v10, v8}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmBoundingBottom(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;F)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "mBoundingLeft: "

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmBoundingLeft(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)F

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", mBoundingRight: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmBoundingRight(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)F

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", mBoundingTop: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmBoundingTop(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)F

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", mBoundingBottom: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fgetmBoundingBottom(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;)F

    move-result v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    :cond_14
    const/4 v1, 0x3

    if-eq v0, v6, :cond_16

    if-eq v0, v1, :cond_16

    and-int/lit16 v2, v0, 0xff

    const/4 v3, 0x6

    if-ne v2, v3, :cond_15

    goto :goto_b

    :cond_15
    :goto_a
    return-void

    :cond_16
    :goto_b
    and-int v2, v0, v4

    shr-int/lit8 v2, v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;

    invoke-static {v4, v5}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->-$$Nest$fputmCurDown(Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;Z)V

    if-eq v0, v6, :cond_1a

    if-ne v0, v1, :cond_17

    goto :goto_d

    :cond_17
    iget v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mCurNumPointers:I

    sub-int/2addr v0, v6

    iput v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mCurNumPointers:I

    iget v0, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mActivePointerId:I

    if-ne v0, v3, :cond_19

    if-nez v2, :cond_18

    goto :goto_c

    :cond_18
    move v6, v5

    :goto_c
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mActivePointerId:I

    :cond_19
    const/high16 p0, 0x7fc00000    # Float.NaN

    invoke-virtual {v4, p0, p0, v5}, Lcom/android/server/knox/zt/usertrust/TouchEventView$PointerState;->addTrace(FFZ)V

    return-void

    :cond_1a
    :goto_d
    iput-boolean v5, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mCurDown:Z

    iput v5, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mCurNumPointers:I

    return-void
.end method

.method public blacklist setDebugmode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/knox/zt/usertrust/TouchEventView;->mDebugmodeOn:Z

    return-void
.end method
