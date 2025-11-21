.class public Landroid/app/WindowConfiguration;
.super Ljava/lang/Object;
.source "WindowConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/WindowConfiguration$DexTaskDocking;,
        Landroid/app/WindowConfiguration$StagePosition;,
        Landroid/app/WindowConfiguration$StageType;,
        Landroid/app/WindowConfiguration$WindowConfig;,
        Landroid/app/WindowConfiguration$EmbedActivityMode;,
        Landroid/app/WindowConfiguration$FlexPanelMode;,
        Landroid/app/WindowConfiguration$AlwaysOnTop;,
        Landroid/app/WindowConfiguration$ActivityType;,
        Landroid/app/WindowConfiguration$WindowingMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable<",
        "Landroid/app/WindowConfiguration;",
        ">;"
    }
.end annotation


# static fields
.field public static final blacklist ACTIVITY_TYPE_ASSISTANT:I = 0x4

.field public static final blacklist ACTIVITY_TYPE_DREAM:I = 0x5

.field public static final blacklist ACTIVITY_TYPE_HOME:I = 0x2

.field public static final blacklist ACTIVITY_TYPE_RECENTS:I = 0x3

.field public static final blacklist ACTIVITY_TYPE_STANDARD:I = 0x1

.field public static final blacklist ACTIVITY_TYPE_UNDEFINED:I = 0x0

.field private static final blacklist ALWAYS_ON_TOP_OFF:I = 0x2

.field private static final blacklist ALWAYS_ON_TOP_ON:I = 0x1

.field private static final blacklist ALWAYS_ON_TOP_UNDEFINED:I = 0x0

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/WindowConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist DEX_TASK_DOCKING_LEFT:I = 0x1

.field public static final blacklist DEX_TASK_DOCKING_NONE:I = 0x0

.field public static final blacklist DEX_TASK_DOCKING_RIGHT:I = 0x2

.field public static final blacklist DEX_TASK_DOCKING_UNDEFINED:I = -0x1

.field public static final blacklist EMBED_ACTIVITY_MODE_BOTTOM:I = 0x5

.field public static final blacklist EMBED_ACTIVITY_MODE_FULL:I = 0x1

.field public static final blacklist EMBED_ACTIVITY_MODE_LEFT:I = 0x2

.field public static final blacklist EMBED_ACTIVITY_MODE_RIGHT:I = 0x3

.field public static final blacklist EMBED_ACTIVITY_MODE_TOP:I = 0x4

.field public static final blacklist EMBED_ACTIVITY_MODE_UNDEFINED:I = 0x0

.field public static final blacklist FLEX_PANEL_MODE_OFF:I = 0x2

.field public static final blacklist FLEX_PANEL_MODE_ON:I = 0x1

.field public static final blacklist FLEX_PANEL_MODE_UNDEFINED:I = 0x0

.field public static final blacklist POP_OVER_OFF:I = 0x2

.field public static final blacklist POP_OVER_ON:I = 0x1

.field public static final blacklist POP_OVER_ON_WITHOUT_OUTLINE_EFFECT:I = 0x3

.field public static final blacklist POP_OVER_UNDEFINED:I = 0x0

.field public static final blacklist ROTATION_UNDEFINED:I = -0x1

.field static final blacklist STAGE_CONFIG_POSITION_MASK:I = 0x78

.field static final blacklist STAGE_CONFIG_TYPE_MASK:I = 0x7

.field public static final blacklist STAGE_POSITION_BOTTOM:I = 0x40

.field public static final blacklist STAGE_POSITION_LEFT:I = 0x8

.field public static final blacklist STAGE_POSITION_RIGHT:I = 0x20

.field public static final blacklist STAGE_POSITION_TOP:I = 0x10

.field public static final blacklist STAGE_TYPE_CELL:I = 0x4

.field public static final blacklist STAGE_TYPE_MAIN:I = 0x1

.field public static final blacklist STAGE_TYPE_SIDE:I = 0x2

.field public static final blacklist STAGE_UNDEFINED:I = 0x0

.field public static final blacklist WINDOWING_MODE_FREEFORM:I = 0x5

.field public static final blacklist WINDOWING_MODE_FULLSCREEN:I = 0x1

.field public static final blacklist WINDOWING_MODE_MULTI_WINDOW:I = 0x6

.field public static final blacklist WINDOWING_MODE_PINNED:I = 0x2

.field public static final blacklist WINDOWING_MODE_UNDEFINED:I = 0x0

.field public static final greylist-max-o WINDOW_CONFIG_ACTIVITY_TYPE:I = 0x10

.field public static final blacklist WINDOW_CONFIG_ALWAYS_ON_TOP:I = 0x20

.field public static final greylist-max-o WINDOW_CONFIG_APP_BOUNDS:I = 0x2

.field public static final greylist-max-o WINDOW_CONFIG_BOUNDS:I = 0x1

.field public static final blacklist WINDOW_CONFIG_COMPAT_SANDBOX:I = 0x2000000

.field public static final blacklist WINDOW_CONFIG_DEX_TASK_DOCKING:I = 0x1000000

.field public static final blacklist WINDOW_CONFIG_DISPLAY_ROTATION:I = 0x80

.field public static final blacklist WINDOW_CONFIG_EMBED_ACTIVITY_MODE:I = 0x800000

.field public static final blacklist WINDOW_CONFIG_FLEX_PANEL_MODE:I = 0x80000

.field public static final blacklist WINDOW_CONFIG_MAX_BOUNDS:I = 0x4

.field public static final blacklist WINDOW_CONFIG_ROTATION:I = 0x40

.field public static final blacklist WINDOW_CONFIG_STAGE_POSITION:I = 0x200000

.field public static final blacklist WINDOW_CONFIG_STAGE_TYPE:I = 0x100000

.field public static final greylist-max-o WINDOW_CONFIG_WINDOWING_MODE:I = 0x8


# instance fields
.field private greylist-max-o mActivityType:I

.field private blacklist mAlwaysOnTop:I

.field private greylist-max-o mAppBounds:Landroid/graphics/Rect;

.field private final greylist-max-o mBounds:Landroid/graphics/Rect;

.field private blacklist mCompatSandboxBounds:Landroid/graphics/Rect;

.field private blacklist mCompatSandboxFlags:I

.field private blacklist mCompatSandboxScale:F

.field private blacklist mCompatSandboxScaledBounds:Landroid/graphics/Rect;

.field private blacklist mDexTaskDockingState:I

.field private blacklist mDisplayRotation:I

.field private blacklist mEmbedActivityMode:I

.field private blacklist mFlexPanelMode:I

.field private final blacklist mMaxBounds:Landroid/graphics/Rect;

.field private blacklist mOverlappingWithCutout:Z

.field private blacklist mPopOverState:I

.field private blacklist mRotation:I

.field private blacklist mStage:I

.field private greylist-max-o mWindowingMode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/WindowConfiguration$1;

    invoke-direct {v0}, Landroid/app/WindowConfiguration$1;-><init>()V

    sput-object v0, Landroid/app/WindowConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    iput-boolean v1, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    iput v1, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    iput v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    iput v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->unset()V

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/app/WindowConfiguration;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    iput-boolean v1, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    iput v1, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    iput v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    iput v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setTo(Landroid/app/WindowConfiguration;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    iput-boolean v1, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    iput v1, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    iput v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    iput v0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/WindowConfiguration-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/WindowConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static greylist-max-o activityTypeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "dream"

    return-object p0

    :cond_1
    const-string p0, "assistant"

    return-object p0

    :cond_2
    const-string/jumbo p0, "recents"

    return-object p0

    :cond_3
    const-string p0, "home"

    return-object p0

    :cond_4
    const-string/jumbo p0, "standard"

    return-object p0

    :cond_5
    const-string/jumbo p0, "undefined"

    return-object p0
.end method

.method public static blacklist alwaysOnTopToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "off"

    return-object p0

    :cond_1
    const-string/jumbo p0, "on"

    return-object p0

    :cond_2
    const-string/jumbo p0, "undefined"

    return-object p0
.end method

.method public static blacklist areConfigurationsEqualForDisplay(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 2

    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result p0

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getDisplayRotation()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private blacklist compatSandboxInfoToString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    const-string v2, ""

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " mCompatSandboxFlags=0x"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    const-string v4, " mCompatSandboxScale="

    if-eqz v3, :cond_1

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist dexTaskDockingStateToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "right"

    return-object p0

    :cond_1
    const-string p0, "left"

    return-object p0

    :cond_2
    const-string/jumbo p0, "none"

    return-object p0

    :cond_3
    const-string/jumbo p0, "undefined"

    return-object p0
.end method

.method public static blacklist embedActivityModeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "bottom"

    return-object p0

    :cond_1
    const-string/jumbo p0, "top"

    return-object p0

    :cond_2
    const-string/jumbo p0, "right"

    return-object p0

    :cond_3
    const-string p0, "left"

    return-object p0

    :cond_4
    const-string p0, "full"

    return-object p0

    :cond_5
    const-string/jumbo p0, "undefined"

    return-object p0
.end method

.method public static blacklist flexPanelModeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "off"

    return-object p0

    :cond_1
    const-string/jumbo p0, "on"

    return-object p0

    :cond_2
    const-string/jumbo p0, "undefined"

    return-object p0
.end method

.method public static blacklist inMultiWindowMode(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isDexTaskDocking(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static greylist-max-o isFloating(I)Z
    .locals 1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

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

.method public static blacklist isSplitScreenWindowingMode(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z
    .locals 0

    iget p0, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static blacklist popOverStateToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "on-without-outline-effect"

    return-object p0

    :cond_1
    const-string/jumbo p0, "off"

    return-object p0

    :cond_2
    const-string/jumbo p0, "on"

    return-object p0

    :cond_3
    const-string/jumbo p0, "undefined"

    return-object p0
.end method

.method private static blacklist scaleBounds(FLandroid/graphics/Rect;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    mul-float/2addr v2, p0

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p0

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    add-float/2addr v0, v3

    float-to-int v0, v0

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    mul-float/2addr v1, p0

    add-float/2addr v1, v3

    float-to-int p0, v1

    add-int/2addr v0, p0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private blacklist setAlwaysOnTop(I)V
    .locals 0

    iput p1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    return-void
.end method

.method public static blacklist stageConfigToString(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit8 v2, p0, 0x7

    if-eqz v2, :cond_b

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "cell/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "side/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "main/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    and-int/lit8 p0, p0, 0x78

    const/16 v2, 0x8

    if-eq p0, v2, :cond_a

    const/16 v2, 0x10

    if-eq p0, v2, :cond_9

    const/16 v2, 0x18

    if-eq p0, v2, :cond_8

    if-eq p0, v1, :cond_7

    const/16 v1, 0x30

    if-eq p0, v1, :cond_6

    const/16 v1, 0x40

    if-eq p0, v1, :cond_5

    const/16 v1, 0x48

    if-eq p0, v1, :cond_4

    const/16 v1, 0x60

    if-eq p0, v1, :cond_3

    goto :goto_1

    :cond_3
    const-string/jumbo p0, "right-bottom"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const-string p0, "left-bottom"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string p0, "bottom"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const-string/jumbo p0, "right-top"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    const-string/jumbo p0, "right"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_8
    const-string p0, "left-top"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    const-string/jumbo p0, "top"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_a
    const-string p0, "left"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const-string/jumbo p0, "undefined"

    return-object p0
.end method

.method public static blacklist stagePositionToString(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    and-int/lit8 p0, p0, 0x78

    if-eqz p0, :cond_8

    const/16 v2, 0x8

    if-eq p0, v2, :cond_7

    const/16 v2, 0x10

    if-eq p0, v2, :cond_6

    const/16 v2, 0x18

    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_4

    const/16 v1, 0x30

    if-eq p0, v1, :cond_3

    const/16 v1, 0x40

    if-eq p0, v1, :cond_2

    const/16 v1, 0x48

    if-eq p0, v1, :cond_1

    const/16 v1, 0x60

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "right-bottom"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p0, "left-bottom"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string p0, "bottom"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string/jumbo p0, "right-top"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const-string/jumbo p0, "right"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const-string p0, "left-top"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    const-string/jumbo p0, "top"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_7
    const-string p0, "left"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    const-string/jumbo p0, "undefined"

    return-object p0
.end method

.method public static greylist-max-o supportSplitScreenWindowingMode(I)Z
    .locals 1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static greylist-max-o windowingModeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string/jumbo p0, "multi-window"

    return-object p0

    :cond_1
    const-string p0, "freeform"

    return-object p0

    :cond_2
    const-string/jumbo p0, "pinned"

    return-object p0

    :cond_3
    const-string p0, "fullscreen"

    return-object p0

    :cond_4
    const-string/jumbo p0, "undefined"

    return-object p0
.end method


# virtual methods
.method public greylist-max-o canReceiveKeys()Z
    .locals 1

    iget p0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o canResizeTask()Z
    .locals 1

    iget p0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

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

.method public blacklist compareTo(Landroid/app/WindowConfiguration;)I
    .locals 2

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    if-eqz v0, :cond_5

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_5

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_2

    return v0

    :cond_2
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_3

    return v0

    :cond_3
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_4

    return v0

    :cond_4
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_5

    return v0

    :cond_5
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_6

    return v0

    :cond_6
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_7

    return v0

    :cond_7
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_8

    return v0

    :cond_8
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_9

    return v0

    :cond_9
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_a

    return v0

    :cond_a
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_b

    return v0

    :cond_b
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_c

    return v0

    :cond_c
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_d

    return v0

    :cond_d
    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    iget v1, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_e

    return v0

    :cond_e
    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    iget v1, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_f

    return v0

    :cond_f
    iget v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    iget v1, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_10

    return v0

    :cond_10
    iget v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    iget v1, p1, Landroid/app/WindowConfiguration;->mRotation:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_11

    return v0

    :cond_11
    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    iget v1, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_12

    return v0

    :cond_12
    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    iget v1, p1, Landroid/app/WindowConfiguration;->mStage:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_13

    return v0

    :cond_13
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v0, :cond_14

    iget v0, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    iget v1, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    sub-int/2addr v0, v1

    if-eqz v0, :cond_14

    return v0

    :cond_14
    iget p0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    iget p1, p1, Landroid/app/WindowConfiguration;->mPopOverState:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    check-cast p1, Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result p0

    return p0
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o diff(Landroid/app/WindowConfiguration;Z)J
    .locals 6

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget-object v1, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    if-nez p2, :cond_1

    iget-object v2, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eq v2, v3, :cond_3

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    :cond_3
    iget-object v2, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    :cond_4
    if-nez p2, :cond_5

    iget v2, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eqz v2, :cond_6

    :cond_5
    iget v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eq v2, v3, :cond_6

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    :cond_6
    if-nez p2, :cond_7

    iget v2, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v2, :cond_8

    :cond_7
    iget v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eq v2, v3, :cond_8

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    :cond_8
    if-nez p2, :cond_9

    iget v2, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eqz v2, :cond_a

    :cond_9
    iget v2, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eq v2, v3, :cond_a

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    :cond_a
    const/4 v2, -0x1

    if-nez p2, :cond_b

    iget v3, p1, Landroid/app/WindowConfiguration;->mRotation:I

    if-eq v3, v2, :cond_c

    :cond_b
    iget v3, p0, Landroid/app/WindowConfiguration;->mRotation:I

    iget v4, p1, Landroid/app/WindowConfiguration;->mRotation:I

    if-eq v3, v4, :cond_c

    const-wide/16 v3, 0x40

    or-long/2addr v0, v3

    :cond_c
    if-nez p2, :cond_d

    iget v3, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v3, v2, :cond_e

    :cond_d
    iget v2, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v2, v3, :cond_e

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    :cond_e
    if-nez p2, :cond_f

    iget v2, p1, Landroid/app/WindowConfiguration;->mStage:I

    if-eqz v2, :cond_11

    :cond_f
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v2

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v3

    if-eq v3, v2, :cond_10

    const-wide/32 v2, 0x100000

    or-long/2addr v0, v2

    :cond_10
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v2

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v3

    if-eq v3, v2, :cond_11

    const-wide/32 v2, 0x200000

    or-long/2addr v0, v2

    :cond_11
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v2, :cond_13

    if-nez p2, :cond_12

    iget v2, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    if-eqz v2, :cond_13

    :cond_12
    iget v2, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    iget v3, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    if-eq v2, v3, :cond_13

    const-wide/32 v2, 0x800000

    or-long/2addr v0, v2

    :cond_13
    const-wide/32 v2, 0x2000000

    if-nez p2, :cond_14

    iget v4, p1, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    if-eqz v4, :cond_15

    :cond_14
    iget v4, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    iget v5, p1, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    if-eq v4, v5, :cond_15

    or-long p0, v0, v2

    return-wide p0

    :cond_15
    if-nez p2, :cond_16

    iget v4, p1, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_17

    :cond_16
    iget v4, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    iget v5, p1, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_17

    or-long p0, v0, v2

    return-wide p0

    :cond_17
    if-nez p2, :cond_18

    iget-object p2, p1, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    if-eqz p2, :cond_1a

    :cond_18
    iget-object p0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    iget-object p1, p1, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    if-eq p0, p1, :cond_1a

    if-eqz p0, :cond_19

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1a

    :cond_19
    or-long p0, v0, v2

    return-wide p0

    :cond_1a
    return-wide v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 3

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    const-wide v0, 0x10500000002L

    iget v2, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10500000003L

    iget v2, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object p0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    const-wide v0, 0x10b00000005L

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Landroid/app/WindowConfiguration;

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->compareTo(Landroid/app/WindowConfiguration;)I

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public blacklist getActivityType()I
    .locals 0

    iget p0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    return p0
.end method

.method public blacklist getAppBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist getBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist getCompatSandboxBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist getCompatSandboxFlags()I
    .locals 1

    iget p0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public blacklist getCompatSandboxInvScale()F
    .locals 2

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getCompatSandboxFlags()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    iget p0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_0

    div-float p0, v1, p0

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    return p0

    :cond_0
    return v1
.end method

.method public blacklist getCompatSandboxScaledBounds()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScaledBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScaledBounds:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScaledBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getCompatSandboxBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getCompatSandboxInvScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScaledBounds:Landroid/graphics/Rect;

    invoke-static {v0, v1}, Landroid/app/WindowConfiguration;->scaleBounds(FLandroid/graphics/Rect;)V

    :cond_1
    iget-object p0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScaledBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist getDexTaskDockingState()I
    .locals 0

    iget p0, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    return p0
.end method

.method public blacklist getDisplayRotation()I
    .locals 0

    iget p0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    return p0
.end method

.method public blacklist getEmbedActivityMode()I
    .locals 0

    iget p0, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    return p0
.end method

.method public blacklist getMaxBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public blacklist getPopOverState()I
    .locals 0

    iget p0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    return p0
.end method

.method public blacklist getRotation()I
    .locals 0

    iget p0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    return p0
.end method

.method public blacklist getStage()I
    .locals 0

    iget p0, p0, Landroid/app/WindowConfiguration;->mStage:I

    return p0
.end method

.method public blacklist getStagePosition()I
    .locals 0

    iget p0, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 p0, p0, 0x78

    return p0
.end method

.method public blacklist getStagePositionToString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Landroid/app/WindowConfiguration;->mStage:I

    invoke-static {p0}, Landroid/app/WindowConfiguration;->stagePositionToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getStageType()I
    .locals 0

    iget p0, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public blacklist getStageTypeToString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget p0, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "cell"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "side"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "main"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string/jumbo p0, "undefined"

    return-object p0
.end method

.method public blacklist getWindowingMode()I
    .locals 0

    iget p0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    return p0
.end method

.method public greylist-max-o hasMovementAnimations()Z
    .locals 1

    iget p0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public greylist-max-o hasWindowShadow()Z
    .locals 2

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->tasksAreFloating()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/WindowConfiguration;->mRotation:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Landroid/app/WindowConfiguration;->mStage:I

    add-int/2addr v0, p0

    return v0
.end method

.method public greylist-max-o isAlwaysOnTop()Z
    .locals 4

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget v1, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    return v2

    :cond_1
    iget p0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    const/4 v1, 0x0

    if-eq p0, v2, :cond_2

    return v1

    :cond_2
    if-eq v0, v3, :cond_4

    const/4 p0, 0x6

    if-ne v0, p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method public blacklist isEmbedded()Z
    .locals 2

    iget v0, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 p0, 0x2

    if-eq v0, p0, :cond_0

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    const/4 p0, 0x4

    if-eq v0, p0, :cond_0

    const/4 p0, 0x5

    if-eq v0, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    iget p0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-static {p0}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public blacklist isFlexPanelEnabled()Z
    .locals 1

    iget p0, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isOverlappingWithCutout()Z
    .locals 0

    iget-boolean p0, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    return p0
.end method

.method public blacklist isPopOver()Z
    .locals 2

    iget p0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

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

.method public blacklist isPopOverWithoutOutlineEffect()Z
    .locals 1

    iget p0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isSplitScreen()Z
    .locals 0

    iget p0, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 p0, p0, 0x7

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist overrideUndefinedFrom(Landroid/app/WindowConfiguration;)V
    .locals 1

    iget v0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    if-nez v0, :cond_0

    iget p1, p1, Landroid/app/WindowConfiguration;->mPopOverState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iput p1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    :cond_0
    return-void
.end method

.method public greylist-max-o readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->readFromParcel(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public blacklist readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide p2

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->getFieldNumber()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    const-wide v1, 0x10b00000005L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto :goto_0

    :cond_2
    const-wide v0, 0x10500000003L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    goto :goto_0

    :cond_3
    const-wide v0, 0x10500000002L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->readInt(J)I

    move-result v0

    iput v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->readFromProto(Landroid/util/proto/ProtoInputStream;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->end(J)V

    throw p0
.end method

.method public blacklist scale(F)V
    .locals 1

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Landroid/app/WindowConfiguration;->scaleBounds(FLandroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Landroid/app/WindowConfiguration;->scaleBounds(FLandroid/graphics/Rect;)V

    iget-object p0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, Landroid/app/WindowConfiguration;->scaleBounds(FLandroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public blacklist setActivityType(I)V
    .locals 3

    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t change activity type once set: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " activityType="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    iput p1, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    return-void
.end method

.method public blacklist setAlwaysOnTop(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    iput p1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    return-void
.end method

.method public greylist-max-o setAppBounds(IIII)V
    .locals 1

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    :cond_0
    iget-object p0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public blacklist setAppBounds(Landroid/graphics/Rect;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    return-void

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/app/WindowConfiguration;->setAppBounds(IIII)V

    return-void
.end method

.method public blacklist setBounds(Landroid/graphics/Rect;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_0
    iget-object p0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist setCompatSandboxValues(IFLandroid/graphics/Rect;)V
    .locals 0

    iput p1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    iput p2, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    if-nez p3, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    return-void

    :cond_0
    iget-object p1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    if-nez p1, :cond_1

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    :cond_1
    iget-object p0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist setCompatSandboxValues(Landroid/app/WindowConfiguration;)V
    .locals 2

    iget v0, p1, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    iget v1, p1, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    iget-object p1, p1, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/WindowConfiguration;->setCompatSandboxValues(IFLandroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist setDexTaskDockingState(I)V
    .locals 0

    iput p1, p0, Landroid/app/WindowConfiguration;->mDexTaskDockingState:I

    return-void
.end method

.method public blacklist setDisplayRotation(I)V
    .locals 0

    iput p1, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    return-void
.end method

.method public blacklist setEmbedActivityMode(I)V
    .locals 0

    iput p1, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    return-void
.end method

.method public blacklist setFlexPanelMode(I)V
    .locals 0

    iput p1, p0, Landroid/app/WindowConfiguration;->mFlexPanelMode:I

    return-void
.end method

.method public blacklist setMaxBounds(IIII)V
    .locals 0

    iget-object p0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public blacklist setMaxBounds(Landroid/graphics/Rect;)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_0
    iget-object p0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist setOverlappingWithCutout(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    or-int/2addr p1, v0

    iput-boolean p1, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    return-void
.end method

.method public blacklist setPopOverState(I)V
    .locals 0

    iput p1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    return-void
.end method

.method public blacklist setRotation(I)V
    .locals 0

    iput p1, p0, Landroid/app/WindowConfiguration;->mRotation:I

    return-void
.end method

.method public blacklist setStage(I)V
    .locals 0

    iput p1, p0, Landroid/app/WindowConfiguration;->mStage:I

    return-void
.end method

.method public blacklist setStagePosition(I)V
    .locals 2

    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 v1, v0, 0x7

    and-int/2addr v0, v1

    and-int/lit8 p1, p1, 0x78

    or-int/2addr p1, v0

    iput p1, p0, Landroid/app/WindowConfiguration;->mStage:I

    return-void
.end method

.method public blacklist setStageType(I)V
    .locals 2

    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    and-int/lit8 v1, v0, 0x78

    and-int/2addr v0, v1

    and-int/lit8 p1, p1, 0x7

    or-int/2addr p1, v0

    iput p1, p0, Landroid/app/WindowConfiguration;->mStage:I

    return-void
.end method

.method public blacklist setTo(Landroid/app/WindowConfiguration;)V
    .locals 2

    iget-object v0, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    iget-object v0, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    iget v0, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    iget v0, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    iget v0, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    iget v0, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-direct {p0, v0}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    iget v0, p1, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setRotation(I)V

    iget v0, p1, Landroid/app/WindowConfiguration;->mStage:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setStage(I)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    :cond_0
    iget v0, p1, Landroid/app/WindowConfiguration;->mPopOverState:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setPopOverState(I)V

    iget-boolean v0, p1, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setOverlappingWithCutout(Z)V

    iget v0, p1, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    iget v1, p1, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    iget-object p1, p1, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v1, p1}, Landroid/app/WindowConfiguration;->setCompatSandboxValues(IFLandroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist setTo(Landroid/app/WindowConfiguration;I)V
    .locals 1

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    :cond_1
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    :cond_2
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_3

    iget v0, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    :cond_3
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_4

    iget v0, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    :cond_4
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_5

    iget v0, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-direct {p0, v0}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    :cond_5
    and-int/lit8 v0, p2, 0x40

    if-eqz v0, :cond_6

    iget v0, p1, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setRotation(I)V

    :cond_6
    and-int/lit16 v0, p2, 0x80

    if-eqz v0, :cond_7

    iget v0, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    :cond_7
    const/high16 v0, 0x100000

    and-int/2addr v0, p2

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setStageType(I)V

    :cond_8
    const/high16 v0, 0x200000

    and-int/2addr v0, p2

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setStagePosition(I)V

    :cond_9
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v0, :cond_a

    const/high16 v0, 0x800000

    and-int/2addr p2, v0

    if-eqz p2, :cond_a

    iget p1, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    invoke-virtual {p0, p1}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    :cond_a
    return-void
.end method

.method public greylist-max-o setToDefaults()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    invoke-direct {p0, v1}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setRotation(I)V

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setOverlappingWithCutout(Z)V

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setDexTaskDockingState(I)V

    invoke-virtual {p0, v1}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    return-void
.end method

.method public blacklist setWindowingMode(I)V
    .locals 0

    iput p1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    return-void
.end method

.method public greylist-max-o supportSplitScreenWindowingMode()Z
    .locals 0

    iget p0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-static {p0}, Landroid/app/WindowConfiguration;->supportSplitScreenWindowingMode(I)Z

    move-result p0

    return p0
.end method

.method public greylist-max-o tasksAreFloating()Z
    .locals 0

    iget p0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-static {p0}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{ mBounds="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mAppBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mMaxBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mDisplayRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/WindowConfiguration;->mRotation:I

    const-string/jumbo v2, "undefined"

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mWindowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-static {v1}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mActivityType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-static {v1}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAlwaysOnTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-static {v1}, Landroid/app/WindowConfiguration;->alwaysOnTopToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mRotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/WindowConfiguration;->mRotation:I

    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mStageConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/WindowConfiguration;->mStage:I

    invoke-static {v1}, Landroid/app/WindowConfiguration;->stageConfigToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    const-string v2, ""

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " mEmbedActivityMode="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    invoke-static {v3}, Landroid/app/WindowConfiguration;->embedActivityModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mPopOver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    invoke-static {v1}, Landroid/app/WindowConfiguration;->popOverStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mOverlappingWithCutout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/app/WindowConfiguration;->compatSandboxInfoToString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public greylist-max-o unset()V
    .locals 0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->setToDefaults()V

    return-void
.end method

.method public blacklist unsetAlwaysOnTop()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    return-void
.end method

.method public greylist-max-o updateFrom(Landroid/app/WindowConfiguration;)I
    .locals 7

    iget-object v0, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    if-eqz v3, :cond_1

    iget-object v4, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    or-int/lit8 v0, v0, 0x2

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    :cond_1
    iget-object v3, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    or-int/lit8 v0, v0, 0x4

    iget-object v3, p1, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/app/WindowConfiguration;->setMaxBounds(Landroid/graphics/Rect;)V

    :cond_2
    iget v3, p1, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eqz v3, :cond_3

    iget v4, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    if-eq v4, v3, :cond_3

    or-int/lit8 v0, v0, 0x8

    invoke-virtual {p0, v3}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    :cond_3
    iget v3, p1, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eqz v3, :cond_4

    iget v4, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    if-eq v4, v3, :cond_4

    or-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v3}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    :cond_4
    iget v3, p1, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eqz v3, :cond_5

    iget v4, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    if-eq v4, v3, :cond_5

    or-int/lit8 v0, v0, 0x20

    invoke-direct {p0, v3}, Landroid/app/WindowConfiguration;->setAlwaysOnTop(I)V

    :cond_5
    iget v3, p1, Landroid/app/WindowConfiguration;->mRotation:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_6

    iget v5, p0, Landroid/app/WindowConfiguration;->mRotation:I

    if-eq v3, v5, :cond_6

    or-int/lit8 v0, v0, 0x40

    invoke-virtual {p0, v3}, Landroid/app/WindowConfiguration;->setRotation(I)V

    :cond_6
    iget v3, p1, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v3, v4, :cond_7

    iget v4, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    if-eq v3, v4, :cond_7

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v3}, Landroid/app/WindowConfiguration;->setDisplayRotation(I)V

    :cond_7
    iget v3, p1, Landroid/app/WindowConfiguration;->mStage:I

    if-nez v3, :cond_8

    and-int/lit8 v3, v0, 0x8

    if-eqz v3, :cond_a

    :cond_8
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v3

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v4

    if-eq v4, v3, :cond_9

    const/high16 v4, 0x100000

    or-int/2addr v0, v4

    invoke-virtual {p0, v3}, Landroid/app/WindowConfiguration;->setStageType(I)V

    :cond_9
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v3

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v4

    if-eq v4, v3, :cond_a

    const/high16 v4, 0x200000

    or-int/2addr v0, v4

    invoke-virtual {p0, v3}, Landroid/app/WindowConfiguration;->setStagePosition(I)V

    :cond_a
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v3, :cond_b

    iget v3, p1, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    if-eqz v3, :cond_b

    iget v4, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    if-eq v4, v3, :cond_b

    invoke-virtual {p0, v3}, Landroid/app/WindowConfiguration;->setEmbedActivityMode(I)V

    :cond_b
    iget v3, p1, Landroid/app/WindowConfiguration;->mPopOverState:I

    if-eqz v3, :cond_c

    iget v4, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    if-eq v4, v3, :cond_c

    invoke-virtual {p0, v3}, Landroid/app/WindowConfiguration;->setPopOverState(I)V

    :cond_c
    iget-boolean v3, p1, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    if-eqz v3, :cond_d

    iget-boolean v4, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    if-eq v4, v3, :cond_d

    invoke-virtual {p0, v3}, Landroid/app/WindowConfiguration;->setOverlappingWithCutout(Z)V

    :cond_d
    iget v3, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    iget v4, p1, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    if-eqz v4, :cond_e

    if-eq v3, v4, :cond_e

    move v2, v1

    move v3, v4

    :cond_e
    iget v4, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    iget v5, p1, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    const/high16 v6, -0x40800000    # -1.0f

    cmpl-float v6, v5, v6

    if-eqz v6, :cond_f

    cmpl-float v6, v4, v5

    if-eqz v6, :cond_f

    move v2, v1

    move v4, v5

    :cond_f
    iget-object v5, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    iget-object v6, p1, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    if-eqz v6, :cond_10

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    iget-object v5, p1, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    goto :goto_1

    :cond_10
    move v1, v2

    :goto_1
    if-eqz v1, :cond_11

    const/high16 p1, 0x2000000

    or-int/2addr p1, v0

    invoke-virtual {p0, v3, v4, v5}, Landroid/app/WindowConfiguration;->setCompatSandboxValues(IFLandroid/graphics/Rect;)V

    return p1

    :cond_11
    return v0
.end method

.method public greylist-max-o useWindowFrameForBackdrop()Z
    .locals 1

    iget p0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

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

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/WindowConfiguration;->mMaxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Landroid/app/WindowConfiguration;->mWindowingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/WindowConfiguration;->mActivityType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/WindowConfiguration;->mAlwaysOnTop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/WindowConfiguration;->mRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/WindowConfiguration;->mDisplayRotation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/WindowConfiguration;->mStage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY_MODE:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/WindowConfiguration;->mEmbedActivityMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    iget v0, p0, Landroid/app/WindowConfiguration;->mPopOverState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/app/WindowConfiguration;->mOverlappingWithCutout:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxScale:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-object p0, p0, Landroid/app/WindowConfiguration;->mCompatSandboxBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
