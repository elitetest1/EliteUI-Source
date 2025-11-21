.class public final Landroid/view/MotionEvent;
.super Landroid/view/InputEvent;
.source "MotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MotionEvent$PointerCoords;,
        Landroid/view/MotionEvent$PointerProperties;,
        Landroid/view/MotionEvent$ToolType;,
        Landroid/view/MotionEvent$Classification;,
        Landroid/view/MotionEvent$Button;,
        Landroid/view/MotionEvent$Axis;,
        Landroid/view/MotionEvent$Flag;,
        Landroid/view/MotionEvent$ActionMasked;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_BUTTON_PRESS:I = 0xb

.field public static final whitelist ACTION_BUTTON_RELEASE:I = 0xc

.field public static final whitelist ACTION_CANCEL:I = 0x3

.field public static final whitelist ACTION_DOWN:I = 0x0

.field public static final whitelist ACTION_HOVER_ENTER:I = 0x9

.field public static final whitelist ACTION_HOVER_EXIT:I = 0xa

.field public static final whitelist ACTION_HOVER_MOVE:I = 0x7

.field public static final whitelist ACTION_MASK:I = 0xff

.field public static final whitelist ACTION_MOVE:I = 0x2

.field public static final whitelist ACTION_OUTSIDE:I = 0x4

.field public static final blacklist ACTION_PEN_CANCEL:I = 0xd6

.field public static final blacklist ACTION_PEN_DOWN:I = 0xd3

.field public static final blacklist ACTION_PEN_MOVE:I = 0xd5

.field public static final blacklist ACTION_PEN_UP:I = 0xd4

.field public static final whitelist ACTION_POINTER_1_DOWN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_1_UP:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_2_DOWN:I = 0x105
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_2_UP:I = 0x106
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_3_DOWN:I = 0x205
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_3_UP:I = 0x206
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_DOWN:I = 0x5

.field public static final whitelist ACTION_POINTER_ID_MASK:I = 0xff00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_ID_SHIFT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final whitelist ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final whitelist ACTION_POINTER_UP:I = 0x6

.field public static final whitelist ACTION_SCROLL:I = 0x8

.field public static final whitelist ACTION_UP:I = 0x1

.field public static final whitelist AXIS_BRAKE:I = 0x17

.field public static final whitelist AXIS_DISTANCE:I = 0x18

.field public static final blacklist AXIS_DPI_X:I = 0x3c

.field public static final blacklist AXIS_DPI_Y:I = 0x3d

.field public static final whitelist AXIS_GAS:I = 0x16

.field public static final whitelist AXIS_GENERIC_1:I = 0x20

.field public static final whitelist AXIS_GENERIC_10:I = 0x29

.field public static final whitelist AXIS_GENERIC_11:I = 0x2a

.field public static final whitelist AXIS_GENERIC_12:I = 0x2b

.field public static final whitelist AXIS_GENERIC_13:I = 0x2c

.field public static final whitelist AXIS_GENERIC_14:I = 0x2d

.field public static final whitelist AXIS_GENERIC_15:I = 0x2e

.field public static final whitelist AXIS_GENERIC_16:I = 0x2f

.field public static final whitelist AXIS_GENERIC_2:I = 0x21

.field public static final whitelist AXIS_GENERIC_3:I = 0x22

.field public static final whitelist AXIS_GENERIC_4:I = 0x23

.field public static final whitelist AXIS_GENERIC_5:I = 0x24

.field public static final whitelist AXIS_GENERIC_6:I = 0x25

.field public static final whitelist AXIS_GENERIC_7:I = 0x26

.field public static final whitelist AXIS_GENERIC_8:I = 0x27

.field public static final whitelist AXIS_GENERIC_9:I = 0x28

.field public static final whitelist AXIS_GESTURE_PINCH_SCALE_FACTOR:I = 0x34

.field public static final whitelist AXIS_GESTURE_SCROLL_X_DISTANCE:I = 0x32

.field public static final whitelist AXIS_GESTURE_SCROLL_Y_DISTANCE:I = 0x33

.field public static final blacklist AXIS_GESTURE_SWIPE_FINGER_COUNT:I = 0x35

.field public static final whitelist AXIS_GESTURE_X_OFFSET:I = 0x30

.field public static final whitelist AXIS_GESTURE_Y_OFFSET:I = 0x31

.field public static final whitelist AXIS_HAT_X:I = 0xf

.field public static final whitelist AXIS_HAT_Y:I = 0x10

.field public static final whitelist AXIS_HSCROLL:I = 0xa

.field public static final whitelist AXIS_LTRIGGER:I = 0x11

.field public static final whitelist AXIS_ORIENTATION:I = 0x8

.field public static final blacklist AXIS_PALM:I = 0x37

.field public static final blacklist AXIS_PREDICTED_X_OFFSET:I = 0x3a

.field public static final blacklist AXIS_PREDICTED_Y_OFFSET:I = 0x3b

.field public static final whitelist AXIS_PRESSURE:I = 0x2

.field public static final whitelist AXIS_RELATIVE_X:I = 0x1b

.field public static final whitelist AXIS_RELATIVE_Y:I = 0x1c

.field public static final whitelist AXIS_RTRIGGER:I = 0x12

.field public static final whitelist AXIS_RUDDER:I = 0x14

.field public static final whitelist AXIS_RX:I = 0xc

.field public static final whitelist AXIS_RY:I = 0xd

.field public static final whitelist AXIS_RZ:I = 0xe

.field public static final whitelist AXIS_SCROLL:I = 0x1a

.field public static final whitelist AXIS_SIZE:I = 0x3

.field private static final greylist-max-o AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist AXIS_THROTTLE:I = 0x13

.field public static final whitelist AXIS_TILT:I = 0x19

.field public static final whitelist AXIS_TOOL_MAJOR:I = 0x6

.field public static final whitelist AXIS_TOOL_MINOR:I = 0x7

.field public static final whitelist AXIS_TOUCH_MAJOR:I = 0x4

.field public static final whitelist AXIS_TOUCH_MINOR:I = 0x5

.field public static final whitelist AXIS_VSCROLL:I = 0x9

.field public static final whitelist AXIS_WHEEL:I = 0x15

.field public static final whitelist AXIS_X:I = 0x0

.field public static final whitelist AXIS_Y:I = 0x1

.field public static final whitelist AXIS_Z:I = 0xb

.field public static final whitelist BUTTON_BACK:I = 0x8

.field public static final whitelist BUTTON_FORWARD:I = 0x10

.field public static final whitelist BUTTON_PRIMARY:I = 0x1

.field public static final whitelist BUTTON_SECONDARY:I = 0x2

.field public static final whitelist BUTTON_STYLUS_PRIMARY:I = 0x20

.field public static final whitelist BUTTON_STYLUS_SECONDARY:I = 0x40

.field private static final greylist-max-o BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

.field public static final whitelist BUTTON_TERTIARY:I = 0x4

.field public static final whitelist CLASSIFICATION_AMBIGUOUS_GESTURE:I = 0x1

.field public static final whitelist CLASSIFICATION_DEEP_PRESS:I = 0x2

.field public static final blacklist CLASSIFICATION_MULTI_FINGER_SWIPE:I = 0x4

.field public static final whitelist CLASSIFICATION_NONE:I = 0x0

.field public static final whitelist CLASSIFICATION_PINCH:I = 0x5

.field public static final whitelist CLASSIFICATION_TWO_FINGER_SWIPE:I = 0x3

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o DEBUG_CONCISE_TOSTRING:Z = false

.field public static final whitelist EDGE_BOTTOM:I = 0x2

.field public static final whitelist EDGE_LEFT:I = 0x4

.field public static final whitelist EDGE_RIGHT:I = 0x8

.field public static final whitelist EDGE_TOP:I = 0x1

.field public static final blacklist FLAG_BY_WHEEL_SCROLL_PAD:I = 0x100000

.field public static final whitelist FLAG_CANCELED:I = 0x20

.field public static final blacklist FLAG_DISPATCH_WHEN_NON_INTERACTIVE:I = 0x200000

.field public static final blacklist FLAG_FROM_WFD:I = 0x8000000

.field public static final greylist-max-o FLAG_HOVER_EXIT_PENDING:I = 0x4

.field public static final blacklist FLAG_INJECTED_FROM_ACCESSIBILITY_TOOL:I = 0x1000

.field public static final blacklist FLAG_INTERNAL_DISPLAY_FOR_USER_ACTIVITY:I = 0x4000000

.field public static final blacklist FLAG_IS_ACCESSIBILITY_EVENT:I = 0x800

.field public static final greylist-max-o FLAG_IS_GENERATED_GESTURE:I = 0x8

.field public static final blacklist FLAG_KEEP_DEVICE_ID:I = 0x400000

.field public static final blacklist FLAG_NOT_RESET_USER_ACTIVITY_TIMEOUT:I = 0x1000000

.field public static final blacklist FLAG_NO_FOCUS_CHANGE:I = 0x40

.field public static final greylist-max-o FLAG_TAINTED:I = -0x80000000

.field public static final greylist-max-o FLAG_TARGET_ACCESSIBILITY_FOCUS:I = 0x40000000

.field public static final blacklist FLAG_UP_PENDING:I = 0x2000000

.field public static final blacklist FLAG_WINDOW_IS_ACCESSIBILITY:I = 0x800000

.field public static final whitelist FLAG_WINDOW_IS_OBSCURED:I = 0x1

.field public static final whitelist FLAG_WINDOW_IS_PARTIALLY_OBSCURED:I = 0x2

.field private static final greylist-max-r HISTORY_CURRENT:I = -0x80000000

.field private static final blacklist INVALID_CURSOR_POSITION:F = NaNf

.field public static final whitelist INVALID_POINTER_ID:I = -0x1

.field private static final greylist-max-o LABEL_PREFIX:Ljava/lang/String; = "AXIS_"

.field private static final greylist-max-o MAX_RECYCLED:I = 0xa

.field private static final greylist-max-o NS_PER_MS:J = 0xf4240L

.field public static final whitelist SEM_ACTION_PEN_CANCEL:I = 0xd6

.field public static final whitelist SEM_ACTION_PEN_DOWN:I = 0xd3

.field public static final whitelist SEM_ACTION_PEN_MOVE:I = 0xd5

.field public static final whitelist SEM_ACTION_PEN_UP:I = 0xd4

.field public static final whitelist SEM_FLAG_EVENT_BY_TWO_FINGER_GESTURE:I = 0x10000000

.field private static final blacklist TAG:Ljava/lang/String; = "MotionEvent"

.field public static final whitelist TOOL_TYPE_ERASER:I = 0x4

.field public static final whitelist TOOL_TYPE_FINGER:I = 0x1

.field public static final whitelist TOOL_TYPE_MOUSE:I = 0x3

.field public static final blacklist TOOL_TYPE_PALM:I = 0x5

.field public static final whitelist TOOL_TYPE_STYLUS:I = 0x2

.field private static final greylist-max-o TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist TOOL_TYPE_UNKNOWN:I

.field private static final greylist-max-o gRecyclerLock:Ljava/lang/Object;

.field private static greylist-max-o gRecyclerTop:Landroid/view/MotionEvent;

.field private static greylist-max-o gRecyclerUsed:I

.field private static final greylist-max-o gSharedTempLock:Ljava/lang/Object;

.field private static greylist-max-o gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static greylist-max-o gSharedTempPointerIndexMap:[I

.field private static greylist-max-o gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private blacklist mCompatSandboxScale:F

.field private blacklist mCompatSandboxXOffset:F

.field private blacklist mCompatSandboxYOffset:F

.field private greylist-max-p mNativePtr:J

.field private greylist-max-o mNext:Landroid/view/MotionEvent;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 40

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->AXIS_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    const-string v1, "AXIS_X"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_Y"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_PRESSURE"

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_SIZE"

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "AXIS_TOUCH_MAJOR"

    const/4 v6, 0x4

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x5

    const-string v7, "AXIS_TOUCH_MINOR"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x6

    const-string v7, "AXIS_TOOL_MAJOR"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/4 v1, 0x7

    const-string v7, "AXIS_TOOL_MINOR"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x8

    const-string v7, "AXIS_ORIENTATION"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x9

    const-string v7, "AXIS_VSCROLL"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xa

    const-string v7, "AXIS_HSCROLL"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xb

    const-string v7, "AXIS_Z"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xc

    const-string v7, "AXIS_RX"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xd

    const-string v7, "AXIS_RY"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xe

    const-string v7, "AXIS_RZ"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0xf

    const-string v7, "AXIS_HAT_X"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x10

    const-string v7, "AXIS_HAT_Y"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x11

    const-string v7, "AXIS_LTRIGGER"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x12

    const-string v7, "AXIS_RTRIGGER"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x13

    const-string v7, "AXIS_THROTTLE"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x14

    const-string v7, "AXIS_RUDDER"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x15

    const-string v7, "AXIS_WHEEL"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x16

    const-string v7, "AXIS_GAS"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x17

    const-string v7, "AXIS_BRAKE"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x18

    const-string v7, "AXIS_DISTANCE"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x19

    const-string v7, "AXIS_TILT"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x1a

    const-string v7, "AXIS_SCROLL"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x1b

    const-string v7, "AXIS_REALTIVE_X"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x1c

    const-string v7, "AXIS_REALTIVE_Y"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x20

    const-string v7, "AXIS_GENERIC_1"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x21

    const-string v7, "AXIS_GENERIC_2"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x22

    const-string v7, "AXIS_GENERIC_3"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x23

    const-string v7, "AXIS_GENERIC_4"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x24

    const-string v7, "AXIS_GENERIC_5"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x25

    const-string v7, "AXIS_GENERIC_6"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x26

    const-string v7, "AXIS_GENERIC_7"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x27

    const-string v7, "AXIS_GENERIC_8"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x28

    const-string v7, "AXIS_GENERIC_9"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x29

    const-string v7, "AXIS_GENERIC_10"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x2a

    const-string v7, "AXIS_GENERIC_11"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x2b

    const-string v7, "AXIS_GENERIC_12"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x2c

    const-string v7, "AXIS_GENERIC_13"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x2d

    const-string v7, "AXIS_GENERIC_14"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x2e

    const-string v7, "AXIS_GENERIC_15"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x2f

    const-string v7, "AXIS_GENERIC_16"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x30

    const-string v7, "AXIS_GESTURE_X_OFFSET"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x31

    const-string v7, "AXIS_GESTURE_Y_OFFSET"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x32

    const-string v7, "AXIS_GESTURE_SCROLL_X_DISTANCE"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x33

    const-string v7, "AXIS_GESTURE_SCROLL_Y_DISTANCE"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x34

    const-string v7, "AXIS_GESTURE_PINCH_SCALE_FACTOR"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x35

    const-string v7, "AXIS_GESTURE_SWIPE_FINGER_COUNT"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const/16 v1, 0x37

    const-string v7, "AXIS_PALM"

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v38, "0x40000000"

    const-string v39, "0x80000000"

    const-string v8, "BUTTON_PRIMARY"

    const-string v9, "BUTTON_SECONDARY"

    const-string v10, "BUTTON_TERTIARY"

    const-string v11, "BUTTON_BACK"

    const-string v12, "BUTTON_FORWARD"

    const-string v13, "BUTTON_STYLUS_PRIMARY"

    const-string v14, "BUTTON_STYLUS_SECONDARY"

    const-string v15, "0x00000080"

    const-string v16, "0x00000100"

    const-string v17, "0x00000200"

    const-string v18, "0x00000400"

    const-string v19, "0x00000800"

    const-string v20, "0x00001000"

    const-string v21, "0x00002000"

    const-string v22, "0x00004000"

    const-string v23, "0x00008000"

    const-string v24, "0x00010000"

    const-string v25, "0x00020000"

    const-string v26, "0x00040000"

    const-string v27, "0x00080000"

    const-string v28, "0x00100000"

    const-string v29, "0x00200000"

    const-string v30, "0x00400000"

    const-string v31, "0x00800000"

    const-string v32, "0x01000000"

    const-string v33, "0x02000000"

    const-string v34, "0x04000000"

    const-string v35, "0x08000000"

    const-string v36, "0x10000000"

    const-string v37, "0x20000000"

    filled-new-array/range {v8 .. v39}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    const-string v1, "TOOL_TYPE_UNKNOWN"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "TOOL_TYPE_FINGER"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "TOOL_TYPE_STYLUS"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "TOOL_TYPE_MOUSE"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string v1, "TOOL_TYPE_ERASER"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    new-instance v0, Landroid/view/MotionEvent$1;

    invoke-direct {v0}, Landroid/view/MotionEvent$1;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MotionEvent;->mCompatSandboxXOffset:F

    iput v0, p0, Landroid/view/MotionEvent;->mCompatSandboxYOffset:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/MotionEvent;->mCompatSandboxScale:F

    return-void
.end method

.method public static whitelist actionToString(I)Ljava/lang/String;
    .locals 4

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const v0, 0xff00

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p0, 0xff

    goto :goto_0

    :pswitch_1
    const-string p0, "ACTION_BUTTON_RELEASE"

    return-object p0

    :pswitch_2
    const-string p0, "ACTION_BUTTON_PRESS"

    return-object p0

    :pswitch_3
    const-string p0, "ACTION_HOVER_EXIT"

    return-object p0

    :pswitch_4
    const-string p0, "ACTION_HOVER_ENTER"

    return-object p0

    :pswitch_5
    const-string p0, "ACTION_SCROLL"

    return-object p0

    :pswitch_6
    const-string p0, "ACTION_HOVER_MOVE"

    return-object p0

    :pswitch_7
    const-string p0, "ACTION_OUTSIDE"

    return-object p0

    :pswitch_8
    const-string p0, "ACTION_CANCEL"

    return-object p0

    :pswitch_9
    const-string p0, "ACTION_MOVE"

    return-object p0

    :pswitch_a
    const-string p0, "ACTION_UP"

    return-object p0

    :pswitch_b
    const-string p0, "ACTION_DOWN"

    return-object p0

    :goto_0
    const/4 v2, 0x5

    const-string v3, ")"

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "ACTION_POINTER_UP("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "ACTION_POINTER_DOWN("

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static greylist-max-o appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/StringBuilder;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static whitelist axisFromString(Ljava/lang/String;)I
    .locals 1

    const-string v0, "AXIS_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/view/MotionEvent;->nativeAxisFromString(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    const/16 v0, 0xa

    :try_start_0
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, -0x1

    return p0
.end method

.method public static whitelist axisToString(I)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/view/MotionEvent;->nativeAxisToString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "AXIS_"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o buttonStateToString(I)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "0"

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    if-eqz p0, :cond_5

    and-int/lit8 v3, p0, 0x1

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    ushr-int/lit8 p0, p0, 0x1

    if-eqz v3, :cond_4

    sget-object v3, Landroid/view/MotionEvent;->BUTTON_SYMBOLIC_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v1, :cond_3

    if-nez p0, :cond_2

    return-object v3

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/16 v4, 0x7c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final greylist-max-o clamp(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static blacklist classificationToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "MULTI_FINGER_SWIPE"

    return-object p0

    :cond_1
    const-string p0, "TWO_FINGER_SWIPE"

    return-object p0

    :cond_2
    const-string p0, "DEEP_PRESS"

    return-object p0

    :cond_3
    const-string p0, "AMBIGUOUS_GESTURE"

    return-object p0

    :cond_4
    const-string p0, "NONE"

    return-object p0
.end method

.method public static greylist-max-o createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;
    .locals 3

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v1, v2, p0}, Landroid/view/MotionEvent;->nativeReadFromParcel(JLandroid/os/Parcel;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    return-object v0
.end method

.method public static blacklist createRotateMatrix(III)Landroid/graphics/Matrix;
    .locals 13

    if-nez p0, :cond_0

    new-instance p0, Landroid/graphics/Matrix;

    sget-object p1, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-direct {p0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object p0

    :cond_0
    const/16 v0, 0x8

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/16 v6, 0x9

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    if-ne p0, v10, :cond_1

    new-array p0, v6, [F

    aput v12, p0, v5

    aput v11, p0, v10

    aput v12, p0, v9

    aput v7, p0, v8

    aput v12, p0, v4

    int-to-float p1, p2

    aput p1, p0, v3

    aput v12, p0, v2

    aput v12, p0, v1

    aput v11, p0, v0

    goto :goto_0

    :cond_1
    if-ne p0, v9, :cond_2

    new-array p0, v6, [F

    aput v7, p0, v5

    aput v12, p0, v10

    int-to-float p1, p1

    aput p1, p0, v9

    aput v12, p0, v8

    aput v7, p0, v4

    int-to-float p1, p2

    aput p1, p0, v3

    aput v12, p0, v2

    aput v12, p0, v1

    aput v11, p0, v0

    goto :goto_0

    :cond_2
    if-ne p0, v8, :cond_3

    new-array p0, v6, [F

    aput v12, p0, v5

    aput v7, p0, v10

    int-to-float p1, p1

    aput p1, p0, v9

    aput v11, p0, v8

    aput v12, p0, v4

    aput v12, p0, v3

    aput v12, p0, v2

    aput v12, p0, v1

    aput v11, p0, v0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->setValues([F)V

    return-object p1
.end method

.method private static final greylist-max-o ensureSharedTempPointerCapacity(I)V
    .locals 2

    sget-object v0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v0, :cond_1

    array-length v1, v0

    if-ge v1, p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    array-length v0, v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x8

    :goto_1
    if-ge v0, p0, :cond_3

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_3
    invoke-static {v0}, Landroid/view/MotionEvent$PointerCoords;->createArray(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object p0

    sput-object p0, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v0}, Landroid/view/MotionEvent$PointerProperties;->createArray(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object p0

    sput-object p0, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-array p0, v0, [I

    sput-object p0, Landroid/view/MotionEvent;->gSharedTempPointerIndexMap:[I

    return-void
.end method

.method private blacklist initialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)Z
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x3

    move/from16 v7, p4

    if-ne v7, v1, :cond_0

    or-int/lit8 v1, p5, 0x20

    move v8, v1

    goto :goto_0

    :cond_0
    move/from16 v8, p5

    :goto_0
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move-wide/from16 v17, p14

    move-wide/from16 v19, p16

    move/from16 v21, p18

    move-object/from16 v22, p19

    move-object/from16 v23, p20

    invoke-static/range {v2 .. v23}, Landroid/view/MotionEvent;->nativeInitialize(JIIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-direct {v0}, Landroid/view/MotionEvent;->updateCursorPosition()V

    const/4 v0, 0x1

    return v0
.end method

.method private static native greylist-max-o nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V
.end method

.method private static native blacklist nativeApplyTransform(JLandroid/graphics/Matrix;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeAxisFromString(Ljava/lang/String;)I
.end method

.method private static native greylist-max-o nativeAxisToString(I)Ljava/lang/String;
.end method

.method private static native greylist-max-o nativeCopy(JJZ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeDispose(J)V
.end method

.method private static native greylist-max-o nativeFindPointerIndex(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetAction(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetActionButton(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetAxisValue(JIII)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetButtonState(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetClassification(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetDeviceId(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetDisplayId(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetDownTimeNanos(J)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetEdgeFlags(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetEventTimeNanos(JI)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetFlags(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetHistorySize(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetId(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetMetaState(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V
.end method

.method private static native greylist-max-o nativeGetPointerCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetPointerId(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V
.end method

.method private static native greylist nativeGetRawAxisValue(JIII)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetRawXOffset(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetRawYOffset(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetSource(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetSurfaceRotation(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetToolType(JI)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nativeGetXCursorPosition(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetXPrecision(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetYCursorPosition(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetYPrecision(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeInitialize(JIIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)J
.end method

.method private static native greylist-max-o nativeIsTouchEvent(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeOffsetLocation(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeReadFromParcel(JLandroid/os/Parcel;)J
.end method

.method private static native greylist-max-o nativeScale(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetAction(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetActionButton(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetButtonState(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSetCursorPosition(JFF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSetDisplayId(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetDownTimeNanos(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetEdgeFlags(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeSetFlags(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSetSource(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeSplit(JJI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeTransform(JLandroid/graphics/Matrix;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method private static greylist obtain()Landroid/view/MotionEvent;
    .locals 3

    sget-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/MotionEvent;

    invoke-direct {v1}, Landroid/view/MotionEvent;-><init>()V

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v2, v1, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    sput-object v2, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    sget v2, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/view/MotionEvent;->gRecyclerUsed:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    iput-object v0, v1, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->prepareForReuse()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0}, Landroid/view/MotionEvent;->setCompatSandboxScale(FFF)V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static whitelist obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 17

    const/4 v15, 0x2

    const/16 v16, 0x0

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist obtain(JJIFFFFIFFIIII)Landroid/view/MotionEvent;
    .locals 22

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    sget-object v21, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v21

    const/4 v1, 0x1

    :try_start_0
    invoke-static {v1}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    sget-object v19, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v1, 0x0

    aget-object v2, v19, v1

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    aget-object v2, v19, v1

    iput v1, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    sget-object v20, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v20, v1

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    aget-object v2, v20, v1

    move/from16 v3, p5

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v2, v20, v1

    move/from16 v3, p6

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    aget-object v2, v20, v1

    move/from16 v3, p7

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    aget-object v1, v20, v1

    move/from16 v2, p8

    iput v2, v1, Landroid/view/MotionEvent$PointerCoords;->size:F

    const-wide/32 v1, 0xf4240

    mul-long v14, p0, v1

    mul-long v16, p2, v1

    const/16 v18, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v4, p4

    move/from16 v7, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v1, p12

    move/from16 v6, p13

    move/from16 v2, p14

    move/from16 v3, p15

    invoke-direct/range {v0 .. v20}, Landroid/view/MotionEvent;->initialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)Z

    monitor-exit v21

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static whitelist obtain(JJIFFI)Landroid/view/MotionEvent;
    .locals 14

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist obtain(JJIIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move p5, p6

    move p6, p7

    move p7, p8

    move p8, p9

    move p9, p10

    move p10, p11

    move p11, p12

    move p12, p13

    move p13, p14

    invoke-static/range {p0 .. p13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;
    .locals 18
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v1, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static/range {p5 .. p5}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    sget-object v8, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v0, 0x0

    move/from16 v7, p5

    :goto_0
    if-ge v0, v7, :cond_0

    aget-object v2, v8, v0

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    aget-object v2, v8, v0

    aget v3, p6, v0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    move-wide/from16 v2, p0

    move-wide/from16 v4, p2

    move/from16 v6, p4

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static whitelist obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;
    .locals 18

    const/16 v16, 0x0

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v17, p15

    invoke-static/range {v1 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;
    .locals 19

    const/16 v18, 0x0

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    invoke-static/range {v1 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIIII)Landroid/view/MotionEvent;
    .locals 22

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v1

    const-wide/32 v2, 0xf4240

    mul-long v15, p0, v2

    mul-long v17, p2, v2

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v5, p4

    move/from16 v19, p5

    move-object/from16 v20, p6

    move-object/from16 v21, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v2, p12

    move/from16 v7, p13

    move/from16 v3, p14

    move/from16 v4, p15

    move/from16 v6, p16

    move/from16 v10, p17

    invoke-direct/range {v1 .. v21}, Landroid/view/MotionEvent;->initialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "MotionEvent"

    const-string v2, "Could not initialize MotionEvent"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static whitelist obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 6

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/MotionEvent;->nativeCopy(JJZ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-direct {p0}, Landroid/view/MotionEvent;->shouldApplyCompatSandbox()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/MotionEvent;->mCompatSandboxXOffset:F

    iget v2, p0, Landroid/view/MotionEvent;->mCompatSandboxYOffset:F

    iget p0, p0, Landroid/view/MotionEvent;->mCompatSandboxScale:F

    invoke-virtual {v0, v1, v2, p0}, Landroid/view/MotionEvent;->setCompatSandboxScale(FFF)V

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "other motion event must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 6

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/view/MotionEvent;->nativeCopy(JJZ)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-direct {p0}, Landroid/view/MotionEvent;->shouldApplyCompatSandbox()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/MotionEvent;->mCompatSandboxXOffset:F

    iget v2, p0, Landroid/view/MotionEvent;->mCompatSandboxYOffset:F

    iget p0, p0, Landroid/view/MotionEvent;->mCompatSandboxScale:F

    invoke-virtual {v0, v1, v2, p0}, Landroid/view/MotionEvent;->setCompatSandboxScale(FFF)V

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "other motion event must not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static whitelist semObtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;
    .locals 18

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v16, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v17, p16

    invoke-static/range {v1 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIIII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setCanceled(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_0

    or-int/lit8 p0, v0, 0x20

    goto :goto_0

    :cond_0
    and-int/lit8 p0, v0, -0x21

    :goto_0
    invoke-static {v1, v2, p0}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    return-void
.end method

.method private blacklist setCursorPosition(FF)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeSetCursorPosition(JFF)V

    return-void
.end method

.method private blacklist shouldApplyCompatSandbox()Z
    .locals 2

    iget v0, p0, Landroid/view/MotionEvent;->mCompatSandboxXOffset:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Landroid/view/MotionEvent;->mCompatSandboxYOffset:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget p0, p0, Landroid/view/MotionEvent;->mCompatSandboxScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static greylist-max-o toolTypeToString(I)Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist updateCursorPosition()V
    .locals 5

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/16 v1, 0x2002

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    invoke-direct {p0, v0, v0}, Landroid/view/MotionEvent;->setCursorPosition(FF)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v1, v4

    invoke-virtual {p0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    div-float/2addr v1, v0

    div-float/2addr v2, v0

    invoke-direct {p0, v1, v2}, Landroid/view/MotionEvent;->setCursorPosition(FF)V

    return-void
.end method


# virtual methods
.method public final whitelist addBatch(JFFFFI)V
    .locals 4

    sget-object v1, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    move v0, p4

    sget-object p4, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v2, 0x0

    aget-object v3, p4, v2

    invoke-virtual {v3}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    aget-object v3, p4, v2

    iput p3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object p3, p4, v2

    iput v0, p3, Landroid/view/MotionEvent$PointerCoords;->y:F

    aget-object p3, p4, v2

    iput p5, p3, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    aget-object p3, p4, v2

    iput p6, p3, Landroid/view/MotionEvent$PointerCoords;->size:F

    iget-wide p5, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long p2, p1, v2

    move-wide p0, p5

    move p5, p7

    invoke-static/range {p0 .. p5}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final whitelist addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V
    .locals 6

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    return-void
.end method

.method public final greylist addBatch(Landroid/view/MotionEvent;)Z
    .locals 13

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    return v1

    :cond_0
    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v3

    if-eq v0, v3, :cond_1

    return v1

    :cond_1
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v0

    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v3

    if-ne v0, v3, :cond_9

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v0

    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v3

    if-ne v0, v3, :cond_9

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v0

    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v3

    if-ne v0, v3, :cond_9

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v0

    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v3

    if-ne v0, v3, :cond_9

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetClassification(J)I

    move-result v0

    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetClassification(J)I

    move-result v3

    if-eq v0, v3, :cond_2

    goto/16 :goto_4

    :cond_2
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    iget-wide v3, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v3

    if-eq v0, v3, :cond_3

    return v1

    :cond_3
    sget-object v3, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    sget-object v2, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v8, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    move v4, v1

    :goto_0
    const/4 v10, 0x1

    if-ge v4, v0, :cond_5

    iget-wide v5, p0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v7, v2, v1

    invoke-static {v5, v6, v4, v7}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    iget-wide v5, p1, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v7, v2, v10

    invoke-static {v5, v6, v4, v7}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    aget-object v5, v2, v1

    aget-object v6, v2, v10

    invoke-static {v5, v6}, Landroid/view/MotionEvent$PointerProperties;->-$$Nest$mequals(Landroid/view/MotionEvent$PointerProperties;Landroid/view/MotionEvent$PointerProperties;)Z

    move-result v5

    if-nez v5, :cond_4

    monitor-exit v3

    return v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iget-wide v4, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v9

    iget-wide v4, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result v2

    move v11, v1

    :goto_1
    if-gt v11, v2, :cond_8

    if-ne v11, v2, :cond_6

    const/high16 v4, -0x80000000

    goto :goto_2

    :cond_6
    move v4, v11

    :goto_2
    move v5, v1

    :goto_3
    if-ge v5, v0, :cond_7

    iget-wide v6, p1, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v12, v8, v5

    invoke-static {v6, v7, v5, v4, v12}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    iget-wide v5, p1, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6, v4}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v6

    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static/range {v4 .. v9}, Landroid/view/MotionEvent;->nativeAddBatch(JJ[Landroid/view/MotionEvent$PointerCoords;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_8
    monitor-exit v3

    return v10

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_9
    :goto_4
    return v1
.end method

.method public blacklist applyTransform(Landroid/graphics/Matrix;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeApplyTransform(JLandroid/graphics/Matrix;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "matrix must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final greylist-max-o cancel()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/MotionEvent;->setCanceled(Z)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->setAction(I)V

    return-void
.end method

.method public final greylist-max-o clampNoHistory(FFFF)Landroid/view/MotionEvent;
    .locals 22

    move-object/from16 v0, p0

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v1

    sget-object v21, Landroid/view/MotionEvent;->gSharedTempLock:Ljava/lang/Object;

    monitor-enter v21

    :try_start_0
    iget-wide v2, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v2

    invoke-static {v2}, Landroid/view/MotionEvent;->ensureSharedTempPointerCapacity(I)V

    sget-object v19, Landroid/view/MotionEvent;->gSharedTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v20, Landroid/view/MotionEvent;->gSharedTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v3, 0x0

    :goto_0
    const/high16 v4, -0x80000000

    if-ge v3, v2, :cond_0

    iget-wide v5, v0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v7, v19, v3

    invoke-static {v5, v6, v3, v7}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    iget-wide v5, v0, Landroid/view/MotionEvent;->mNativePtr:J

    aget-object v7, v20, v3

    invoke-static {v5, v6, v3, v4, v7}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    aget-object v4, v20, v3

    iget v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    move/from16 v6, p1

    move/from16 v7, p3

    invoke-static {v5, v6, v7}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    aget-object v4, v20, v3

    iget v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    move/from16 v8, p2

    move/from16 v9, p4

    invoke-static {v5, v8, v9}, Landroid/view/MotionEvent;->clamp(FFF)F

    move-result v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-wide v5, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result v3

    iget-wide v5, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v5, v6}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result v5

    iget-wide v6, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v6, v7}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result v6

    iget-wide v7, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v7, v8}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result v7

    iget-wide v8, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v8, v9}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result v8

    iget-wide v9, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v9, v10}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result v9

    iget-wide v10, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v10, v11}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result v10

    iget-wide v11, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v11, v12}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result v11

    iget-wide v12, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v12, v13}, Landroid/view/MotionEvent;->nativeGetClassification(J)I

    move-result v12

    iget-wide v13, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v13, v14}, Landroid/view/MotionEvent;->nativeGetRawXOffset(J)F

    move-result v13

    iget-wide v14, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v14, v15}, Landroid/view/MotionEvent;->nativeGetRawYOffset(J)F

    move-result v14

    move/from16 p1, v5

    iget-wide v4, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result v4

    move-object v5, v1

    move/from16 v18, v2

    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result v1

    move/from16 p2, v1

    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v1, v2}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v1

    move-wide/from16 p3, v1

    iget-wide v0, v0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v15, -0x80000000

    invoke-static {v0, v1, v15}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v16

    move/from16 v2, p1

    move v1, v3

    move-object v0, v5

    move v3, v6

    move v5, v8

    move v6, v9

    move v8, v11

    move v9, v12

    move v11, v14

    move-wide/from16 v14, p3

    move v12, v4

    move v4, v7

    move v7, v10

    move v10, v13

    move/from16 v13, p2

    invoke-direct/range {v0 .. v20}, Landroid/view/MotionEvent;->initialize(IIIIIIIIIFFFFJJI[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;)Z

    monitor-exit v21

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic greylist copy()Landroid/view/InputEvent;
    .locals 0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method public greylist copy()Landroid/view/MotionEvent;
    .locals 0

    invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    return-object p0
.end method

.method protected whitelist test-api finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeDispose(J)V

    iput-wide v2, p0, Landroid/view/MotionEvent;->mNativePtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final whitelist findPointerIndex(I)I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeFindPointerIndex(JI)I

    move-result p0

    return p0
.end method

.method public final whitelist getAction()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result p0

    return p0
.end method

.method public final whitelist getActionButton()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetActionButton(J)I

    move-result p0

    return p0
.end method

.method public final whitelist getActionIndex()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result p0

    const v0, 0xff00

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public final whitelist getActionMasked()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetAction(J)I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public final whitelist getAxisValue(I)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p1, p0, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getAxisValue(II)F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 p0, -0x80000000

    invoke-static {v0, v1, p1, p2, p0}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getButtonState()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetButtonState(J)I

    move-result p0

    return p0
.end method

.method public whitelist getClassification()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetClassification(J)I

    move-result p0

    return p0
.end method

.method public final whitelist getDeviceId()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDeviceId(J)I

    move-result p0

    return p0
.end method

.method public blacklist getDisplayId()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDisplayId(J)I

    move-result p0

    return p0
.end method

.method public final whitelist getDownTime()J
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetDownTimeNanos(J)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final whitelist getEdgeFlags()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetEdgeFlags(J)I

    move-result p0

    return p0
.end method

.method public final whitelist getEventTime()J
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 p0, -0x80000000

    invoke-static {v0, v1, p0}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public whitelist getEventTimeNanos()J
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 p0, -0x80000000

    invoke-static {v0, v1, p0}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final whitelist getFlags()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result p0

    return p0
.end method

.method public final whitelist getHistoricalAxisValue(II)F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    invoke-static {v0, v1, p1, p0, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getHistoricalAxisValue(III)F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getHistoricalEventTime(I)J
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide p0

    const-wide/32 v0, 0xf4240

    div-long/2addr p0, v0

    return-wide p0
.end method

.method public whitelist getHistoricalEventTimeNanos(I)J
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetEventTimeNanos(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public final whitelist getHistoricalOrientation(I)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 p0, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getHistoricalOrientation(II)F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 p0, 0x8

    invoke-static {v0, v1, p0, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    return-void
.end method

.method public final whitelist getHistoricalPressure(I)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getHistoricalPressure(II)F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x2

    invoke-static {v0, v1, p0, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getHistoricalSize(I)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getHistoricalSize(II)F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x3

    invoke-static {v0, v1, p0, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getHistoricalToolMajor(I)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x6

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getHistoricalToolMajor(II)F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x6

    invoke-static {v0, v1, p0, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getHistoricalToolMinor(I)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x7

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getHistoricalToolMinor(II)F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x7

    invoke-static {v0, v1, p0, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getHistoricalTouchMajor(I)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getHistoricalTouchMajor(II)F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x4

    invoke-static {v0, v1, p0, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getHistoricalTouchMinor(I)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x5

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getHistoricalTouchMinor(II)F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x5

    invoke-static {v0, v1, p0, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getHistoricalX(I)F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    invoke-static {v0, v1, p0, p0, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getHistoricalX(II)F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    invoke-static {v0, v1, p0, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getHistoricalY(I)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, p0, v2, p1}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getHistoricalY(II)F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x1

    invoke-static {v0, v1, p0, p1, p2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getHistorySize()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetHistorySize(J)I

    move-result p0

    return p0
.end method

.method public blacklist getId()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetId(J)I

    move-result p0

    return p0
.end method

.method public final whitelist getMetaState()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetMetaState(J)I

    move-result p0

    return p0
.end method

.method public final whitelist getOrientation()F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    const/high16 v2, -0x80000000

    const/16 v3, 0x8

    invoke-static {v0, v1, v3, p0, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getOrientation(I)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 p0, 0x8

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final blacklist getPalm()F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    const/high16 v2, -0x80000000

    const/16 v3, 0x37

    invoke-static {v0, v1, v3, p0, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final blacklist getPalm(I)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 p0, 0x37

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 p0, -0x80000000

    invoke-static {v0, v1, p1, p0, p2}, Landroid/view/MotionEvent;->nativeGetPointerCoords(JIILandroid/view/MotionEvent$PointerCoords;)V

    return-void
.end method

.method public final whitelist getPointerCount()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result p0

    return p0
.end method

.method public final whitelist getPointerId(I)I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetPointerId(JI)I

    move-result p0

    return p0
.end method

.method public final greylist getPointerIdBits()I
    .locals 5

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4, v1}, Landroid/view/MotionEvent;->nativeGetPointerId(JI)I

    move-result v3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final whitelist getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeGetPointerProperties(JILandroid/view/MotionEvent$PointerProperties;)V

    return-void
.end method

.method public final whitelist getPressure()F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    const/high16 v2, -0x80000000

    const/4 v3, 0x2

    invoke-static {v0, v1, v3, p0, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getPressure(I)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x2

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getRawX()F
    .locals 5

    invoke-direct {p0}, Landroid/view/MotionEvent;->shouldApplyCompatSandbox()Z

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4, v2, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    iget v1, p0, Landroid/view/MotionEvent;->mCompatSandboxXOffset:F

    add-float/2addr v0, v1

    iget p0, p0, Landroid/view/MotionEvent;->mCompatSandboxScale:F

    mul-float/2addr v0, p0

    return v0

    :cond_0
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->getOverrideInvertedScale()F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_1

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4, v2, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result p0

    mul-float/2addr p0, v0

    return p0

    :cond_1
    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v3, v4, v2, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public whitelist getRawX(I)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p1, v2}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final blacklist getRawXForScaledWindow()F
    .locals 1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    invoke-static {}, Landroid/content/res/CompatibilityInfo;->getOverrideInvertedScale()F

    move-result v0

    div-float/2addr p0, v0

    return p0
.end method

.method public final whitelist getRawY()F
    .locals 6

    invoke-direct {p0}, Landroid/view/MotionEvent;->shouldApplyCompatSandbox()Z

    move-result v0

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5, v3, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result v0

    iget v1, p0, Landroid/view/MotionEvent;->mCompatSandboxYOffset:F

    add-float/2addr v0, v1

    iget p0, p0, Landroid/view/MotionEvent;->mCompatSandboxScale:F

    mul-float/2addr v0, p0

    return v0

    :cond_0
    invoke-static {}, Landroid/content/res/CompatibilityInfo;->getOverrideInvertedScale()F

    move-result v0

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    if-eqz v4, :cond_1

    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5, v3, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result p0

    mul-float/2addr p0, v0

    return p0

    :cond_1
    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v4, v5, v3, v2, v1}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public whitelist getRawY(I)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x1

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p1, v2}, Landroid/view/MotionEvent;->nativeGetRawAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final blacklist getRawYForScaledWindow()F
    .locals 1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    invoke-static {}, Landroid/content/res/CompatibilityInfo;->getOverrideInvertedScale()F

    move-result v0

    div-float/2addr p0, v0

    return p0
.end method

.method public final whitelist getSize()F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    const/high16 v2, -0x80000000

    const/4 v3, 0x3

    invoke-static {v0, v1, v3, p0, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getSize(I)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x3

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getSource()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetSource(J)I

    move-result p0

    return p0
.end method

.method public blacklist getSurfaceRotation()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetSurfaceRotation(J)I

    move-result p0

    return p0
.end method

.method public final whitelist getToolMajor()F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    const/high16 v2, -0x80000000

    const/4 v3, 0x6

    invoke-static {v0, v1, v3, p0, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getToolMajor(I)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x6

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getToolMinor()F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    const/high16 v2, -0x80000000

    const/4 v3, 0x7

    invoke-static {v0, v1, v3, p0, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getToolMinor(I)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x7

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public whitelist getToolType(I)I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeGetToolType(JI)I

    move-result p0

    return p0
.end method

.method public final whitelist getTouchMajor()F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    const/high16 v2, -0x80000000

    const/4 v3, 0x4

    invoke-static {v0, v1, v3, p0, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getTouchMajor(I)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x4

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getTouchMinor()F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    const/high16 v2, -0x80000000

    const/4 v3, 0x5

    invoke-static {v0, v1, v3, p0, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getTouchMinor(I)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x5

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getX()F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p0, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getX(I)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public blacklist getXCursorPosition()F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetXCursorPosition(J)F

    move-result p0

    return p0
.end method

.method public blacklist getXDispatchLocation(I)F
    .locals 2

    const/16 v0, 0x2002

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getXCursorPosition()F

    move-result v0

    const/high16 v1, 0x7fc00000    # Float.NaN

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p0

    return p0
.end method

.method public final whitelist getXPrecision()F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetXPrecision(J)F

    move-result p0

    return p0
.end method

.method public final whitelist getY()F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    const/high16 v2, -0x80000000

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, p0, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public final whitelist getY(I)F
    .locals 3

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x1

    const/high16 v2, -0x80000000

    invoke-static {v0, v1, p0, p1, v2}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    return p0
.end method

.method public blacklist getYCursorPosition()F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetYCursorPosition(J)F

    move-result p0

    return p0
.end method

.method public blacklist getYDispatchLocation(I)F
    .locals 2

    const/16 v0, 0x2002

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getYCursorPosition()F

    move-result v0

    const/high16 v1, 0x7fc00000    # Float.NaN

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    return p0
.end method

.method public final whitelist getYPrecision()F
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetYPrecision(J)F

    move-result p0

    return p0
.end method

.method public final whitelist isButtonPressed(I)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result p0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public blacklist isHoverEvent()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p0

    const/4 v0, 0x7

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

.method public final greylist-max-o isHoverExitPending()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isInjectedFromAccessibilityService()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isInjectedFromAccessibilityTool()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result p0

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isStylusPointer()Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    const/16 v1, 0x4002

    invoke-virtual {p0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final greylist-max-o isTainted()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result p0

    const/high16 v0, -0x80000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o isTargetAccessibilityFocus()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final greylist-max-o isTouchEvent()Z
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeIsTouchEvent(J)Z

    move-result p0

    return p0
.end method

.method public final greylist-max-o isWithinBoundsNoHistory(FFFF)Z
    .locals 9

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetPointerCount(J)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    iget-wide v4, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 v6, -0x80000000

    invoke-static {v4, v5, v1, v2, v6}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v4

    iget-wide v7, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v7, v8, v3, v2, v6}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v3

    cmpg-float v5, v4, p1

    if-ltz v5, :cond_1

    cmpl-float v4, v4, p3

    if-gtz v4, :cond_1

    cmpg-float v4, v3, p2

    if-ltz v4, :cond_1

    cmpl-float v3, v3, p4

    if-lez v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1

    :cond_2
    return v3
.end method

.method public final whitelist offsetLocation(FF)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    cmpl-float v0, p2, v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeOffsetLocation(JFF)V

    return-void
.end method

.method public final whitelist recycle()V
    .locals 3

    invoke-super {p0}, Landroid/view/InputEvent;->recycle()V

    sget-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    sget-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    iput-object v1, p0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    sput-object p0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final greylist scale(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeScale(JF)V

    :cond_0
    return-void
.end method

.method public whitelist semGetDisplayId()I
    .locals 0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result p0

    return p0
.end method

.method public final whitelist semGetFlags()I
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/MotionEvent;->nativeGetFlags(J)I

    move-result p0

    const/high16 v0, 0x10000000

    and-int/2addr p0, v0

    return p0
.end method

.method public final whitelist semGetPredictedX(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x3a

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x0

    invoke-static {v1, v2, p0, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    add-float/2addr p0, v0

    return p0
.end method

.method public final whitelist semGetPredictedY(I)F
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/16 v2, 0x3b

    const/high16 v3, -0x80000000

    invoke-static {v0, v1, v2, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result v0

    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/4 p0, 0x1

    invoke-static {v1, v2, p0, p1, v3}, Landroid/view/MotionEvent;->nativeGetAxisValue(JIII)F

    move-result p0

    add-float/2addr p0, v0

    return p0
.end method

.method public final whitelist semIsUpPending()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result p0

    const/high16 v0, 0x2000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist semSetNonResetUserActivityTimeout()V
    .locals 3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const/high16 p0, 0x1000000

    or-int/2addr p0, v0

    invoke-static {v1, v2, p0}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    return-void
.end method

.method public final whitelist setAction(I)V
    .locals 2

    and-int/lit16 v0, p1, 0xff

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/view/MotionEvent;->setCanceled(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/MotionEvent;->setCanceled(Z)V

    :goto_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetAction(JI)V

    return-void
.end method

.method public final greylist setActionButton(I)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetActionButton(JI)V

    return-void
.end method

.method public final blacklist setButtonState(I)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetButtonState(JI)V

    return-void
.end method

.method public blacklist setCompatSandboxScale(FFF)V
    .locals 0

    iput p1, p0, Landroid/view/MotionEvent;->mCompatSandboxXOffset:F

    iput p2, p0, Landroid/view/MotionEvent;->mCompatSandboxYOffset:F

    iput p3, p0, Landroid/view/MotionEvent;->mCompatSandboxScale:F

    return-void
.end method

.method public blacklist setDisplayId(I)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetDisplayId(JI)V

    return-void
.end method

.method public final greylist setDownTime(J)V
    .locals 4

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    const-wide/32 v2, 0xf4240

    mul-long/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Landroid/view/MotionEvent;->nativeSetDownTimeNanos(JJ)V

    return-void
.end method

.method public final whitelist setEdgeFlags(I)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetEdgeFlags(JI)V

    return-void
.end method

.method public blacklist setFlags(I)V
    .locals 2

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    return-void
.end method

.method public greylist-max-o setHoverExitPending(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_0

    or-int/lit8 p0, v0, 0x4

    goto :goto_0

    :cond_0
    and-int/lit8 p0, v0, -0x5

    :goto_0
    invoke-static {v1, v2, p0}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    return-void
.end method

.method public final whitelist setLocation(FF)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr p1, v0

    sub-float/2addr p2, v1

    invoke-virtual {p0, p1, p2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return-void
.end method

.method public final whitelist setSource(I)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeSetSource(JI)V

    invoke-direct {p0}, Landroid/view/MotionEvent;->updateCursorPosition()V

    return-void
.end method

.method public final greylist-max-o setTainted(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_0

    const/high16 p0, -0x80000000

    or-int/2addr p0, v0

    goto :goto_0

    :cond_0
    const p0, 0x7fffffff

    and-int/2addr p0, v0

    :goto_0
    invoke-static {v1, v2, p0}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    return-void
.end method

.method public greylist-max-o setTargetAccessibilityFocus(Z)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    iget-wide v1, p0, Landroid/view/MotionEvent;->mNativePtr:J

    if-eqz p1, :cond_0

    const/high16 p0, 0x40000000    # 2.0f

    or-int/2addr p0, v0

    goto :goto_0

    :cond_0
    const p0, -0x40000001    # -1.9999999f

    and-int/2addr p0, v0

    :goto_0
    invoke-static {v1, v2, p0}, Landroid/view/MotionEvent;->nativeSetFlags(JI)V

    return-void
.end method

.method public final greylist split(I)Landroid/view/MotionEvent;
    .locals 5

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_1

    invoke-static {}, Landroid/view/MotionEvent;->obtain()Landroid/view/MotionEvent;

    move-result-object v0

    iget-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    iget-wide v3, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v1, v2, v3, v4, p1}, Landroid/view/MotionEvent;->nativeSplit(JJI)J

    move-result-wide v1

    iput-wide v1, v0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-direct {p0}, Landroid/view/MotionEvent;->shouldApplyCompatSandbox()Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Landroid/view/MotionEvent;->mCompatSandboxXOffset:F

    iget v1, p0, Landroid/view/MotionEvent;->mCompatSandboxYOffset:F

    iget p0, p0, Landroid/view/MotionEvent;->mCompatSandboxScale:F

    invoke-virtual {v0, p1, v1, p0}, Landroid/view/MotionEvent;->setCompatSandboxScale(FFF)V

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "idBits must be a non-empty subset of the pointer IDs from this MotionEvent, got idBits: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "0x%x"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "idBits must contain at least one pointer from this motion event"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MotionEvent { action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-static {v1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v1

    invoke-static {v1}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    const-string v3, ", actionButton="

    invoke-static {v2, v0, v3, v1}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v1, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ", id["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v6, v0, v7, v9}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    const-string v9, ", x["

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", y["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    sget-object v6, Landroid/view/MotionEvent;->TOOL_TYPE_SYMBOLIC_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ", toolType["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    invoke-static {v7}, Landroid/view/MotionEvent;->toolTypeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v0, v6, v7}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v4

    invoke-static {v4}, Landroid/view/MotionEvent;->buttonStateToString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, ", buttonState="

    invoke-static {v2, v0, v6, v4}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Landroid/view/MotionEvent;->classificationToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getClassification()I

    move-result v6

    invoke-static {v6}, Landroid/view/MotionEvent;->classificationToString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ", classification="

    invoke-static {v4, v0, v7, v6}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    invoke-static {v4}, Landroid/view/KeyEvent;->metaStateToString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, ", metaState="

    invoke-static {v2, v0, v6, v4}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, ", flags=0x"

    invoke-static {v2, v0, v6, v4}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, ", edgeFlags=0x"

    invoke-static {v2, v0, v6, v4}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, ", pointerCount="

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v0, v4, v1}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, ", historySize="

    invoke-static {v1, v0, v3, v2}, Landroid/view/MotionEvent;->appendUnless(Ljava/lang/Object;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, ", eventTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", source=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final whitelist transform(Landroid/graphics/Matrix;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeTransform(JLandroid/graphics/Matrix;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "matrix must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/view/MotionEvent;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/view/MotionEvent;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    return-void
.end method
