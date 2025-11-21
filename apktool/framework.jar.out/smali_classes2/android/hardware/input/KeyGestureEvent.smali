.class public final Landroid/hardware/input/KeyGestureEvent;
.super Ljava/lang/Object;
.source "KeyGestureEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/KeyGestureEvent$Builder;,
        Landroid/hardware/input/KeyGestureEvent$KeyGestureType;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_GESTURE_COMPLETE:I = 0x2

.field public static final blacklist ACTION_GESTURE_LONG_PRESS:I = 0x3

.field public static final blacklist ACTION_GESTURE_START:I = 0x1

.field public static final blacklist DEPRECATED_KEY_GESTURE_TYPE_ACCESSIBILITY_ALL_APPS:I = 0x18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist DEPRECATED_KEY_GESTURE_TYPE_TV_ACCESSIBILITY_SHORTCUT_CHORD:I = 0x3a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist FLAG_CANCELLED:I = 0x1

.field public static final blacklist KEY_GESTURE_TYPE_ACCESSIBILITY_DIRECT_ACCESS:I = 0x3e9

.field public static final blacklist KEY_GESTURE_TYPE_ACCESSIBILITY_SHORTCUT:I = 0x3c

.field public static final blacklist KEY_GESTURE_TYPE_ACCESSIBILITY_SHORTCUT_CHORD:I = 0x37

.field public static final blacklist KEY_GESTURE_TYPE_ACTIVATE_SELECT_TO_SPEAK:I = 0x49

.field public static final blacklist KEY_GESTURE_TYPE_ALL_APPS:I = 0x15

.field public static final blacklist KEY_GESTURE_TYPE_APP_SWITCH:I = 0x4

.field public static final blacklist KEY_GESTURE_TYPE_BACK:I = 0x3

.field public static final blacklist KEY_GESTURE_TYPE_BRIGHTNESS_DOWN:I = 0xe

.field public static final blacklist KEY_GESTURE_TYPE_BRIGHTNESS_UP:I = 0xd

.field public static final blacklist KEY_GESTURE_TYPE_CHANGE_SPLITSCREEN_FOCUS_LEFT:I = 0x1d

.field public static final blacklist KEY_GESTURE_TYPE_CHANGE_SPLITSCREEN_FOCUS_RIGHT:I = 0x1e

.field public static final blacklist KEY_GESTURE_TYPE_CLOSE_ALL_DIALOGS:I = 0x3d

.field public static final blacklist KEY_GESTURE_TYPE_DESKTOP_MODE:I = 0x34

.field public static final blacklist KEY_GESTURE_TYPE_GLOBAL_ACTIONS:I = 0x39

.field public static final blacklist KEY_GESTURE_TYPE_HOME:I = 0x1

.field public static final blacklist KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_DOWN:I = 0x10

.field public static final blacklist KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_TOGGLE:I = 0x11

.field public static final blacklist KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_UP:I = 0xf

.field public static final blacklist KEY_GESTURE_TYPE_LANGUAGE_SWITCH:I = 0x17

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_APPLICATION:I = 0x33

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_ASSISTANT:I = 0x5

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_BROWSER:I = 0x27

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CALCULATOR:I = 0x2b

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CALENDAR:I = 0x2a

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CONTACTS:I = 0x29

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_EMAIL:I = 0x28

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_FILES:I = 0x30

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_FITNESS:I = 0x32

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_GALLERY:I = 0x2f

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MAPS:I = 0x2d

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MESSAGING:I = 0x2e

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MUSIC:I = 0x2c

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_DEFAULT_WEATHER:I = 0x31

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_SEARCH:I = 0x16

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_SYSTEM_SETTINGS:I = 0x7

.field public static final blacklist KEY_GESTURE_TYPE_LAUNCH_VOICE_ASSISTANT:I = 0x6

.field public static final blacklist KEY_GESTURE_TYPE_LOCK_SCREEN:I = 0x20

.field public static final blacklist KEY_GESTURE_TYPE_LOCK_SCREEN_WITH_SHIFT:I = 0x3ea

.field public static final blacklist KEY_GESTURE_TYPE_LOCK_TASK_MODE_PINNED_RECENT_BACK:I = 0x3eb

.field public static final blacklist KEY_GESTURE_TYPE_MAXIMIZE_FREEFORM_WINDOW:I = 0x4a

.field public static final blacklist KEY_GESTURE_TYPE_MEDIA_KEY:I = 0x26

.field public static final blacklist KEY_GESTURE_TYPE_MINIMIZE_FREEFORM_WINDOW:I = 0x46

.field public static final blacklist KEY_GESTURE_TYPE_MOVE_TO_NEXT_DISPLAY:I = 0x3e

.field public static final blacklist KEY_GESTURE_TYPE_MULTI_WINDOW_NAVIGATION:I = 0x35

.field public static final blacklist KEY_GESTURE_TYPE_OPEN_NOTES:I = 0x21

.field public static final blacklist KEY_GESTURE_TYPE_OPEN_SHORTCUT_HELPER:I = 0xc

.field public static final blacklist KEY_GESTURE_TYPE_RECENT_APPS:I = 0x2

.field public static final blacklist KEY_GESTURE_TYPE_RECENT_APPS_SWITCHER:I = 0x36

.field public static final blacklist KEY_GESTURE_TYPE_RINGER_TOGGLE_CHORD:I = 0x38

.field public static final blacklist KEY_GESTURE_TYPE_SCREENSHOT_CHORD:I = 0xb

.field public static final blacklist KEY_GESTURE_TYPE_SLEEP:I = 0x24

.field public static final blacklist KEY_GESTURE_TYPE_SNAP_LEFT_FREEFORM_WINDOW:I = 0x44

.field public static final blacklist KEY_GESTURE_TYPE_SNAP_RIGHT_FREEFORM_WINDOW:I = 0x45

.field public static final blacklist KEY_GESTURE_TYPE_SPLIT_SCREEN_NAVIGATION_LEFT:I = 0x1b

.field public static final blacklist KEY_GESTURE_TYPE_SPLIT_SCREEN_NAVIGATION_RIGHT:I = 0x1c

.field public static final blacklist KEY_GESTURE_TYPE_SYSTEM_MUTE:I = 0x1a

.field public static final blacklist KEY_GESTURE_TYPE_SYSTEM_NAVIGATION:I = 0x23

.field public static final blacklist KEY_GESTURE_TYPE_SYSTEM_RESERVED:I = -0x1

.field public static final blacklist KEY_GESTURE_TYPE_TAKE_SCREENSHOT:I = 0xa

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_BOUNCE_KEYS:I = 0x41

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_CAPS_LOCK:I = 0x19

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_DO_NOT_DISTURB:I = 0x4b

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_MAGNIFICATION:I = 0x48

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_MAXIMIZE_FREEFORM_WINDOW:I = 0x47

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_MOUSE_KEYS:I = 0x43

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_NOTIFICATION_PANEL:I = 0x8

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_POWER:I = 0x22

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_SLOW_KEYS:I = 0x42

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_STICKY_KEYS:I = 0x40

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_TALKBACK:I = 0x3f

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_TASKBAR:I = 0x9

.field public static final blacklist KEY_GESTURE_TYPE_TOGGLE_VOICE_ACCESS:I = 0x4c

.field public static final blacklist KEY_GESTURE_TYPE_TRIGGER_BUG_REPORT:I = 0x1f

.field public static final blacklist KEY_GESTURE_TYPE_TV_TRIGGER_BUG_REPORT:I = 0x3b

.field public static final blacklist KEY_GESTURE_TYPE_UNSPECIFIED:I = 0x0

.field public static final blacklist KEY_GESTURE_TYPE_VOLUME_DOWN:I = 0x13

.field public static final blacklist KEY_GESTURE_TYPE_VOLUME_MUTE:I = 0x14

.field public static final blacklist KEY_GESTURE_TYPE_VOLUME_UP:I = 0x12

.field public static final blacklist KEY_GESTURE_TYPE_WAKEUP:I = 0x25

.field private static final blacklist LOG_EVENT_UNSPECIFIED:I


# instance fields
.field private blacklist mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;


# direct methods
.method public constructor blacklist <init>(Landroid/hardware/input/AidlKeyGestureEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    return-void
.end method

.method private static blacklist getLogEventFromLaunchAppData(Landroid/hardware/input/AppLaunchData;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    instance-of v0, p0, Landroid/hardware/input/AppLaunchData$CategoryData;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/hardware/input/AppLaunchData$CategoryData;

    invoke-virtual {p0}, Landroid/hardware/input/AppLaunchData$CategoryData;->getCategory()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/input/KeyGestureEvent;->getLogEventFromSelectorCategory(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_1
    instance-of v0, p0, Landroid/hardware/input/AppLaunchData$RoleData;

    if-eqz v0, :cond_2

    check-cast p0, Landroid/hardware/input/AppLaunchData$RoleData;

    invoke-virtual {p0}, Landroid/hardware/input/AppLaunchData$RoleData;->getRole()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/input/KeyGestureEvent;->getLogEventFromRole(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_2
    instance-of p0, p0, Landroid/hardware/input/AppLaunchData$ComponentData;

    if-eqz p0, :cond_3

    const/16 p0, 0x2f

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "AppLaunchData type is invalid!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static blacklist getLogEventFromRole(Ljava/lang/String;)I
    .locals 1

    const-string v0, "android.app.role.BROWSER"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p0, 0x23

    return p0

    :cond_0
    const-string v0, "android.app.role.SMS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x2a

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist getLogEventFromSelectorCategory(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "android.intent.category.APP_GALLERY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0xb

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "android.intent.category.APP_FITNESS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "android.intent.category.APP_CALENDAR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "android.intent.category.APP_CALCULATOR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "android.intent.category.APP_MUSIC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_5
    const-string v0, "android.intent.category.APP_FILES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_6
    const-string v0, "android.intent.category.APP_EMAIL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_7
    const-string v0, "android.intent.category.APP_CONTACTS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_8
    const-string v0, "android.intent.category.APP_MESSAGING"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_9
    const-string v0, "android.intent.category.APP_WEATHER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_a
    const-string v0, "android.intent.category.APP_BROWSER"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_b
    const-string v0, "android.intent.category.APP_MAPS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    const/16 p0, 0x2b

    return p0

    :pswitch_1
    const/16 p0, 0x2e

    return p0

    :pswitch_2
    const/16 p0, 0x26

    return p0

    :pswitch_3
    const/16 p0, 0x27

    return p0

    :pswitch_4
    const/16 p0, 0x28

    return p0

    :pswitch_5
    const/16 p0, 0x2c

    return p0

    :pswitch_6
    const/16 p0, 0x24

    return p0

    :pswitch_7
    const/16 p0, 0x25

    return p0

    :pswitch_8
    const/16 p0, 0x2a

    return p0

    :pswitch_9
    const/16 p0, 0x2d

    return p0

    :pswitch_a
    const/16 p0, 0x23

    return p0

    :pswitch_b
    const/16 p0, 0x29

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ae0672e -> :sswitch_b
        -0x70f45113 -> :sswitch_a
        -0x31074447 -> :sswitch_9
        -0x20da2677 -> :sswitch_8
        0x19b1550e -> :sswitch_7
        0x1e6800a1 -> :sswitch_6
        0x1e746f7c -> :sswitch_5
        0x1edca32a -> :sswitch_4
        0x267d18fd -> :sswitch_3
        0x30e2eff9 -> :sswitch_2
        0x538b29ad -> :sswitch_1
        0x7a58fb17 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public static blacklist isVisibleBackgrounduserAllowedGesture(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/16 v0, 0x24

    if-eq p0, v0, :cond_0

    const/16 v0, 0x25

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist keyGestureTypeToLogEvent(I)I
    .locals 1

    const/16 v0, 0x3e

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/16 p0, 0x31

    return p0

    :pswitch_1
    const/16 p0, 0x30

    return p0

    :pswitch_2
    const/16 p0, 0x2f

    return p0

    :pswitch_3
    const/16 p0, 0x2e

    return p0

    :pswitch_4
    const/16 p0, 0x2d

    return p0

    :pswitch_5
    const/16 p0, 0x2c

    return p0

    :pswitch_6
    const/16 p0, 0x2b

    return p0

    :pswitch_7
    const/16 p0, 0x2a

    return p0

    :pswitch_8
    const/16 p0, 0x29

    return p0

    :pswitch_9
    const/16 p0, 0x28

    return p0

    :pswitch_a
    const/16 p0, 0x27

    return p0

    :pswitch_b
    const/16 p0, 0x26

    return p0

    :pswitch_c
    const/16 p0, 0x25

    return p0

    :pswitch_d
    const/16 p0, 0x24

    return p0

    :pswitch_e
    const/16 p0, 0x23

    return p0

    :pswitch_f
    const/16 p0, 0x22

    return p0

    :pswitch_10
    const/16 p0, 0x21

    return p0

    :pswitch_11
    const/16 p0, 0x20

    return p0

    :pswitch_12
    const/16 p0, 0x1f

    return p0

    :pswitch_13
    const/16 p0, 0x1e

    return p0

    :pswitch_14
    const/16 p0, 0x1d

    return p0

    :pswitch_15
    const/16 p0, 0x1c

    return p0

    :pswitch_16
    const/16 p0, 0x1b

    return p0

    :pswitch_17
    const/16 p0, 0x32

    return p0

    :pswitch_18
    const/16 p0, 0x1a

    return p0

    :pswitch_19
    const/16 p0, 0x19

    return p0

    :pswitch_1a
    const/16 p0, 0x18

    return p0

    :pswitch_1b
    const/16 p0, 0x16

    return p0

    :pswitch_1c
    const/16 p0, 0x15

    return p0

    :pswitch_1d
    const/16 p0, 0x14

    return p0

    :pswitch_1e
    const/16 p0, 0x13

    return p0

    :pswitch_1f
    const/16 p0, 0x12

    return p0

    :pswitch_20
    const/16 p0, 0x11

    return p0

    :pswitch_21
    const/16 p0, 0x10

    return p0

    :pswitch_22
    const/16 p0, 0xf

    return p0

    :pswitch_23
    const/16 p0, 0xe

    return p0

    :pswitch_24
    const/16 p0, 0xd

    return p0

    :pswitch_25
    const/16 p0, 0xc

    return p0

    :pswitch_26
    const/16 p0, 0xb

    return p0

    :pswitch_27
    const/16 p0, 0xa

    return p0

    :pswitch_28
    const/16 p0, 0x9

    return p0

    :pswitch_29
    const/16 p0, 0x8

    return p0

    :pswitch_2a
    const/4 p0, 0x7

    return p0

    :pswitch_2b
    const/4 p0, 0x6

    return p0

    :pswitch_2c
    const/4 p0, 0x5

    return p0

    :pswitch_2d
    const/4 p0, 0x4

    return p0

    :pswitch_2e
    const/4 p0, 0x3

    return p0

    :pswitch_2f
    const/4 p0, 0x2

    return p0

    :pswitch_30
    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 p0, 0x33

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2f
    .end packed-switch
.end method

.method private static blacklist keyGestureTypeToString(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x3ea

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3eb

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_VOICE_ACCESS"

    return-object p0

    :pswitch_1
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_DO_NOT_DISTURB"

    return-object p0

    :pswitch_2
    const-string p0, "KEY_GESTURE_TYPE_MAXIMIZE_FREEFORM_WINDOW"

    return-object p0

    :pswitch_3
    const-string p0, "KEY_GESTURE_TYPE_ACTIVATE_SELECT_TO_SPEAK"

    return-object p0

    :pswitch_4
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_MAGNIFICATION"

    return-object p0

    :pswitch_5
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_MAXIMIZE_FREEFORM_WINDOW"

    return-object p0

    :pswitch_6
    const-string p0, "KEY_GESTURE_TYPE_MINIMIZE_FREEFORM_WINDOW"

    return-object p0

    :pswitch_7
    const-string p0, "KEY_GESTURE_TYPE_SNAP_RIGHT_FREEFORM_WINDOW"

    return-object p0

    :pswitch_8
    const-string p0, "KEY_GESTURE_TYPE_SNAP_LEFT_FREEFORM_WINDOW"

    return-object p0

    :pswitch_9
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_MOUSE_KEYS"

    return-object p0

    :pswitch_a
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_SLOW_KEYS"

    return-object p0

    :pswitch_b
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_BOUNCE_KEYS"

    return-object p0

    :pswitch_c
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_STICKY_KEYS"

    return-object p0

    :pswitch_d
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_TALKBACK"

    return-object p0

    :pswitch_e
    const-string p0, "KEY_GESTURE_TYPE_MOVE_TO_NEXT_DISPLAY"

    return-object p0

    :pswitch_f
    const-string p0, "KEY_GESTURE_TYPE_CLOSE_ALL_DIALOGS"

    return-object p0

    :pswitch_10
    const-string p0, "KEY_GESTURE_TYPE_ACCESSIBILITY_SHORTCUT"

    return-object p0

    :pswitch_11
    const-string p0, "KEY_GESTURE_TYPE_TV_TRIGGER_BUG_REPORT"

    return-object p0

    :pswitch_12
    const-string p0, "KEY_GESTURE_TYPE_GLOBAL_ACTIONS"

    return-object p0

    :pswitch_13
    const-string p0, "KEY_GESTURE_TYPE_RINGER_TOGGLE_CHORD"

    return-object p0

    :pswitch_14
    const-string p0, "KEY_GESTURE_TYPE_ACCESSIBILITY_SHORTCUT_CHORD"

    return-object p0

    :pswitch_15
    const-string p0, "KEY_GESTURE_TYPE_RECENT_APPS_SWITCHER"

    return-object p0

    :pswitch_16
    const-string p0, "KEY_GESTURE_TYPE_MULTI_WINDOW_NAVIGATION"

    return-object p0

    :pswitch_17
    const-string p0, "KEY_GESTURE_TYPE_DESKTOP_MODE"

    return-object p0

    :pswitch_18
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_APPLICATION"

    return-object p0

    :pswitch_19
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_FITNESS"

    return-object p0

    :pswitch_1a
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_WEATHER"

    return-object p0

    :pswitch_1b
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_FILES"

    return-object p0

    :pswitch_1c
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_GALLERY"

    return-object p0

    :pswitch_1d
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MESSAGING"

    return-object p0

    :pswitch_1e
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MAPS"

    return-object p0

    :pswitch_1f
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_MUSIC"

    return-object p0

    :pswitch_20
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CALCULATOR"

    return-object p0

    :pswitch_21
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CALENDAR"

    return-object p0

    :pswitch_22
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_CONTACTS"

    return-object p0

    :pswitch_23
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_EMAIL"

    return-object p0

    :pswitch_24
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_DEFAULT_BROWSER"

    return-object p0

    :pswitch_25
    const-string p0, "KEY_GESTURE_TYPE_MEDIA_KEY"

    return-object p0

    :pswitch_26
    const-string p0, "KEY_GESTURE_TYPE_WAKEUP"

    return-object p0

    :pswitch_27
    const-string p0, "KEY_GESTURE_TYPE_SLEEP"

    return-object p0

    :pswitch_28
    const-string p0, "KEY_GESTURE_TYPE_SYSTEM_NAVIGATION"

    return-object p0

    :pswitch_29
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_POWER"

    return-object p0

    :pswitch_2a
    const-string p0, "KEY_GESTURE_TYPE_OPEN_NOTES"

    return-object p0

    :pswitch_2b
    const-string p0, "KEY_GESTURE_TYPE_LOCK_SCREEN"

    return-object p0

    :pswitch_2c
    const-string p0, "KEY_GESTURE_TYPE_TRIGGER_BUG_REPORT"

    return-object p0

    :pswitch_2d
    const-string p0, "KEY_GESTURE_TYPE_CHANGE_SPLITSCREEN_FOCUS_RIGHT"

    return-object p0

    :pswitch_2e
    const-string p0, "KEY_GESTURE_TYPE_CHANGE_SPLITSCREEN_FOCUS_LEFT"

    return-object p0

    :pswitch_2f
    const-string p0, "KEY_GESTURE_TYPE_SPLIT_SCREEN_NAVIGATION_RIGHT"

    return-object p0

    :pswitch_30
    const-string p0, "KEY_GESTURE_TYPE_SPLIT_SCREEN_NAVIGATION_LEFT"

    return-object p0

    :pswitch_31
    const-string p0, "KEY_GESTURE_TYPE_SYSTEM_MUTE"

    return-object p0

    :pswitch_32
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_CAPS_LOCK"

    return-object p0

    :pswitch_33
    const-string p0, "KEY_GESTURE_TYPE_LANGUAGE_SWITCH"

    return-object p0

    :pswitch_34
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_SEARCH"

    return-object p0

    :pswitch_35
    const-string p0, "KEY_GESTURE_TYPE_ALL_APPS"

    return-object p0

    :pswitch_36
    const-string p0, "KEY_GESTURE_TYPE_VOLUME_MUTE"

    return-object p0

    :pswitch_37
    const-string p0, "KEY_GESTURE_TYPE_VOLUME_DOWN"

    return-object p0

    :pswitch_38
    const-string p0, "KEY_GESTURE_TYPE_VOLUME_UP"

    return-object p0

    :pswitch_39
    const-string p0, "KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_TOGGLE"

    return-object p0

    :pswitch_3a
    const-string p0, "KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_DOWN"

    return-object p0

    :pswitch_3b
    const-string p0, "KEY_GESTURE_TYPE_KEYBOARD_BACKLIGHT_UP"

    return-object p0

    :pswitch_3c
    const-string p0, "KEY_GESTURE_TYPE_BRIGHTNESS_DOWN"

    return-object p0

    :pswitch_3d
    const-string p0, "KEY_GESTURE_TYPE_BRIGHTNESS_UP"

    return-object p0

    :pswitch_3e
    const-string p0, "KEY_GESTURE_TYPE_OPEN_SHORTCUT_HELPER"

    return-object p0

    :pswitch_3f
    const-string p0, "KEY_GESTURE_TYPE_SCREENSHOT_CHORD"

    return-object p0

    :pswitch_40
    const-string p0, "KEY_GESTURE_TYPE_TAKE_SCREENSHOT"

    return-object p0

    :pswitch_41
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_TASKBAR"

    return-object p0

    :pswitch_42
    const-string p0, "KEY_GESTURE_TYPE_TOGGLE_NOTIFICATION_PANEL"

    return-object p0

    :pswitch_43
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_SYSTEM_SETTINGS"

    return-object p0

    :pswitch_44
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_VOICE_ASSISTANT"

    return-object p0

    :pswitch_45
    const-string p0, "KEY_GESTURE_TYPE_LAUNCH_ASSISTANT"

    return-object p0

    :pswitch_46
    const-string p0, "KEY_GESTURE_TYPE_APP_SWITCH"

    return-object p0

    :pswitch_47
    const-string p0, "KEY_GESTURE_TYPE_BACK"

    return-object p0

    :pswitch_48
    const-string p0, "KEY_GESTURE_TYPE_RECENT_APPS"

    return-object p0

    :pswitch_49
    const-string p0, "KEY_GESTURE_TYPE_HOME"

    return-object p0

    :pswitch_4a
    const-string p0, "KEY_GESTURE_TYPE_UNSPECIFIED"

    return-object p0

    :pswitch_4b
    const-string p0, "KEY_GESTURE_TYPE_SYSTEM_RESERVED"

    return-object p0

    :cond_0
    const-string p0, "KEY_GESTURE_TYPE_LOCK_TASK_MODE_PINNED_RECENT_BACK"

    return-object p0

    :cond_1
    const-string p0, "KEY_GESTURE_TYPE_LOCK_SCREEN_WITH_SHIFT"

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3b
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Landroid/hardware/input/KeyGestureEvent;

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    iget-object v3, p1, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    iget-object v3, p1, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    iget-object v3, p1, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    iget-object v3, p1, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    iget-object v3, p1, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    iget-object v3, p1, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    iget-object v3, p1, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v3, v3, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object p0, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    iget-object p1, p1, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object p1, p1, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public blacklist getAction()I
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget p0, p0, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    return p0
.end method

.method public blacklist getAppLaunchData()Landroid/hardware/input/AppLaunchData;
    .locals 3

    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    const/16 v1, 0x33

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object p0, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Landroid/hardware/input/AppLaunchData;->createLaunchData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/input/AppLaunchData;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDeviceId()I
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget p0, p0, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    return p0
.end method

.method public blacklist getDisplayId()I
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget p0, p0, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    return p0
.end method

.method public blacklist getEventTimes()[J
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object p0, p0, Landroid/hardware/input/AidlKeyGestureEvent;->eventTimes:[J

    return-object p0
.end method

.method public blacklist getFlags()I
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget p0, p0, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    return p0
.end method

.method public blacklist getKeyGestureType()I
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget p0, p0, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    return p0
.end method

.method public blacklist getKeycodes()[I
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object p0, p0, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    return-object p0
.end method

.method public blacklist getLogEvent()I
    .locals 2

    invoke-virtual {p0}, Landroid/hardware/input/KeyGestureEvent;->getKeyGestureType()I

    move-result v0

    const/16 v1, 0x33

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/hardware/input/KeyGestureEvent;->getAppLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object p0

    invoke-static {p0}, Landroid/hardware/input/KeyGestureEvent;->getLogEventFromLaunchAppData(Landroid/hardware/input/AppLaunchData;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/input/KeyGestureEvent;->getKeyGestureType()I

    move-result p0

    invoke-static {p0}, Landroid/hardware/input/KeyGestureEvent;->keyGestureTypeToLogEvent(I)I

    move-result p0

    return p0
.end method

.method public blacklist getModifierState()I
    .locals 0

    iget-object p0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget p0, p0, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    return p0
.end method

.method public blacklist hasModifiers(I)Z
    .locals 0

    invoke-virtual {p0}, Landroid/hardware/input/KeyGestureEvent;->getModifierState()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 4

    iget-object v0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v0, v0, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([I)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchCategory:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchRole:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v2, v2, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object p0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object p0, p0, Landroid/hardware/input/AidlKeyGestureEvent;->appLaunchClassName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_3
    add-int/2addr v0, v3

    return v0
.end method

.method public blacklist isCancelled()Z
    .locals 1

    iget-object p0, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget p0, p0, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "KeyGestureEvent { deviceId = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->deviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keycodes = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget-object v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->keycodes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", modifierState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->modifierState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyGestureType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->gestureType:I

    invoke-static {v1}, Landroid/hardware/input/KeyGestureEvent;->keyGestureTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", displayId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/input/KeyGestureEvent;->mKeyGestureEvent:Landroid/hardware/input/AidlKeyGestureEvent;

    iget v1, v1, Landroid/hardware/input/AidlKeyGestureEvent;->flags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", appLaunchData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/input/KeyGestureEvent;->getAppLaunchData()Landroid/hardware/input/AppLaunchData;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
