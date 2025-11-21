.class public Landroid/content/pm/ActivityInfo;
.super Landroid/content/pm/ComponentInfo;
.source "ActivityInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ActivityInfo$WindowLayout;,
        Landroid/content/pm/ActivityInfo$SizeChangesSupportMode;,
        Landroid/content/pm/ActivityInfo$Config;,
        Landroid/content/pm/ActivityInfo$ScreenOrientation;,
        Landroid/content/pm/ActivityInfo$ColorMode;,
        Landroid/content/pm/ActivityInfo$RequiredContentUriPermission;,
        Landroid/content/pm/ActivityInfo$LaunchMode;
    }
.end annotation


# static fields
.field public static final blacklist ALWAYS_SANDBOX_DISPLAY_APIS:J = 0xb06f389L

.field private static final blacklist CHECK_MIN_WIDTH_HEIGHT_FOR_MULTI_WINDOW:J = 0xbc7f809L

.field public static final blacklist COLOR_MODE_A8:I = 0x4

.field public static final whitelist COLOR_MODE_DEFAULT:I = 0x0

.field public static final whitelist COLOR_MODE_HDR:I = 0x2

.field public static final blacklist COLOR_MODE_HDR10:I = 0x3

.field public static final whitelist COLOR_MODE_WIDE_COLOR_GAMUT:I = 0x1

.field public static final whitelist CONFIG_ASSETS_PATHS:I = -0x80000000

.field public static final blacklist CONFIG_BOLD_TEXT:I = 0x1000000

.field public static final whitelist CONFIG_COLOR_MODE:I = 0x4000

.field public static final blacklist CONFIG_CURSOR_THICKNESS:I = 0x800000

.field public static final whitelist CONFIG_DENSITY:I = 0x1000

.field public static final blacklist CONFIG_DEX_MODE:I = 0x100000

.field public static final blacklist CONFIG_DISPLAY_DEVICE_TYPE:I = 0x4000000

.field public static final blacklist CONFIG_FLIPFONT:I = 0x2000000

.field public static final whitelist CONFIG_FONT_SCALE:I = 0x40000000

.field public static final whitelist CONFIG_FONT_WEIGHT_ADJUSTMENT:I = 0x10000000

.field public static final whitelist CONFIG_GRAMMATICAL_GENDER:I = 0x8000

.field public static final whitelist CONFIG_KEYBOARD:I = 0x10

.field public static final whitelist CONFIG_KEYBOARD_HIDDEN:I = 0x20

.field public static final whitelist CONFIG_LAYOUT_DIRECTION:I = 0x2000

.field public static final whitelist CONFIG_LOCALE:I = 0x4

.field public static final whitelist CONFIG_MCC:I = 0x1

.field public static final whitelist CONFIG_MNC:I = 0x2

.field public static greylist-max-o CONFIG_NATIVE_BITS:[I = null

.field public static final whitelist CONFIG_NAVIGATION:I = 0x40

.field public static final blacklist CONFIG_NIGHT_DIM:I = 0x400000

.field public static final whitelist CONFIG_ORIENTATION:I = 0x80

.field public static final whitelist CONFIG_RESOURCES_UNUSED:I = 0x8000000

.field public static final whitelist CONFIG_SCREEN_LAYOUT:I = 0x100

.field public static final whitelist CONFIG_SCREEN_SIZE:I = 0x400

.field public static final blacklist CONFIG_SHOW_BUTTON_SHAPE:I = 0x200000

.field public static final whitelist CONFIG_SMALLEST_SCREEN_SIZE:I = 0x800

.field public static final blacklist CONFIG_THEME_DISPLAY:I = 0x20000

.field public static final blacklist CONFIG_THEME_SEQ:I = 0x10000

.field public static final whitelist CONFIG_TOUCHSCREEN:I = 0x8

.field public static final whitelist CONFIG_UI_MODE:I = 0x200

.field public static final greylist-max-o CONFIG_WINDOW_CONFIGURATION:I = 0x20000000

.field public static final blacklist CONTENT_URI_PERMISSION_NONE:I = 0x0

.field public static final blacklist CONTENT_URI_PERMISSION_READ:I = 0x1

.field public static final blacklist CONTENT_URI_PERMISSION_READ_AND_WRITE:I = 0x4

.field public static final blacklist CONTENT_URI_PERMISSION_READ_OR_WRITE:I = 0x3

.field public static final blacklist CONTENT_URI_PERMISSION_WRITE:I = 0x2

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/ActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist DOCUMENT_LAUNCH_ALWAYS:I = 0x2

.field public static final whitelist DOCUMENT_LAUNCH_INTO_EXISTING:I = 0x1

.field public static final whitelist DOCUMENT_LAUNCH_NEVER:I = 0x3

.field public static final whitelist DOCUMENT_LAUNCH_NONE:I = 0x0

.field public static final greylist-max-r FLAG_ALLOW_EMBEDDED:I = -0x80000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FLAG_ALLOW_TASK_REPARENTING:I = 0x40

.field public static final whitelist FLAG_ALLOW_UNTRUSTED_ACTIVITY_EMBEDDING:I = 0x10000000

.field public static final greylist-max-o FLAG_ALWAYS_FOCUSABLE:I = 0x40000

.field public static final whitelist FLAG_ALWAYS_RETAIN_TASK_STATE:I = 0x8

.field public static final whitelist FLAG_AUTO_REMOVE_FROM_RECENTS:I = 0x2000

.field public static final blacklist FLAG_CAN_DISPLAY_ON_REMOTE_DEVICES:I = 0x10000

.field public static final whitelist FLAG_CLEAR_TASK_ON_LAUNCH:I = 0x4

.field public static final whitelist FLAG_ENABLE_VR_MODE:I = 0x8000

.field public static final whitelist FLAG_EXCLUDE_FROM_RECENTS:I = 0x20

.field public static final whitelist FLAG_FINISH_ON_CLOSE_SYSTEM_DIALOGS:I = 0x100

.field public static final whitelist FLAG_FINISH_ON_TASK_LAUNCH:I = 0x2

.field public static final whitelist FLAG_HARDWARE_ACCELERATED:I = 0x200

.field public static final whitelist FLAG_IMMERSIVE:I = 0x800

.field public static final greylist-max-o FLAG_IMPLICITLY_VISIBLE_TO_INSTANT_APP:I = 0x200000

.field public static final blacklist FLAG_INHERIT_SHOW_WHEN_LOCKED:I = 0x1

.field public static final whitelist FLAG_MULTIPROCESS:I = 0x1

.field public static final whitelist FLAG_NO_HISTORY:I = 0x80

.field public static final whitelist FLAG_PREFER_MINIMAL_POST_PROCESSING:I = 0x2000000

.field public static final whitelist FLAG_RELINQUISH_TASK_IDENTITY:I = 0x1000

.field public static final whitelist FLAG_RESUME_WHILE_PAUSING:I = 0x4000

.field public static final greylist-max-r FLAG_SHOW_FOR_ALL_USERS:I = 0x400

.field public static final greylist-max-o FLAG_SHOW_WHEN_LOCKED:I = 0x800000

.field public static final whitelist FLAG_SINGLE_USER:I = 0x40000000

.field public static final whitelist FLAG_STATE_NOT_NEEDED:I = 0x10

.field public static final greylist-max-o FLAG_SUPPORTS_PICTURE_IN_PICTURE:I = 0x400000

.field public static final greylist-max-o FLAG_SYSTEM_USER_ONLY:I = 0x20000000

.field public static final greylist-max-o FLAG_TURN_SCREEN_ON:I = 0x1000000

.field public static final greylist-max-o FLAG_VISIBLE_TO_INSTANT_APP:I = 0x100000

.field public static final blacklist FORCE_NON_RESIZE_APP:J = 0xacbec0bL

.field public static final blacklist FORCE_RESIZE_APP:J = 0xa5faf38L

.field public static final blacklist INSETS_DECOUPLED_CONFIGURATION_ENFORCED:J = 0x90d3a73L

.field public static final whitelist LAUNCH_MULTIPLE:I = 0x0

.field public static final whitelist LAUNCH_SINGLE_INSTANCE:I = 0x3

.field public static final whitelist LAUNCH_SINGLE_INSTANCE_PER_TASK:I = 0x4

.field public static final whitelist LAUNCH_SINGLE_TASK:I = 0x2

.field public static final whitelist LAUNCH_SINGLE_TOP:I = 0x1

.field public static final greylist-max-o LOCK_TASK_LAUNCH_MODE_ALWAYS:I = 0x2

.field public static final greylist-max-o LOCK_TASK_LAUNCH_MODE_DEFAULT:I = 0x0

.field public static final blacklist LOCK_TASK_LAUNCH_MODE_IF_ALLOWLISTED:I = 0x3

.field public static final greylist-max-o LOCK_TASK_LAUNCH_MODE_NEVER:I = 0x1

.field public static final blacklist NEVER_SANDBOX_DISPLAY_APIS:J = 0xb0468a2L

.field public static final blacklist OVERRIDE_ANY_ORIENTATION:J = 0xfd2aa87L

.field public static final blacklist OVERRIDE_ANY_ORIENTATION_TO_USER:J = 0x1286aeb5L

.field public static final blacklist OVERRIDE_CAMERA_COMPAT_DISABLE_FORCE_ROTATION:J = 0xfbbb1dcL

.field public static final blacklist OVERRIDE_CAMERA_COMPAT_DISABLE_REFRESH:J = 0xfc0f74bL

.field public static final blacklist OVERRIDE_CAMERA_COMPAT_DISABLE_SIMULATE_REQUESTED_ORIENTATION:J = 0x17bbfc67L

.field public static final blacklist OVERRIDE_CAMERA_COMPAT_ENABLE_FREEFORM_WINDOWING_TREATMENT:J = 0x12c5ed24L

.field public static final blacklist OVERRIDE_CAMERA_COMPAT_ENABLE_REFRESH_VIA_PAUSE:J = 0xfc0ec12L

.field public static final blacklist OVERRIDE_ENABLE_COMPAT_FAKE_FOCUS:J = 0xfb1048bL

.field public static final blacklist OVERRIDE_ENABLE_COMPAT_IGNORE_ORIENTATION_REQUEST_WHEN_LOOP_DETECTED:J = 0x104d6bf7L

.field public static final blacklist OVERRIDE_ENABLE_COMPAT_IGNORE_REQUESTED_ORIENTATION:J = 0xf2d5f32L

.field public static final blacklist OVERRIDE_ENABLE_INSETS_DECOUPLED_CONFIGURATION:J = 0x138268edL

.field public static final blacklist OVERRIDE_EXCLUDE_CAPTION_INSETS_FROM_APP_BOUNDS:J = 0x1720a297L

.field public static final blacklist OVERRIDE_LANDSCAPE_ORIENTATION_TO_REVERSE_LANDSCAPE:J = 0xfdcbe7fL

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO:J = 0xa5faf64L

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_EXCLUDE_PORTRAIT_FULLSCREEN:J = 0xd0d1070L

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_LARGE:J = 0xabf9183L

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_LARGE_VALUE:F = 1.7777778f

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_MEDIUM:J = 0xabf91bdL

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_MEDIUM_VALUE:F = 1.5f

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_ONLY_FOR_CAMERA:J = 0x13680faaL

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_PORTRAIT_ONLY:J = 0xc2368d6L

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_SMALL:J = 0x14ce0124L

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_SMALL_VALUE:F = 1.3333334f

.field public static final blacklist OVERRIDE_MIN_ASPECT_RATIO_TO_ALIGN_WITH_SPLIT_SCREEN:J = 0xc6fb886L

.field public static final blacklist OVERRIDE_ORIENTATION_ONLY_FOR_CAMERA:J = 0xfd28b98L

.field public static final blacklist OVERRIDE_RESPECT_REQUESTED_ORIENTATION:J = 0xe1566d4L

.field public static final blacklist OVERRIDE_SANDBOX_VIEW_BOUNDS_APIS:J = 0xe28701fL

.field public static final blacklist OVERRIDE_UNDEFINED_ORIENTATION_TO_NOSENSOR:J = 0xfd27655L

.field public static final blacklist OVERRIDE_UNDEFINED_ORIENTATION_TO_PORTRAIT:J = 0xfd27b38L

.field public static final blacklist OVERRIDE_USE_DISPLAY_LANDSCAPE_NATURAL_ORIENTATION:J = 0xf4156bcL

.field public static final whitelist PERSIST_ACROSS_REBOOTS:I = 0x2

.field public static final whitelist PERSIST_NEVER:I = 0x1

.field public static final whitelist PERSIST_ROOT_ONLY:I = 0x0

.field public static final blacklist PRIVATE_FLAG_DISABLE_ON_BACK_INVOKED_CALLBACK:I = 0x8

.field public static final blacklist PRIVATE_FLAG_ENABLE_ON_BACK_INVOKED_CALLBACK:I = 0x4

.field public static final blacklist PRIVATE_FLAG_HOME_TRANSITION_SOUND:I = 0x2

.field public static final blacklist RESIZE_MODE_FORCE_NONRESIZEABLE:I = 0xa

.field public static final greylist-max-o RESIZE_MODE_FORCE_RESIZABLE_LANDSCAPE_ONLY:I = 0x5

.field public static final greylist-max-o RESIZE_MODE_FORCE_RESIZABLE_PORTRAIT_ONLY:I = 0x6

.field public static final greylist-max-o RESIZE_MODE_FORCE_RESIZABLE_PRESERVE_ORIENTATION:I = 0x7

.field public static final greylist-max-o RESIZE_MODE_FORCE_RESIZEABLE:I = 0x4

.field public static final blacklist RESIZE_MODE_RESIZABLE_ALLOW_LIST:I = 0x100000

.field public static final blacklist RESIZE_MODE_RESIZEABLE:I = 0x2

.field public static final greylist-max-o RESIZE_MODE_RESIZEABLE_AND_PIPABLE_DEPRECATED:I = 0x3

.field public static final greylist-max-o RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION:I = 0x1

.field public static final blacklist RESIZE_MODE_UNRESIZABLE_BLOCK_LIST:I = 0x200000

.field public static final greylist-max-o RESIZE_MODE_UNRESIZEABLE:I = 0x0

.field public static final whitelist SCREEN_ORIENTATION_BEHIND:I = 0x3

.field public static final whitelist SCREEN_ORIENTATION_FULL_SENSOR:I = 0xa

.field public static final whitelist SCREEN_ORIENTATION_FULL_USER:I = 0xd

.field public static final whitelist SCREEN_ORIENTATION_LANDSCAPE:I = 0x0

.field public static final whitelist SCREEN_ORIENTATION_LOCKED:I = 0xe

.field public static final whitelist SCREEN_ORIENTATION_NOSENSOR:I = 0x5

.field public static final whitelist SCREEN_ORIENTATION_PORTRAIT:I = 0x1

.field public static final whitelist SCREEN_ORIENTATION_REVERSE_LANDSCAPE:I = 0x8

.field public static final whitelist SCREEN_ORIENTATION_REVERSE_PORTRAIT:I = 0x9

.field public static final whitelist SCREEN_ORIENTATION_SENSOR:I = 0x4

.field public static final whitelist SCREEN_ORIENTATION_SENSOR_LANDSCAPE:I = 0x6

.field public static final whitelist SCREEN_ORIENTATION_SENSOR_PORTRAIT:I = 0x7

.field public static final greylist-max-o SCREEN_ORIENTATION_UNSET:I = -0x2

.field public static final whitelist SCREEN_ORIENTATION_UNSPECIFIED:I = -0x1

.field public static final whitelist SCREEN_ORIENTATION_USER:I = 0x2

.field public static final whitelist SCREEN_ORIENTATION_USER_LANDSCAPE:I = 0xb

.field public static final whitelist SCREEN_ORIENTATION_USER_PORTRAIT:I = 0xc

.field public static final blacklist SIZE_CHANGES_SUPPORTED_METADATA:I = 0x2

.field public static final blacklist SIZE_CHANGES_SUPPORTED_OVERRIDE:I = 0x3

.field public static final blacklist SIZE_CHANGES_UNSUPPORTED_METADATA:I = 0x0

.field public static final blacklist SIZE_CHANGES_UNSUPPORTED_OVERRIDE:I = 0x1

.field public static final whitelist UIOPTION_SPLIT_ACTION_BAR_WHEN_NARROW:I = 0x1

.field public static final blacklist UNIVERSAL_RESIZABLE_BY_DEFAULT:J = 0x15498ba7L

.field private static final blacklist sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;


# instance fields
.field public whitelist colorMode:I

.field public whitelist configChanges:I

.field public whitelist documentLaunchMode:I

.field public whitelist flags:I

.field public blacklist isLaunchedFromAppsCoverLauncher:Z

.field public blacklist isLaunchedFromMultistarCoverLauncher:Z

.field public whitelist launchMode:I

.field public greylist-max-o launchToken:Ljava/lang/String;

.field public greylist-max-o lockTaskLaunchMode:I

.field private blacklist mKnownActivityEmbeddingCerts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mMaxAspectRatio:F

.field private blacklist mMinAspectRatio:F

.field public whitelist maxRecents:I

.field public blacklist mockMultiWindow:Z

.field public whitelist parentActivityName:Ljava/lang/String;

.field public whitelist permission:Ljava/lang/String;

.field public whitelist persistableMode:I

.field public blacklist privateFlags:I

.field public greylist-max-o requestedVrComponent:Ljava/lang/String;

.field public blacklist requireContentUriPermissionFromCaller:I

.field public whitelist requiredDisplayCategory:Ljava/lang/String;

.field public greylist resizeMode:I

.field public greylist-max-o rotationAnimation:I

.field public whitelist screenOrientation:I

.field public whitelist softInputMode:I

.field public blacklist supportsSizeChanges:Z

.field public whitelist targetActivity:Ljava/lang/String;

.field public whitelist taskAffinity:Ljava/lang/String;

.field public whitelist theme:I

.field public blacklist transientBarShowingDelayMillis:I

.field public whitelist uiOptions:I

.field public whitelist windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-static {v0}, Lcom/android/internal/util/Parcelling$Cache;->getOrCreate(Ljava/lang/Class;)Lcom/android/internal/util/Parcelling;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    sput-object v0, Landroid/content/pm/ActivityInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    new-instance v0, Landroid/content/pm/ActivityInfo$1;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x800
        0x1000
        0x200
        0x2000
        0x100
        0x4000
        0x10000
        0x20000
        0x20000
        0x8000
        0x40000
        0x80000
        0x200000
        0x100000
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/pm/ComponentInfo;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    iput v1, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    iput v1, p0, Landroid/content/pm/ActivityInfo;->transientBarShowingDelayMillis:I

    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->mockMultiWindow:Z

    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->isLaunchedFromAppsCoverLauncher:Z

    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->isLaunchedFromMultistarCoverLauncher:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/pm/ActivityInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/content/pm/ComponentInfo;)V

    const/4 v0, 0x2

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    iput v1, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    iput v1, p0, Landroid/content/pm/ActivityInfo;->transientBarShowingDelayMillis:I

    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->mockMultiWindow:Z

    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->isLaunchedFromAppsCoverLauncher:Z

    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->isLaunchedFromMultistarCoverLauncher:Z

    iget v0, p1, Landroid/content/pm/ActivityInfo;->theme:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    iget v0, p1, Landroid/content/pm/ActivityInfo;->launchMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    iget v0, p1, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    iget v0, p1, Landroid/content/pm/ActivityInfo;->flags:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    iget v0, p1, Landroid/content/pm/ActivityInfo;->privateFlags:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    iget v0, p1, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iget v0, p1, Landroid/content/pm/ActivityInfo;->configChanges:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    iget v0, p1, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    iget v0, p1, Landroid/content/pm/ActivityInfo;->uiOptions:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    iget v0, p1, Landroid/content/pm/ActivityInfo;->maxRecents:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    iget v0, p1, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    iget v0, p1, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    iget v0, p1, Landroid/content/pm/ActivityInfo;->colorMode:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    iget v0, p1, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    iput v0, p0, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    iget v0, p1, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    iput v0, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    iget-boolean v0, p1, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    iget v0, p1, Landroid/content/pm/ActivityInfo;->requireContentUriPermissionFromCaller:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->requireContentUriPermissionFromCaller:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APPS_CUTOUT:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Landroid/content/pm/ActivityInfo;->isLaunchedFromAppsCoverLauncher:Z

    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->isLaunchedFromAppsCoverLauncher:Z

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT:Z

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Landroid/content/pm/ActivityInfo;->isLaunchedFromMultistarCoverLauncher:Z

    iput-boolean p1, p0, Landroid/content/pm/ActivityInfo;->isLaunchedFromMultistarCoverLauncher:Z

    :cond_1
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/content/pm/ComponentInfo;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x2

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    const/4 v1, -0x1

    iput v1, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    iput v1, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    iput v1, p0, Landroid/content/pm/ActivityInfo;->transientBarShowingDelayMillis:I

    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->mockMultiWindow:Z

    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->isLaunchedFromAppsCoverLauncher:Z

    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->isLaunchedFromMultistarCoverLauncher:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-direct {v0, p1}, Landroid/content/pm/ActivityInfo$WindowLayout;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    sget-object v0, Landroid/content/pm/ActivityInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->unparcel(Landroid/os/Parcel;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/ActivityInfo;->requireContentUriPermissionFromCaller:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APPS_CUTOUT:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/pm/ActivityInfo;->isLaunchedFromAppsCoverLauncher:Z

    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/content/pm/ActivityInfo;->isLaunchedFromMultistarCoverLauncher:Z

    :cond_3
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/ActivityInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-r activityInfoConfigJavaToNative(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    const/4 v3, 0x1

    shl-int/2addr v3, v0

    and-int/2addr v3, p0

    if-eqz v3, :cond_0

    aget v2, v2, v0

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static greylist-max-o activityInfoConfigNativeToJava(I)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Landroid/content/pm/ActivityInfo;->CONFIG_NATIVE_BITS:[I

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget v2, v2, v0

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static greylist-max-o colorModeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "COLOR_MODE_A8"

    return-object p0

    :cond_1
    const-string p0, "COLOR_MODE_HDR"

    return-object p0

    :cond_2
    const-string p0, "COLOR_MODE_WIDE_COLOR_GAMUT"

    return-object p0

    :cond_3
    const-string p0, "COLOR_MODE_DEFAULT"

    return-object p0
.end method

.method private blacklist getRealConfigChangedIfNeeded()I
    .locals 0

    const/high16 p0, 0x400000

    return p0
.end method

.method public static blacklist isFixedOrientation(I)Z
    .locals 1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result p0

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

.method public static greylist-max-o isFixedOrientationLandscape(I)Z
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

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

.method public static greylist-max-o isFixedOrientationPortrait(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/16 v1, 0x9

    if-eq p0, v1, :cond_1

    const/16 v1, 0xc

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static greylist-max-o isPreserveOrientationMode(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

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

.method public static blacklist isRequiredContentUriPermissionRead(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public static blacklist isRequiredContentUriPermissionWrite(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static greylist isResizeableMode(I)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x100000

    and-int/2addr v0, p0

    if-nez v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static greylist isTranslucentOrFloating(Landroid/content/res/TypedArray;)Z
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    const/4 v2, 0x4

    invoke-virtual {p0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    if-nez p0, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist launchModeToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "LAUNCH_SINGLE_INSTANCE_PER_TASK"

    return-object p0

    :cond_1
    const-string p0, "LAUNCH_SINGLE_INSTANCE"

    return-object p0

    :cond_2
    const-string p0, "LAUNCH_SINGLE_TASK"

    return-object p0

    :cond_3
    const-string p0, "LAUNCH_SINGLE_TOP"

    return-object p0

    :cond_4
    const-string p0, "LAUNCH_MULTIPLE"

    return-object p0
.end method

.method public static final greylist-max-o lockTaskLaunchModeToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "LOCK_TASK_LAUNCH_MODE_IF_ALLOWLISTED"

    return-object p0

    :cond_1
    const-string p0, "LOCK_TASK_LAUNCH_MODE_ALWAYS"

    return-object p0

    :cond_2
    const-string p0, "LOCK_TASK_LAUNCH_MODE_NEVER"

    return-object p0

    :cond_3
    const-string p0, "LOCK_TASK_LAUNCH_MODE_DEFAULT"

    return-object p0
.end method

.method private greylist-max-o persistableModeToString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UNKNOWN="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "PERSIST_ACROSS_REBOOTS"

    return-object p0

    :cond_1
    const-string p0, "PERSIST_NEVER"

    return-object p0

    :cond_2
    const-string p0, "PERSIST_ROOT_ONLY"

    return-object p0
.end method

.method private blacklist requiredContentUriPermissionToFullString(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "unknown="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "CONTENT_URI_PERMISSION_READ_AND_WRITE"

    return-object p0

    :cond_1
    const-string p0, "CONTENT_URI_PERMISSION_READ_OR_WRITE"

    return-object p0

    :cond_2
    const-string p0, "CONTENT_URI_PERMISSION_WRITE"

    return-object p0

    :cond_3
    const-string p0, "CONTENT_URI_PERMISSION_READ"

    return-object p0

    :cond_4
    const-string p0, "CONTENT_URI_PERMISSION_NONE"

    return-object p0
.end method

.method public static blacklist requiredContentUriPermissionToShortString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "read and write"

    return-object p0

    :cond_1
    const-string/jumbo p0, "read or write"

    return-object p0

    :cond_2
    const-string/jumbo p0, "write"

    return-object p0

    :cond_3
    const-string/jumbo p0, "read"

    return-object p0

    :cond_4
    const-string/jumbo p0, "none"

    return-object p0
.end method

.method public static greylist-max-o resizeModeToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_9

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7

    const/4 v0, 0x4

    if-eq p0, v0, :cond_6

    const/4 v0, 0x5

    if-eq p0, v0, :cond_5

    const/4 v0, 0x6

    if-eq p0, v0, :cond_4

    const/4 v0, 0x7

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x100000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const-string p0, "RESIZE_MODE_RESIZEABLE_S"

    return-object p0

    :cond_0
    const/high16 v0, 0x200000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    const-string p0, "RESIZE_MODE_UNRESIZEABLE_S"

    return-object p0

    :cond_1
    const/16 v0, 0xa

    if-ne p0, v0, :cond_2

    const-string p0, "RESIZE_MODE_FORCE_NONRESIZEABLE"

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "RESIZE_MODE_FORCE_RESIZABLE_PRESERVE_ORIENTATION"

    return-object p0

    :cond_4
    const-string p0, "RESIZE_MODE_FORCE_RESIZABLE_PORTRAIT_ONLY"

    return-object p0

    :cond_5
    const-string p0, "RESIZE_MODE_FORCE_RESIZABLE_LANDSCAPE_ONLY"

    return-object p0

    :cond_6
    const-string p0, "RESIZE_MODE_FORCE_RESIZEABLE"

    return-object p0

    :cond_7
    const-string p0, "RESIZE_MODE_RESIZEABLE"

    return-object p0

    :cond_8
    const-string p0, "RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION"

    return-object p0

    :cond_9
    const-string p0, "RESIZE_MODE_UNRESIZEABLE"

    return-object p0
.end method

.method public static blacklist reverseOrientation(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    if-eq p0, v0, :cond_2

    const/16 v0, 0xc

    const/16 v1, 0xb

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    return p0

    :pswitch_0
    const/16 p0, 0x8

    return p0

    :pswitch_1
    const/16 p0, 0x9

    return p0

    :pswitch_2
    const/4 p0, 0x6

    return p0

    :pswitch_3
    const/4 p0, 0x7

    return p0

    :cond_0
    return v1

    :cond_1
    return v0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static greylist-max-o screenOrientationToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "SCREEN_ORIENTATION_LOCKED"

    return-object p0

    :pswitch_1
    const-string p0, "SCREEN_ORIENTATION_FULL_USER"

    return-object p0

    :pswitch_2
    const-string p0, "SCREEN_ORIENTATION_USER_PORTRAIT"

    return-object p0

    :pswitch_3
    const-string p0, "SCREEN_ORIENTATION_USER_LANDSCAPE"

    return-object p0

    :pswitch_4
    const-string p0, "SCREEN_ORIENTATION_FULL_SENSOR"

    return-object p0

    :pswitch_5
    const-string p0, "SCREEN_ORIENTATION_REVERSE_PORTRAIT"

    return-object p0

    :pswitch_6
    const-string p0, "SCREEN_ORIENTATION_REVERSE_LANDSCAPE"

    return-object p0

    :pswitch_7
    const-string p0, "SCREEN_ORIENTATION_SENSOR_PORTRAIT"

    return-object p0

    :pswitch_8
    const-string p0, "SCREEN_ORIENTATION_SENSOR_LANDSCAPE"

    return-object p0

    :pswitch_9
    const-string p0, "SCREEN_ORIENTATION_NOSENSOR"

    return-object p0

    :pswitch_a
    const-string p0, "SCREEN_ORIENTATION_SENSOR"

    return-object p0

    :pswitch_b
    const-string p0, "SCREEN_ORIENTATION_BEHIND"

    return-object p0

    :pswitch_c
    const-string p0, "SCREEN_ORIENTATION_USER"

    return-object p0

    :pswitch_d
    const-string p0, "SCREEN_ORIENTATION_PORTRAIT"

    return-object p0

    :pswitch_e
    const-string p0, "SCREEN_ORIENTATION_LANDSCAPE"

    return-object p0

    :pswitch_f
    const-string p0, "SCREEN_ORIENTATION_UNSPECIFIED"

    return-object p0

    :pswitch_10
    const-string p0, "SCREEN_ORIENTATION_UNSET"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x2
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

.method public static blacklist sizeChangesSupportModeToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "SIZE_CHANGES_SUPPORTED_OVERRIDE"

    return-object p0

    :cond_1
    const-string p0, "SIZE_CHANGES_SUPPORTED_METADATA"

    return-object p0

    :cond_2
    const-string p0, "SIZE_CHANGES_UNSUPPORTED_OVERRIDE"

    return-object p0

    :cond_3
    const-string p0, "SIZE_CHANGES_UNSUPPORTED_METADATA"

    return-object p0
.end method


# virtual methods
.method public blacklist alwaysSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z
    .locals 2

    const-wide/32 v0, 0xb06f389

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p0}, Landroid/content/pm/ConstrainDisplayApisConfig;->getAlwaysConstrainDisplayApis(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

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

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/ActivityInfo;->dump(Landroid/util/Printer;Ljava/lang/String;I)V

    return-void
.end method

.method public greylist-max-o dump(Landroid/util/Printer;Ljava/lang/String;I)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->dumpFront(Landroid/util/Printer;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "permission="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "taskAffinity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " targetActivity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " persistableMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/content/pm/ActivityInfo;->persistableModeToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_1
    iget v1, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    if-nez v1, :cond_2

    iget v1, p0, Landroid/content/pm/ActivityInfo;->flags:I

    if-nez v1, :cond_2

    iget v1, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    if-nez v1, :cond_2

    iget v1, p0, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v1, :cond_3

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "launchMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->launchModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " flags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " privateFlags=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " theme=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_3
    iget v1, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    iget v1, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    if-nez v1, :cond_4

    iget v1, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    if-eqz v1, :cond_5

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "screenOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configChanges=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " softInputMode=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_5
    iget v1, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uiOptions=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_6
    if-eqz v0, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "lockTaskLaunchMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->lockTaskLaunchModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "windowLayout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v2, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v3, v3, Landroid/content/pm/ActivityInfo$WindowLayout;->widthFraction:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v4, v4, Landroid/content/pm/ActivityInfo$WindowLayout;->height:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v2, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->heightFraction:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v2, v2, Landroid/content/pm/ActivityInfo$WindowLayout;->gravity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resizeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requestedVrComponent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "maxAspectRatio="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result v1

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "minAspectRatio="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_b
    iget-boolean v1, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "supportsSizeChanges=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_c
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "knownActivityEmbeddingCerts="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_d
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requiredDisplayCategory="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_e
    if-eqz v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "requireContentUriPermissionFromCaller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/ActivityInfo;->requireContentUriPermissionFromCaller:I

    invoke-direct {p0, v1}, Landroid/content/pm/ActivityInfo;->requiredContentUriPermissionToFullString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :cond_f
    invoke-super {p0, p1, p2, p3}, Landroid/content/pm/ComponentInfo;->dumpBack(Landroid/util/Printer;Ljava/lang/String;I)V

    return-void
.end method

.method public whitelist getKnownActivityEmbeddingCerts()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    if-nez p0, :cond_0

    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :cond_0
    return-object p0
.end method

.method public blacklist getManifestMinAspectRatio()F
    .locals 0

    iget p0, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    return p0
.end method

.method public blacklist getMaxAspectRatio()F
    .locals 0

    iget p0, p0, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    return p0
.end method

.method public blacklist getMinAspectRatio()F
    .locals 0

    iget p0, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    return p0
.end method

.method public greylist-max-o getRealConfigChanged()I
    .locals 2

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    or-int/lit16 v0, v0, 0xc00

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    :goto_0
    invoke-direct {p0}, Landroid/content/pm/ActivityInfo;->getRealConfigChangedIfNeeded()I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final whitelist getThemeResource()I
    .locals 1

    iget v0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->theme:I

    return p0
.end method

.method public blacklist hasFixedAspectRatio()Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getMaxAspectRatio()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->getMinAspectRatio()F

    move-result p0

    cmpl-float p0, p0, v1

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

.method public blacklist hasOnBackInvokedCallbackEnabled()Z
    .locals 0

    iget p0, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    and-int/lit8 p0, p0, 0xc

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isChangeEnabled(J)Z
    .locals 0

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ApplicationInfo;->isChangeEnabled(J)Z

    move-result p0

    return p0
.end method

.method public greylist-max-o isFixedOrientation()Z
    .locals 0

    iget p0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->isFixedOrientation(I)Z

    move-result p0

    return p0
.end method

.method greylist-max-o isFixedOrientationLandscape()Z
    .locals 0

    iget p0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationLandscape(I)Z

    move-result p0

    return p0
.end method

.method greylist-max-o isFixedOrientationPortrait()Z
    .locals 0

    iget p0, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->isFixedOrientationPortrait(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isOnBackInvokedCallbackEnabled()Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->hasOnBackInvokedCallbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist neverSandboxDisplayApis(Landroid/content/pm/ConstrainDisplayApisConfig;)Z
    .locals 2

    const-wide/32 v0, 0xb0468a2

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p0}, Landroid/content/pm/ConstrainDisplayApisConfig;->getNeverConstrainDisplayApis(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

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

.method public blacklist setKnownActivityEmbeddingCerts(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist setMaxAspectRatio(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput p1, p0, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    return-void
.end method

.method public blacklist setMinAspectRatio(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput p1, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    return-void
.end method

.method public blacklist shouldCheckMinWidthHeightForMultiWindow()Z
    .locals 2

    const-wide/32 v0, 0xbc7f809

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/ActivityInfo;->isChangeEnabled(J)Z

    move-result p0

    return p0
.end method

.method public greylist supportsPictureInPicture()Z
    .locals 1

    iget p0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v0, 0x400000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ActivityInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/content/pm/ComponentInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Landroid/content/pm/ActivityInfo;->theme:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/content/pm/ActivityInfo;->launchMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget-object p2, p0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget p2, p0, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/content/pm/ActivityInfo;->privateFlags:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/content/pm/ActivityInfo;->softInputMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget p2, p0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/content/pm/ActivityInfo;->lockTaskLaunchMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    invoke-virtual {p2, p1}, Landroid/content/pm/ActivityInfo$WindowLayout;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget p2, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/content/pm/ActivityInfo;->requestedVrComponent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget p2, p0, Landroid/content/pm/ActivityInfo;->rotationAnimation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/content/pm/ActivityInfo;->colorMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Landroid/content/pm/ActivityInfo;->mMaxAspectRatio:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget p2, p0, Landroid/content/pm/ActivityInfo;->mMinAspectRatio:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean p2, p0, Landroid/content/pm/ActivityInfo;->supportsSizeChanges:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    sget-object p2, Landroid/content/pm/ActivityInfo;->sForStringSet:Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->mKnownActivityEmbeddingCerts:Ljava/util/Set;

    iget v1, p0, Landroid/content/pm/ActivityInfo;->flags:I

    invoke-virtual {p2, v0, p1, v1}, Lcom/android/internal/util/Parcelling$BuiltIn$ForStringSet;->parcel(Ljava/util/Set;Landroid/os/Parcel;I)V

    iget-object p2, p0, Landroid/content/pm/ActivityInfo;->requiredDisplayCategory:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    iget p2, p0, Landroid/content/pm/ActivityInfo;->requireContentUriPermissionFromCaller:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APPS_CUTOUT:Z

    if-eqz p2, :cond_1

    iget-boolean p2, p0, Landroid/content/pm/ActivityInfo;->isLaunchedFromAppsCoverLauncher:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    :cond_1
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT:Z

    if-eqz p2, :cond_2

    iget-boolean p0, p0, Landroid/content/pm/ActivityInfo;->isLaunchedFromMultistarCoverLauncher:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    :cond_2
    return-void
.end method
