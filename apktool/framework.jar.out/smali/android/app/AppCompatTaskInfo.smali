.class public Landroid/app/AppCompatTaskInfo;
.super Ljava/lang/Object;
.source "AppCompatTaskInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppCompatTaskInfo$TopActivityFlag;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppCompatTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FLAGS_COMPAT_UI_INTERESTED:I = 0x10feb

.field private static final blacklist FLAGS_ORGANIZER_INTERESTED:I = 0x10fe0

.field private static final blacklist FLAG_BASE:I = 0x1

.field private static final blacklist FLAG_ELIGIBLE_FOR_LETTERBOX_EDU:I = 0x2

.field private static final blacklist FLAG_ELIGIBLE_FOR_USER_ASPECT_RATIO_BUTTON:I = 0x40

.field private static final blacklist FLAG_ENABLE_RESTART_MENU_FOR_DISPLAY_MOVE:I = 0x400

.field private static final blacklist FLAG_FULLSCREEN_OVERRIDE_SYSTEM:I = 0x80

.field private static final blacklist FLAG_FULLSCREEN_OVERRIDE_USER:I = 0x100

.field public static final blacklist FLAG_HAS_MIN_ASPECT_RATIO_OVERRIDE:I = 0x200

.field private static final blacklist FLAG_IN_SIZE_COMPAT:I = 0x8

.field private static final blacklist FLAG_IS_FROM_LETTERBOX_DOUBLE_TAP:I = 0x20

.field private static final blacklist FLAG_LETTERBOXED:I = 0x4

.field private static final blacklist FLAG_LETTERBOX_DOUBLE_TAP_ENABLED:I = 0x10

.field private static final blacklist FLAG_LETTERBOX_EDU_ENABLED:I = 0x1

.field public static final blacklist FLAG_OPT_OUT_EDGE_TO_EDGE:I = 0x800

.field private static final blacklist FLAG_ROTATION_COMPAT_MODE_ENABLED:I = 0x10000

.field private static final blacklist FLAG_UNDEFINED:I


# instance fields
.field public blacklist cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

.field private blacklist mTopActivityFlags:I

.field public blacklist singleTapFromLetterbox:Z

.field public final blacklist topActivityAppBounds:Landroid/graphics/Rect;

.field public blacklist topActivityBounds:Landroid/graphics/Rect;

.field public blacklist topActivityInDisplayCompat:Z

.field public blacklist topActivityLetterboxBounds:Landroid/graphics/Rect;

.field public blacklist topActivityLetterboxHeight:I

.field public blacklist topActivityLetterboxHorizontalPosition:I

.field public blacklist topActivityLetterboxVerticalPosition:I

.field public blacklist topActivityLetterboxWidth:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/AppCompatTaskInfo$1;

    invoke-direct {v0}, Landroid/app/AppCompatTaskInfo$1;-><init>()V

    sput-object v0, Landroid/app/AppCompatTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    invoke-static {}, Landroid/app/CameraCompatTaskInfo;->create()Landroid/app/CameraCompatTaskInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    invoke-static {}, Landroid/app/CameraCompatTaskInfo;->create()Landroid/app/CameraCompatTaskInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    invoke-virtual {p0, p1}, Landroid/app/AppCompatTaskInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/AppCompatTaskInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AppCompatTaskInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static blacklist create()Landroid/app/AppCompatTaskInfo;
    .locals 1

    new-instance v0, Landroid/app/AppCompatTaskInfo;

    invoke-direct {v0}, Landroid/app/AppCompatTaskInfo;-><init>()V

    return-object v0
.end method

.method private blacklist isTopActivityFlagEnabled(I)Z
    .locals 0

    iget p0, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist setTopActivityFlag(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    iget p2, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p2, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_0
    iput p1, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    return-void
.end method


# virtual methods
.method public blacklist clearTopActivityFlags()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    return-void
.end method

.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist eligibleForLetterboxEducation()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result p0

    return p0
.end method

.method public blacklist eligibleForUserAspectRatioButton()Z
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result p0

    return p0
.end method

.method public blacklist equalsForCompatUi(Landroid/app/AppCompatTaskInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    const v2, 0x10feb

    and-int/2addr v1, v2

    iget v3, p1, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    and-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    iget-object p1, p1, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    invoke-virtual {p0, p1}, Landroid/app/CameraCompatTaskInfo;->equalsForCompatUi(Landroid/app/CameraCompatTaskInfo;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public blacklist equalsForTaskOrganizer(Landroid/app/AppCompatTaskInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    const v2, 0x10fe0

    and-int/2addr v1, v2

    iget v3, p1, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    and-int/2addr v2, v3

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    iget-object v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    iget v2, p1, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    if-ne v1, v2, :cond_1

    iget-object p0, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    iget-object p1, p1, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    invoke-virtual {p0, p1}, Landroid/app/CameraCompatTaskInfo;->equalsForTaskOrganizer(Landroid/app/CameraCompatTaskInfo;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public blacklist hasCompatUI()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->eligibleForLetterboxEducation()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isLetterboxDoubleTapEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->eligibleForUserAspectRatioButton()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isRestartMenuEnabledForDisplayMove()Z

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

.method public blacklist hasMinAspectRatioOverride()Z
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result p0

    return p0
.end method

.method public blacklist hasMultiTaskingCompatUi()Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isRestartMenuEnabledForDisplayMove()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_ROTATION_COMPAT_MODE:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isRotationCompatModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    return v2

    :cond_1
    return v1

    :cond_2
    return v2
.end method

.method public blacklist hasOptOutEdgeToEdge()Z
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isFromLetterboxDoubleTap()Z
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isLetterboxDoubleTapEnabled()Z
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isLetterboxEducationEnabled()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isRestartMenuEnabledForDisplayMove()Z
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isRotationCompatModeEnabled()Z
    .locals 1

    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isSystemFullscreenOverrideEnabled()Z
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isTopActivityInSizeCompat()Z
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isTopActivityLetterboxed()Z
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result p0

    return p0
.end method

.method public blacklist isTopActivityPillarboxShaped()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isTopActivityLetterboxed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    iget p0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    if-gt v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isUserFullscreenOverrideEnabled()Z
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Landroid/app/AppCompatTaskInfo;->isTopActivityFlagEnabled(I)Z

    move-result p0

    return p0
.end method

.method blacklist readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    iget-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxBounds:Landroid/graphics/Rect;

    sget-object v0, Landroid/app/CameraCompatTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/CameraCompatTaskInfo;

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityBounds:Landroid/graphics/Rect;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT_CONFIGURATION:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Landroid/app/AppCompatTaskInfo;->singleTapFromLetterbox:Z

    return-void
.end method

.method public blacklist setEligibleForLetterboxEducation(Z)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    return-void
.end method

.method public blacklist setEligibleForUserAspectRatioButton(Z)V
    .locals 1

    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    return-void
.end method

.method public blacklist setHasMinAspectRatioOverride(Z)V
    .locals 1

    const/16 v0, 0x200

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    return-void
.end method

.method public blacklist setIsFromLetterboxDoubleTap(Z)V
    .locals 1

    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    return-void
.end method

.method public blacklist setLetterboxDoubleTapEnabled(Z)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    return-void
.end method

.method public blacklist setLetterboxEducationEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    return-void
.end method

.method public blacklist setOptOutEdgeToEdge(Z)V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    return-void
.end method

.method public blacklist setRestartMenuEnabledForDisplayMove(Z)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    return-void
.end method

.method public blacklist setRotationCompatModeEnabled(Z)V
    .locals 1

    const/high16 v0, 0x10000

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    return-void
.end method

.method public blacklist setSystemFullscreenOverrideEnabled(Z)V
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    return-void
.end method

.method public blacklist setTopActivityInSizeCompat(Z)V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    return-void
.end method

.method public blacklist setTopActivityLetterboxed(Z)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    return-void
.end method

.method public blacklist setUserFullscreenOverrideEnabled(Z)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, Landroid/app/AppCompatTaskInfo;->setTopActivityFlag(IZ)V

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppCompatTaskInfo { topActivityInSizeCompat="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isTopActivityInSizeCompat()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " eligibleForLetterboxEducation= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->eligibleForLetterboxEducation()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isLetterboxEducationEnabled= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isLetterboxEducationEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isLetterboxDoubleTapEnabled= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isLetterboxDoubleTapEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " eligibleForUserAspectRatioButton= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->eligibleForUserAspectRatioButton()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " topActivityBoundsLetterboxed= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isTopActivityLetterboxed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isFromLetterboxDoubleTap= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isFromLetterboxDoubleTap()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " topActivityLetterboxVerticalPosition= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " topActivityLetterboxHorizontalPosition= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " topActivityLetterboxWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " topActivityLetterboxHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " topActivityAppBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " isUserFullscreenOverrideEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isUserFullscreenOverrideEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isSystemFullscreenOverrideEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->isSystemFullscreenOverrideEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hasMinAspectRatioOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/AppCompatTaskInfo;->hasMinAspectRatioOverride()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " topActivityLetterboxBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cameraCompatTaskInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    invoke-virtual {v1}, Landroid/app/CameraCompatTaskInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " topActivityBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " topActivityInDisplayCompat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/app/AppCompatTaskInfo;->topActivityInDisplayCompat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " singleTapFromLetterbox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroid/app/AppCompatTaskInfo;->singleTapFromLetterbox:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/AppCompatTaskInfo;->mTopActivityFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxVerticalPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHorizontalPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityLetterboxBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/AppCompatTaskInfo;->cameraCompatTaskInfo:Landroid/app/CameraCompatTaskInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/AppCompatTaskInfo;->topActivityBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MT_APP_COMPAT_CONFIGURATION:Z

    if-nez p2, :cond_1

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->FW_FLIP_FULL_COVER_SCREEN_APP_COMPAT_CONFIGURATION:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-boolean p0, p0, Landroid/app/AppCompatTaskInfo;->singleTapFromLetterbox:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
