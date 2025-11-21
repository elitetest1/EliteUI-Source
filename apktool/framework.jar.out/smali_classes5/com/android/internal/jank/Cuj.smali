.class public Lcom/android/internal/jank/Cuj;
.super Ljava/lang/Object;
.source "Cuj.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/jank/Cuj$CujType;
    }
.end annotation


# static fields
.field public static final blacklist CUJ_BACK_PANEL_ARROW:I = 0x58

.field public static final blacklist CUJ_BIOMETRIC_PROMPT_TRANSITION:I = 0x38

.field public static final blacklist CUJ_DEFAULT_TASK_TO_TASK_ANIMATION:I = 0x80

.field public static final blacklist CUJ_DESKTOP_MODE_APP_LAUNCH_FROM_ICON:I = 0x7c

.field public static final blacklist CUJ_DESKTOP_MODE_APP_LAUNCH_FROM_INTENT:I = 0x7b

.field public static final blacklist CUJ_DESKTOP_MODE_CLOSE_TASK:I = 0x7a

.field public static final blacklist CUJ_DESKTOP_MODE_DRAG_WINDOW:I = 0x6e

.field public static final blacklist CUJ_DESKTOP_MODE_ENTER_APP_HANDLE_DRAG_HOLD:I = 0x6b

.field public static final blacklist CUJ_DESKTOP_MODE_ENTER_APP_HANDLE_DRAG_RELEASE:I = 0x74

.field public static final blacklist CUJ_DESKTOP_MODE_ENTER_FROM_OVERVIEW_MENU:I = 0x78

.field public static final blacklist CUJ_DESKTOP_MODE_ENTER_MODE_APP_HANDLE_MENU:I = 0x70

.field public static final blacklist CUJ_DESKTOP_MODE_EXIT_MODE:I = 0x6c

.field public static final blacklist CUJ_DESKTOP_MODE_EXIT_MODE_ON_LAST_WINDOW_CLOSE:I = 0x75

.field public static final blacklist CUJ_DESKTOP_MODE_KEYBOARD_QUICK_SWITCH_APP_LAUNCH:I = 0x7d

.field public static final blacklist CUJ_DESKTOP_MODE_MAXIMIZE_WINDOW:I = 0x68

.field public static final blacklist CUJ_DESKTOP_MODE_MINIMIZE_WINDOW:I = 0x6d

.field public static final blacklist CUJ_DESKTOP_MODE_MOVE_WINDOW_TO_DISPLAY:I = 0x81

.field public static final blacklist CUJ_DESKTOP_MODE_RESIZE_WINDOW:I = 0x6a

.field public static final blacklist CUJ_DESKTOP_MODE_SNAP_RESIZE:I = 0x76

.field public static final blacklist CUJ_DESKTOP_MODE_UNMAXIMIZE_WINDOW:I = 0x77

.field public static final blacklist CUJ_FOLD_ANIM:I = 0x69

.field public static final blacklist CUJ_IME_INSETS_HIDE_ANIMATION:I = 0x51

.field public static final blacklist CUJ_IME_INSETS_SHOW_ANIMATION:I = 0x50

.field public static final blacklist CUJ_LAUNCHER_ALL_APPS_SCROLL:I = 0x1a

.field public static final blacklist CUJ_LAUNCHER_ALL_APPS_SEARCH_BACK:I = 0x5f

.field public static final blacklist CUJ_LAUNCHER_APP_CLOSE_TO_HOME:I = 0x9

.field public static final blacklist CUJ_LAUNCHER_APP_CLOSE_TO_HOME_FALLBACK:I = 0x4e

.field public static final blacklist CUJ_LAUNCHER_APP_CLOSE_TO_PIP:I = 0xa

.field public static final blacklist CUJ_LAUNCHER_APP_LAUNCH_FROM_ICON:I = 0x8

.field public static final blacklist CUJ_LAUNCHER_APP_LAUNCH_FROM_RECENTS:I = 0x7

.field public static final blacklist CUJ_LAUNCHER_APP_LAUNCH_FROM_WIDGET:I = 0x1b

.field public static final blacklist CUJ_LAUNCHER_APP_SWIPE_TO_RECENTS:I = 0x42

.field public static final blacklist CUJ_LAUNCHER_CLOSE_ALL_APPS_BACK:I = 0x59

.field public static final blacklist CUJ_LAUNCHER_CLOSE_ALL_APPS_SWIPE:I = 0x43

.field public static final blacklist CUJ_LAUNCHER_CLOSE_ALL_APPS_TO_HOME:I = 0x44

.field public static final blacklist CUJ_LAUNCHER_KEYBOARD_QUICK_SWITCH_APP_LAUNCH:I = 0x73

.field public static final blacklist CUJ_LAUNCHER_KEYBOARD_QUICK_SWITCH_CLOSE:I = 0x72

.field public static final blacklist CUJ_LAUNCHER_KEYBOARD_QUICK_SWITCH_OPEN:I = 0x71

.field public static final blacklist CUJ_LAUNCHER_LAUNCH_APP_PAIR_FROM_TASKBAR:I = 0x5c

.field public static final blacklist CUJ_LAUNCHER_LAUNCH_APP_PAIR_FROM_WORKSPACE:I = 0x5b

.field public static final blacklist CUJ_LAUNCHER_OPEN_ALL_APPS:I = 0x19

.field public static final blacklist CUJ_LAUNCHER_OPEN_SEARCH_RESULT:I = 0x47

.field public static final blacklist CUJ_LAUNCHER_OVERVIEW_TASK_DISMISS:I = 0x79

.field public static final blacklist CUJ_LAUNCHER_PRIVATE_SPACE_LOCK:I = 0x66

.field public static final blacklist CUJ_LAUNCHER_PRIVATE_SPACE_UNLOCK:I = 0x67

.field public static final blacklist CUJ_LAUNCHER_QUICK_SWITCH:I = 0xb

.field public static final blacklist CUJ_LAUNCHER_SAVE_APP_PAIR:I = 0x5d

.field public static final blacklist CUJ_LAUNCHER_SEARCH_QSB_WEB_SEARCH:I = 0x5a

.field public static final blacklist CUJ_LAUNCHER_TASKBAR_ALL_APPS_CLOSE_BACK:I = 0x60

.field public static final blacklist CUJ_LAUNCHER_TASKBAR_ALL_APPS_SEARCH_BACK:I = 0x61

.field public static final blacklist CUJ_LAUNCHER_UNFOLD_ANIM:I = 0x53

.field public static final blacklist CUJ_LAUNCHER_UNLOCK_ENTRANCE_ANIMATION:I = 0x3f

.field public static final blacklist CUJ_LAUNCHER_WIDGET_BOTTOM_SHEET_CLOSE_BACK:I = 0x64

.field public static final blacklist CUJ_LAUNCHER_WIDGET_EDU_SHEET_CLOSE_BACK:I = 0x65

.field public static final blacklist CUJ_LAUNCHER_WIDGET_PICKER_CLOSE_BACK:I = 0x62

.field public static final blacklist CUJ_LAUNCHER_WIDGET_PICKER_SEARCH_BACK:I = 0x63

.field public static final blacklist CUJ_LAUNCHER_WORK_UTILITY_VIEW_EXPAND:I = 0x7e

.field public static final blacklist CUJ_LAUNCHER_WORK_UTILITY_VIEW_SHRINK:I = 0x7f

.field public static final blacklist CUJ_LOCKSCREEN_CLOCK_MOVE_ANIMATION:I = 0x46

.field public static final blacklist CUJ_LOCKSCREEN_LAUNCH_CAMERA:I = 0x33

.field public static final blacklist CUJ_LOCKSCREEN_OCCLUSION:I = 0x40

.field public static final blacklist CUJ_LOCKSCREEN_PASSWORD_APPEAR:I = 0x11

.field public static final blacklist CUJ_LOCKSCREEN_PASSWORD_DISAPPEAR:I = 0x14

.field public static final blacklist CUJ_LOCKSCREEN_PATTERN_APPEAR:I = 0x12

.field public static final blacklist CUJ_LOCKSCREEN_PATTERN_DISAPPEAR:I = 0x15

.field public static final blacklist CUJ_LOCKSCREEN_PIN_APPEAR:I = 0x13

.field public static final blacklist CUJ_LOCKSCREEN_PIN_DISAPPEAR:I = 0x16

.field public static final blacklist CUJ_LOCKSCREEN_TRANSITION_FROM_AOD:I = 0x17

.field public static final blacklist CUJ_LOCKSCREEN_TRANSITION_TO_AOD:I = 0x18

.field public static final blacklist CUJ_LOCKSCREEN_UNLOCK_ANIMATION:I = 0x1d

.field public static final blacklist CUJ_NOTIFICATION_ADD:I = 0xe

.field public static final blacklist CUJ_NOTIFICATION_APP_START:I = 0x10

.field public static final blacklist CUJ_NOTIFICATION_HEADS_UP_APPEAR:I = 0xc

.field public static final blacklist CUJ_NOTIFICATION_HEADS_UP_DISAPPEAR:I = 0xd

.field public static final blacklist CUJ_NOTIFICATION_REMOVE:I = 0xf

.field public static final blacklist CUJ_NOTIFICATION_SHADE_EXPAND_COLLAPSE:I = 0x0

.field public static final blacklist CUJ_NOTIFICATION_SHADE_QS_EXPAND_COLLAPSE:I = 0x5

.field public static final blacklist CUJ_NOTIFICATION_SHADE_QS_SCROLL_SWIPE:I = 0x6

.field public static final blacklist CUJ_NOTIFICATION_SHADE_ROW_EXPAND:I = 0x3

.field public static final blacklist CUJ_NOTIFICATION_SHADE_ROW_SWIPE:I = 0x4

.field public static final blacklist CUJ_NOTIFICATION_SHADE_SCROLL_FLING:I = 0x2

.field public static final blacklist CUJ_ONE_HANDED_ENTER_TRANSITION:I = 0x2a

.field public static final blacklist CUJ_ONE_HANDED_EXIT_TRANSITION:I = 0x2b

.field public static final blacklist CUJ_PIP_TRANSITION:I = 0x23

.field public static final blacklist CUJ_PREDICTIVE_BACK_CROSS_ACTIVITY:I = 0x54

.field public static final blacklist CUJ_PREDICTIVE_BACK_CROSS_TASK:I = 0x55

.field public static final blacklist CUJ_PREDICTIVE_BACK_HOME:I = 0x56

.field public static final blacklist CUJ_RECENTS_SCROLLING:I = 0x41

.field public static final blacklist CUJ_SCREEN_OFF:I = 0x28

.field public static final blacklist CUJ_SCREEN_OFF_SHOW_AOD:I = 0x29

.field public static final blacklist CUJ_SETTINGS_PAGE_SCROLL:I = 0x1c

.field public static final blacklist CUJ_SETTINGS_SLIDER:I = 0x35

.field public static final blacklist CUJ_SETTINGS_TOGGLE:I = 0x39

.field public static final blacklist CUJ_SHADE_APP_LAUNCH_FROM_HISTORY_BUTTON:I = 0x1e

.field public static final blacklist CUJ_SHADE_APP_LAUNCH_FROM_MEDIA_PLAYER:I = 0x1f

.field public static final blacklist CUJ_SHADE_APP_LAUNCH_FROM_QS_TILE:I = 0x20

.field public static final blacklist CUJ_SHADE_APP_LAUNCH_FROM_SETTINGS_BUTTON:I = 0x21

.field public static final blacklist CUJ_SHADE_CLEAR_ALL:I = 0x3e

.field public static final blacklist CUJ_SHADE_DIALOG_OPEN:I = 0x3a

.field public static final blacklist CUJ_SPLASHSCREEN_AVD:I = 0x26

.field public static final blacklist CUJ_SPLASHSCREEN_EXIT_ANIM:I = 0x27

.field public static final blacklist CUJ_SPLIT_SCREEN_DOUBLE_TAP_DIVIDER:I = 0x52

.field public static final blacklist CUJ_SPLIT_SCREEN_ENTER:I = 0x31

.field public static final blacklist CUJ_SPLIT_SCREEN_EXIT:I = 0x32

.field public static final blacklist CUJ_SPLIT_SCREEN_RESIZE:I = 0x34

.field public static final blacklist CUJ_STATUS_BAR_APP_LAUNCH_FROM_CALL_CHIP:I = 0x22

.field public static final blacklist CUJ_STATUS_BAR_APP_RETURN_TO_CALL_CHIP:I = 0x82

.field public static final blacklist CUJ_STATUS_BAR_LAUNCH_DIALOG_FROM_CHIP:I = 0x6f

.field public static final blacklist CUJ_SUW_LOADING_SCREEN_FOR_STATUS:I = 0x30

.field public static final blacklist CUJ_SUW_LOADING_TO_NEXT_FLOW:I = 0x2f

.field public static final blacklist CUJ_SUW_LOADING_TO_SHOW_INFO_WITH_ACTIONS:I = 0x2d

.field public static final blacklist CUJ_SUW_SHOW_FUNCTION_SCREEN_WITH_ACTIONS:I = 0x2e

.field public static final blacklist CUJ_TAKE_SCREENSHOT:I = 0x36

.field public static final blacklist CUJ_TASKBAR_COLLAPSE:I = 0x3d

.field public static final blacklist CUJ_TASKBAR_EXPAND:I = 0x3c

.field private static final blacklist CUJ_TO_STATSD_INTERACTION_TYPE:[I

.field public static final blacklist CUJ_UNFOLD_ANIM:I = 0x2c

.field public static final blacklist CUJ_USER_DIALOG_OPEN:I = 0x3b

.field public static final blacklist CUJ_USER_SWITCH:I = 0x25

.field public static final blacklist CUJ_VOLUME_CONTROL:I = 0x37

.field public static final blacklist CUJ_WALLPAPER_TRANSITION:I = 0x24

.field static final blacklist LAST_CUJ:I = 0x82

.field static final blacklist LAST_SEC_CUJ:I = 0x2714

.field public static final blacklist MAX_LENGTH_OF_CUJ_NAME:I = 0x52

.field private static final blacklist NO_STATSD_LOGGING:I = -0x1

.field public static final blacklist SEC_CUJ_EDGE_OPEN_PANEL:I = 0x2712

.field public static final blacklist SEC_CUJ_NOTIFICATION_SHADE_QS_SHOW_DETAIL:I = 0x2711

.field public static final blacklist SEC_CUJ_RESERVED3:I = 0x2713

.field public static final blacklist SEC_CUJ_RESERVED4:I = 0x2714

.field private static final blacklist SEC_CUJ_TO_STATSD_INTERACTION_TYPE:[I

.field public static final blacklist SEC_CUJ_UNKNOWN:I = 0x2710


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 8

    const/16 v0, 0x83

    new-array v0, v0, [I

    sput-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v0, v2

    const/4 v4, 0x2

    const/4 v5, 0x3

    aput v5, v0, v4

    const/4 v6, 0x4

    aput v6, v0, v5

    const/4 v5, 0x5

    aput v5, v0, v6

    const/4 v6, 0x6

    aput v6, v0, v5

    const/4 v7, 0x7

    aput v7, v0, v6

    const/16 v6, 0x8

    aput v6, v0, v7

    const/16 v7, 0x9

    aput v7, v0, v6

    const/16 v6, 0xa

    aput v6, v0, v7

    const/16 v7, 0xb

    aput v7, v0, v6

    const/16 v6, 0xc

    aput v6, v0, v7

    const/16 v7, 0xd

    aput v7, v0, v6

    const/16 v6, 0xe

    aput v6, v0, v7

    const/16 v7, 0xf

    aput v7, v0, v6

    const/16 v6, 0x10

    aput v6, v0, v7

    const/16 v7, 0x11

    aput v7, v0, v6

    const/16 v6, 0x12

    aput v6, v0, v7

    const/16 v7, 0x13

    aput v7, v0, v6

    const/16 v6, 0x14

    aput v6, v0, v7

    const/16 v7, 0x15

    aput v7, v0, v6

    const/16 v6, 0x15

    const/16 v7, 0x16

    aput v7, v0, v6

    const/16 v6, 0x16

    const/16 v7, 0x17

    aput v7, v0, v6

    const/16 v6, 0x17

    const/16 v7, 0x18

    aput v7, v0, v6

    const/16 v6, 0x18

    const/16 v7, 0x19

    aput v7, v0, v6

    const/16 v6, 0x19

    const/16 v7, 0x1a

    aput v7, v0, v6

    const/16 v6, 0x1a

    const/16 v7, 0x1b

    aput v7, v0, v6

    const/16 v6, 0x1b

    const/16 v7, 0x1c

    aput v7, v0, v6

    const/16 v6, 0x1c

    const/16 v7, 0x1d

    aput v7, v0, v6

    const/16 v6, 0x1d

    const/16 v7, 0x1e

    aput v7, v0, v6

    const/16 v6, 0x1e

    const/16 v7, 0x1f

    aput v7, v0, v6

    const/16 v6, 0x1f

    const/16 v7, 0x20

    aput v7, v0, v6

    const/16 v6, 0x20

    const/16 v7, 0x21

    aput v7, v0, v6

    const/16 v6, 0x21

    const/16 v7, 0x22

    aput v7, v0, v6

    const/16 v6, 0x22

    const/16 v7, 0x23

    aput v7, v0, v6

    const/16 v6, 0x23

    const/16 v7, 0x24

    aput v7, v0, v6

    const/16 v6, 0x24

    const/16 v7, 0x25

    aput v7, v0, v6

    const/16 v6, 0x25

    const/16 v7, 0x26

    aput v7, v0, v6

    const/16 v6, 0x26

    const/16 v7, 0x27

    aput v7, v0, v6

    const/16 v6, 0x27

    const/16 v7, 0x28

    aput v7, v0, v6

    const/16 v6, 0x28

    const/16 v7, 0x29

    aput v7, v0, v6

    const/16 v6, 0x29

    const/16 v7, 0x2a

    aput v7, v0, v6

    const/16 v6, 0x2a

    const/16 v7, 0x2b

    aput v7, v0, v6

    const/16 v6, 0x2b

    const/16 v7, 0x2c

    aput v7, v0, v6

    const/16 v6, 0x2c

    const/16 v7, 0x2d

    aput v7, v0, v6

    const/16 v6, 0x2d

    const/16 v7, 0x2e

    aput v7, v0, v6

    const/16 v6, 0x2e

    const/16 v7, 0x2f

    aput v7, v0, v6

    const/16 v6, 0x2f

    const/16 v7, 0x30

    aput v7, v0, v6

    const/16 v6, 0x30

    const/16 v7, 0x31

    aput v7, v0, v6

    const/16 v6, 0x31

    const/16 v7, 0x32

    aput v7, v0, v6

    const/16 v6, 0x32

    const/16 v7, 0x33

    aput v7, v0, v6

    const/16 v6, 0x33

    const/16 v7, 0x34

    aput v7, v0, v6

    const/16 v6, 0x34

    const/16 v7, 0x35

    aput v7, v0, v6

    const/16 v6, 0x35

    const/16 v7, 0x36

    aput v7, v0, v6

    const/16 v6, 0x36

    const/16 v7, 0x37

    aput v7, v0, v6

    const/16 v6, 0x37

    const/16 v7, 0x38

    aput v7, v0, v6

    const/16 v6, 0x38

    const/16 v7, 0x39

    aput v7, v0, v6

    const/16 v6, 0x39

    const/16 v7, 0x3a

    aput v7, v0, v6

    const/16 v6, 0x3a

    const/16 v7, 0x3b

    aput v7, v0, v6

    const/16 v6, 0x3b

    const/16 v7, 0x3c

    aput v7, v0, v6

    const/16 v6, 0x3c

    const/16 v7, 0x3d

    aput v7, v0, v6

    const/16 v6, 0x3d

    const/16 v7, 0x3e

    aput v7, v0, v6

    const/16 v6, 0x3e

    const/16 v7, 0x3f

    aput v7, v0, v6

    const/16 v6, 0x3f

    const/16 v7, 0x40

    aput v7, v0, v6

    const/16 v6, 0x40

    const/16 v7, 0x41

    aput v7, v0, v6

    const/16 v6, 0x41

    const/16 v7, 0x42

    aput v7, v0, v6

    const/16 v6, 0x42

    const/16 v7, 0x43

    aput v7, v0, v6

    const/16 v6, 0x43

    const/16 v7, 0x44

    aput v7, v0, v6

    const/16 v6, 0x44

    const/16 v7, 0x45

    aput v7, v0, v6

    const/16 v6, 0x46

    const/16 v7, 0x47

    aput v7, v0, v6

    const/16 v6, 0x47

    const/16 v7, 0x48

    aput v7, v0, v6

    const/16 v6, 0x4e

    const/16 v7, 0x4f

    aput v7, v0, v6

    const/16 v6, 0x50

    const/16 v7, 0x51

    aput v7, v0, v6

    const/16 v6, 0x51

    const/16 v7, 0x52

    aput v7, v0, v6

    const/16 v6, 0x52

    const/16 v7, 0x53

    aput v7, v0, v6

    const/16 v6, 0x53

    const/16 v7, 0x54

    aput v7, v0, v6

    const/16 v6, 0x54

    const/16 v7, 0x55

    aput v7, v0, v6

    const/16 v6, 0x55

    const/16 v7, 0x56

    aput v7, v0, v6

    const/16 v6, 0x56

    const/16 v7, 0x57

    aput v7, v0, v6

    const/16 v6, 0x58

    const/16 v7, 0x59

    aput v7, v0, v6

    const/16 v6, 0x59

    const/16 v7, 0x5a

    aput v7, v0, v6

    const/16 v6, 0x5a

    const/16 v7, 0x5b

    aput v7, v0, v6

    const/16 v6, 0x5b

    const/16 v7, 0x5c

    aput v7, v0, v6

    const/16 v6, 0x5c

    const/16 v7, 0x5d

    aput v7, v0, v6

    const/16 v6, 0x5d

    const/16 v7, 0x5e

    aput v7, v0, v6

    const/16 v6, 0x5f

    const/16 v7, 0x5f

    aput v7, v0, v6

    const/16 v6, 0x60

    const/16 v7, 0x60

    aput v7, v0, v6

    const/16 v6, 0x61

    const/16 v7, 0x61

    aput v7, v0, v6

    const/16 v6, 0x62

    const/16 v7, 0x62

    aput v7, v0, v6

    const/16 v6, 0x63

    const/16 v7, 0x63

    aput v7, v0, v6

    const/16 v6, 0x64

    const/16 v7, 0x64

    aput v7, v0, v6

    const/16 v6, 0x65

    const/16 v7, 0x65

    aput v7, v0, v6

    const/16 v6, 0x66

    const/16 v7, 0x66

    aput v7, v0, v6

    const/16 v6, 0x67

    const/16 v7, 0x67

    aput v7, v0, v6

    const/16 v6, 0x68

    const/16 v7, 0x68

    aput v7, v0, v6

    const/16 v6, 0x69

    const/16 v7, 0x69

    aput v7, v0, v6

    const/16 v6, 0x6a

    const/16 v7, 0x6a

    aput v7, v0, v6

    const/16 v6, 0x6b

    const/16 v7, 0x6b

    aput v7, v0, v6

    const/16 v6, 0x70

    const/16 v7, 0x70

    aput v7, v0, v6

    const/16 v6, 0x6c

    const/16 v7, 0x6c

    aput v7, v0, v6

    const/16 v6, 0x6d

    const/16 v7, 0x6d

    aput v7, v0, v6

    const/16 v6, 0x6e

    const/16 v7, 0x6e

    aput v7, v0, v6

    const/16 v6, 0x6f

    const/16 v7, 0x6f

    aput v7, v0, v6

    const/16 v6, 0x71

    const/16 v7, 0x71

    aput v7, v0, v6

    const/16 v6, 0x72

    const/16 v7, 0x72

    aput v7, v0, v6

    const/16 v6, 0x73

    const/16 v7, 0x73

    aput v7, v0, v6

    const/16 v6, 0x74

    const/16 v7, 0x74

    aput v7, v0, v6

    const/16 v6, 0x75

    const/16 v7, 0x75

    aput v7, v0, v6

    const/16 v6, 0x76

    const/16 v7, 0x76

    aput v7, v0, v6

    const/16 v6, 0x77

    const/16 v7, 0x77

    aput v7, v0, v6

    const/16 v6, 0x78

    const/16 v7, 0x78

    aput v7, v0, v6

    const/16 v6, 0x79

    const/16 v7, 0x79

    aput v7, v0, v6

    const/16 v6, 0x7a

    const/16 v7, 0x7a

    aput v7, v0, v6

    const/16 v6, 0x7b

    const/16 v7, 0x7b

    aput v7, v0, v6

    const/16 v6, 0x7c

    const/16 v7, 0x7c

    aput v7, v0, v6

    const/16 v6, 0x7d

    const/16 v7, 0x7d

    aput v7, v0, v6

    const/16 v6, 0x7e

    const/16 v7, 0x7e

    aput v7, v0, v6

    const/16 v6, 0x7f

    const/16 v7, 0x7f

    aput v7, v0, v6

    const/16 v6, 0x80

    const/16 v7, 0x80

    aput v7, v0, v6

    const/16 v6, 0x81

    const/16 v7, 0x81

    aput v7, v0, v6

    const/16 v6, 0x82

    const/16 v7, 0x82

    aput v7, v0, v6

    new-array v0, v5, [I

    sput-object v0, Lcom/android/internal/jank/Cuj;->SEC_CUJ_TO_STATSD_INTERACTION_TYPE:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    aput v1, v0, v2

    const/16 v1, 0x2711

    aput v1, v0, v3

    const/16 v1, 0x2712

    aput v1, v0, v4

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getCujTypeFromInteraction(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static blacklist getNameOfCuj(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_4

    const/16 v0, 0x46

    if-eq p0, v0, :cond_3

    const/16 v0, 0x47

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2711

    if-eq p0, v0, :cond_1

    const/16 v0, 0x2712

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "STATUS_BAR_APP_RETURN_TO_CALL_CHIP"

    return-object p0

    :pswitch_1
    const-string p0, "DESKTOP_MODE_MOVE_WINDOW_TO_DISPLAY"

    return-object p0

    :pswitch_2
    const-string p0, "DEFAULT_TASK_TO_TASK_ANIMATION"

    return-object p0

    :pswitch_3
    const-string p0, "LAUNCHER_WORK_UTILITY_VIEW_SHRINK"

    return-object p0

    :pswitch_4
    const-string p0, "LAUNCHER_WORK_UTILITY_VIEW_EXPAND"

    return-object p0

    :pswitch_5
    const-string p0, "DESKTOP_MODE_KEYBOARD_QUICK_SWITCH_APP_LAUNCH"

    return-object p0

    :pswitch_6
    const-string p0, "DESKTOP_MODE_APP_LAUNCH_FROM_ICON"

    return-object p0

    :pswitch_7
    const-string p0, "DESKTOP_MODE_APP_LAUNCH_FROM_INTENT"

    return-object p0

    :pswitch_8
    const-string p0, "DESKTOP_MODE_CLOSE_TASK"

    return-object p0

    :pswitch_9
    const-string p0, "LAUNCHER_OVERVIEW_TASK_DISMISS"

    return-object p0

    :pswitch_a
    const-string p0, "DESKTOP_MODE_ENTER_FROM_OVERVIEW_MENU"

    return-object p0

    :pswitch_b
    const-string p0, "DESKTOP_MODE_UNMAXIMIZE_WINDOW"

    return-object p0

    :pswitch_c
    const-string p0, "DESKTOP_MODE_SNAP_RESIZE"

    return-object p0

    :pswitch_d
    const-string p0, "DESKTOP_MODE_EXIT_MODE_ON_LAST_WINDOW_CLOSE"

    return-object p0

    :pswitch_e
    const-string p0, "DESKTOP_MODE_ENTER_APP_HANDLE_DRAG_RELEASE"

    return-object p0

    :pswitch_f
    const-string p0, "LAUNCHER_KEYBOARD_QUICK_SWITCH_APP_LAUNCH"

    return-object p0

    :pswitch_10
    const-string p0, "LAUNCHER_KEYBOARD_QUICK_SWITCH_CLOSE"

    return-object p0

    :pswitch_11
    const-string p0, "LAUNCHER_KEYBOARD_QUICK_SWITCH_OPEN"

    return-object p0

    :pswitch_12
    const-string p0, "DESKTOP_MODE_ENTER_MODE_APP_HANDLE_MENU"

    return-object p0

    :pswitch_13
    const-string p0, "STATUS_BAR_LAUNCH_DIALOG_FROM_CHIP"

    return-object p0

    :pswitch_14
    const-string p0, "DESKTOP_MODE_DRAG_WINDOW"

    return-object p0

    :pswitch_15
    const-string p0, "DESKTOP_MODE_MINIMIZE_WINDOW"

    return-object p0

    :pswitch_16
    const-string p0, "DESKTOP_MODE_EXIT_MODE"

    return-object p0

    :pswitch_17
    const-string p0, "DESKTOP_MODE_ENTER_APP_HANDLE_DRAG_HOLD"

    return-object p0

    :pswitch_18
    const-string p0, "DESKTOP_MODE_RESIZE_WINDOW"

    return-object p0

    :pswitch_19
    const-string p0, "FOLD_ANIM"

    return-object p0

    :pswitch_1a
    const-string p0, "DESKTOP_MODE_MAXIMIZE_WINDOW"

    return-object p0

    :pswitch_1b
    const-string p0, "LAUNCHER_PRIVATE_SPACE_UNLOCK"

    return-object p0

    :pswitch_1c
    const-string p0, "LAUNCHER_PRIVATE_SPACE_LOCK"

    return-object p0

    :pswitch_1d
    const-string p0, "LAUNCHER_WIDGET_EDU_SHEET_CLOSE_BACK"

    return-object p0

    :pswitch_1e
    const-string p0, "LAUNCHER_WIDGET_BOTTOM_SHEET_CLOSE_BACK"

    return-object p0

    :pswitch_1f
    const-string p0, "LAUNCHER_WIDGET_PICKER_SEARCH_BACK"

    return-object p0

    :pswitch_20
    const-string p0, "LAUNCHER_WIDGET_PICKER_CLOSE_BACK"

    return-object p0

    :pswitch_21
    const-string p0, "LAUNCHER_TASKBAR_ALL_APPS_SEARCH_BACK"

    return-object p0

    :pswitch_22
    const-string p0, "LAUNCHER_TASKBAR_ALL_APPS_CLOSE_BACK"

    return-object p0

    :pswitch_23
    const-string p0, "LAUNCHER_ALL_APPS_SEARCH_BACK"

    return-object p0

    :pswitch_24
    const-string p0, "LAUNCHER_SAVE_APP_PAIR"

    return-object p0

    :pswitch_25
    const-string p0, "LAUNCHER_LAUNCH_APP_PAIR_FROM_TASKBAR"

    return-object p0

    :pswitch_26
    const-string p0, "LAUNCHER_LAUNCH_APP_PAIR_FROM_WORKSPACE"

    return-object p0

    :pswitch_27
    const-string p0, "LAUNCHER_SEARCH_QSB_WEB_SEARCH"

    return-object p0

    :pswitch_28
    const-string p0, "LAUNCHER_CLOSE_ALL_APPS_BACK"

    return-object p0

    :pswitch_29
    const-string p0, "BACK_PANEL_ARROW"

    return-object p0

    :pswitch_2a
    const-string p0, "PREDICTIVE_BACK_HOME"

    return-object p0

    :pswitch_2b
    const-string p0, "PREDICTIVE_BACK_CROSS_TASK"

    return-object p0

    :pswitch_2c
    const-string p0, "PREDICTIVE_BACK_CROSS_ACTIVITY"

    return-object p0

    :pswitch_2d
    const-string p0, "LAUNCHER_UNFOLD_ANIM"

    return-object p0

    :pswitch_2e
    const-string p0, "SPLIT_SCREEN_DOUBLE_TAP_DIVIDER"

    return-object p0

    :pswitch_2f
    const-string p0, "IME_INSETS_HIDE_ANIMATION"

    return-object p0

    :pswitch_30
    const-string p0, "IME_INSETS_SHOW_ANIMATION"

    return-object p0

    :pswitch_31
    const-string p0, "LAUNCHER_CLOSE_ALL_APPS_TO_HOME"

    return-object p0

    :pswitch_32
    const-string p0, "LAUNCHER_CLOSE_ALL_APPS_SWIPE"

    return-object p0

    :pswitch_33
    const-string p0, "LAUNCHER_APP_SWIPE_TO_RECENTS"

    return-object p0

    :pswitch_34
    const-string p0, "RECENTS_SCROLLING"

    return-object p0

    :pswitch_35
    const-string p0, "LOCKSCREEN_OCCLUSION"

    return-object p0

    :pswitch_36
    const-string p0, "LAUNCHER_UNLOCK_ENTRANCE_ANIMATION"

    return-object p0

    :pswitch_37
    const-string p0, "SHADE_CLEAR_ALL"

    return-object p0

    :pswitch_38
    const-string p0, "TASKBAR_COLLAPSE"

    return-object p0

    :pswitch_39
    const-string p0, "TASKBAR_EXPAND"

    return-object p0

    :pswitch_3a
    const-string p0, "USER_DIALOG_OPEN"

    return-object p0

    :pswitch_3b
    const-string p0, "SHADE_DIALOG_OPEN"

    return-object p0

    :pswitch_3c
    const-string p0, "SETTINGS_TOGGLE"

    return-object p0

    :pswitch_3d
    const-string p0, "BIOMETRIC_PROMPT_TRANSITION"

    return-object p0

    :pswitch_3e
    const-string p0, "VOLUME_CONTROL"

    return-object p0

    :pswitch_3f
    const-string p0, "TAKE_SCREENSHOT"

    return-object p0

    :pswitch_40
    const-string p0, "SETTINGS_SLIDER"

    return-object p0

    :pswitch_41
    const-string p0, "SPLIT_SCREEN_RESIZE"

    return-object p0

    :pswitch_42
    const-string p0, "LOCKSCREEN_LAUNCH_CAMERA"

    return-object p0

    :pswitch_43
    const-string p0, "SPLIT_SCREEN_EXIT"

    return-object p0

    :pswitch_44
    const-string p0, "SPLIT_SCREEN_ENTER"

    return-object p0

    :pswitch_45
    const-string p0, "SUW_LOADING_SCREEN_FOR_STATUS"

    return-object p0

    :pswitch_46
    const-string p0, "SUW_LOADING_TO_NEXT_FLOW"

    return-object p0

    :pswitch_47
    const-string p0, "SUW_SHOW_FUNCTION_SCREEN_WITH_ACTIONS"

    return-object p0

    :pswitch_48
    const-string p0, "SUW_LOADING_TO_SHOW_INFO_WITH_ACTIONS"

    return-object p0

    :pswitch_49
    const-string p0, "UNFOLD_ANIM"

    return-object p0

    :pswitch_4a
    const-string p0, "ONE_HANDED_EXIT_TRANSITION"

    return-object p0

    :pswitch_4b
    const-string p0, "ONE_HANDED_ENTER_TRANSITION"

    return-object p0

    :pswitch_4c
    const-string p0, "SCREEN_OFF_SHOW_AOD"

    return-object p0

    :pswitch_4d
    const-string p0, "SCREEN_OFF"

    return-object p0

    :pswitch_4e
    const-string p0, "SPLASHSCREEN_EXIT_ANIM"

    return-object p0

    :pswitch_4f
    const-string p0, "SPLASHSCREEN_AVD"

    return-object p0

    :pswitch_50
    const-string p0, "USER_SWITCH"

    return-object p0

    :pswitch_51
    const-string p0, "WALLPAPER_TRANSITION"

    return-object p0

    :pswitch_52
    const-string p0, "PIP_TRANSITION"

    return-object p0

    :pswitch_53
    const-string p0, "STATUS_BAR_APP_LAUNCH_FROM_CALL_CHIP"

    return-object p0

    :pswitch_54
    const-string p0, "SHADE_APP_LAUNCH_FROM_SETTINGS_BUTTON"

    return-object p0

    :pswitch_55
    const-string p0, "SHADE_APP_LAUNCH_FROM_QS_TILE"

    return-object p0

    :pswitch_56
    const-string p0, "SHADE_APP_LAUNCH_FROM_MEDIA_PLAYER"

    return-object p0

    :pswitch_57
    const-string p0, "SHADE_APP_LAUNCH_FROM_HISTORY_BUTTON"

    return-object p0

    :pswitch_58
    const-string p0, "LOCKSCREEN_UNLOCK_ANIMATION"

    return-object p0

    :pswitch_59
    const-string p0, "SETTINGS_PAGE_SCROLL"

    return-object p0

    :pswitch_5a
    const-string p0, "LAUNCHER_APP_LAUNCH_FROM_WIDGET"

    return-object p0

    :pswitch_5b
    const-string p0, "LAUNCHER_ALL_APPS_SCROLL"

    return-object p0

    :pswitch_5c
    const-string p0, "LAUNCHER_OPEN_ALL_APPS"

    return-object p0

    :pswitch_5d
    const-string p0, "LOCKSCREEN_TRANSITION_TO_AOD"

    return-object p0

    :pswitch_5e
    const-string p0, "LOCKSCREEN_TRANSITION_FROM_AOD"

    return-object p0

    :pswitch_5f
    const-string p0, "LOCKSCREEN_PIN_DISAPPEAR"

    return-object p0

    :pswitch_60
    const-string p0, "LOCKSCREEN_PATTERN_DISAPPEAR"

    return-object p0

    :pswitch_61
    const-string p0, "LOCKSCREEN_PASSWORD_DISAPPEAR"

    return-object p0

    :pswitch_62
    const-string p0, "LOCKSCREEN_PIN_APPEAR"

    return-object p0

    :pswitch_63
    const-string p0, "LOCKSCREEN_PATTERN_APPEAR"

    return-object p0

    :pswitch_64
    const-string p0, "LOCKSCREEN_PASSWORD_APPEAR"

    return-object p0

    :pswitch_65
    const-string p0, "NOTIFICATION_APP_START"

    return-object p0

    :pswitch_66
    const-string p0, "NOTIFICATION_REMOVE"

    return-object p0

    :pswitch_67
    const-string p0, "NOTIFICATION_ADD"

    return-object p0

    :pswitch_68
    const-string p0, "NOTIFICATION_HEADS_UP_DISAPPEAR"

    return-object p0

    :pswitch_69
    const-string p0, "NOTIFICATION_HEADS_UP_APPEAR"

    return-object p0

    :pswitch_6a
    const-string p0, "LAUNCHER_QUICK_SWITCH"

    return-object p0

    :pswitch_6b
    const-string p0, "LAUNCHER_APP_CLOSE_TO_PIP"

    return-object p0

    :pswitch_6c
    const-string p0, "LAUNCHER_APP_CLOSE_TO_HOME"

    return-object p0

    :pswitch_6d
    const-string p0, "LAUNCHER_APP_LAUNCH_FROM_ICON"

    return-object p0

    :pswitch_6e
    const-string p0, "LAUNCHER_APP_LAUNCH_FROM_RECENTS"

    return-object p0

    :pswitch_6f
    const-string p0, "NOTIFICATION_SHADE_QS_SCROLL_SWIPE"

    return-object p0

    :pswitch_70
    const-string p0, "NOTIFICATION_SHADE_QS_EXPAND_COLLAPSE"

    return-object p0

    :pswitch_71
    const-string p0, "NOTIFICATION_SHADE_ROW_SWIPE"

    return-object p0

    :pswitch_72
    const-string p0, "NOTIFICATION_SHADE_ROW_EXPAND"

    return-object p0

    :pswitch_73
    const-string p0, "NOTIFICATION_SHADE_SCROLL_FLING"

    return-object p0

    :cond_0
    const-string p0, "EDGE_OPEN_PANEL"

    return-object p0

    :cond_1
    const-string p0, "NOTIFICATION_SHADE_QS_SHOW_DETAIL"

    return-object p0

    :cond_2
    const-string p0, "LAUNCHER_OPEN_SEARCH_RESULT"

    return-object p0

    :cond_3
    const-string p0, "LOCKSCREEN_CLOCK_MOVE_ANIMATION"

    return-object p0

    :cond_4
    const-string p0, "LAUNCHER_APP_CLOSE_TO_HOME_FALLBACK"

    return-object p0

    :cond_5
    const-string p0, "NOTIFICATION_SHADE_EXPAND_COLLAPSE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
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
        :pswitch_32
        :pswitch_31
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x50
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x58
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5f
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

.method public static blacklist getNameOfInteraction(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/internal/jank/Cuj;->getCujTypeFromInteraction(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/jank/Cuj;->getNameOfCuj(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getStatsdInteractionType(I)I
    .locals 2

    const/16 v0, 0x2710

    if-lt p0, v0, :cond_0

    sget-object v1, Lcom/android/internal/jank/Cuj;->SEC_CUJ_TO_STATSD_INTERACTION_TYPE:[I

    sub-int/2addr p0, v0

    aget p0, v1, p0

    return p0

    :cond_0
    sget-object v0, Lcom/android/internal/jank/Cuj;->CUJ_TO_STATSD_INTERACTION_TYPE:[I

    aget p0, v0, p0

    return p0
.end method

.method public static blacklist logToStatsd(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/internal/jank/Cuj;->getStatsdInteractionType(I)I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
