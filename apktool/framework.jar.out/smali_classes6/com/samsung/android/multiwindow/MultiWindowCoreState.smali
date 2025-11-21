.class public Lcom/samsung/android/multiwindow/MultiWindowCoreState;
.super Ljava/lang/Object;
.source "MultiWindowCoreState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/MultiWindowCoreState$LazyHolder;,
        Lcom/samsung/android/multiwindow/MultiWindowCoreState$Key;,
        Lcom/samsung/android/multiwindow/MultiWindowCoreState$Diff;,
        Lcom/samsung/android/multiwindow/MultiWindowCoreState$MultiWindowCoreStateListener;
    }
.end annotation


# static fields
.field public static blacklist FONT_SCALE_FOR_EXTERNAL_DESKTOP:F = 1.0f

.field public static blacklist MW_ENABLED:Z = false

.field public static blacklist MW_FREEFORM_CORNER_GESTURE_CUSTOM_VALUE:I = 0x0

.field public static blacklist MW_FREEFORM_CORNER_GESTURE_ENABLED:Z = false

.field public static blacklist MW_MULTISTAR_BLOCKED_MINIMIZED_FREEFORM_ENABLED:Z = false

.field public static blacklist MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED:I = 0x0

.field public static blacklist MW_MULTISTAR_ENSURE_LAUNCH_SPLIT_ENABLED:Z = false

.field public static blacklist MW_MULTISTAR_STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z = false

.field public static blacklist MW_MULTISTAR_STAY_TOP_RESUMED_ACTIVITY_DYNAMIC_ENABLED:Z = false

.field public static blacklist MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z = false

.field public static final blacklist MW_SHARED_PREF_NAME:Ljava/lang/String; = "multiwindow.property"

.field public static blacklist MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z = false

.field public static final blacklist TAG:Ljava/lang/String; = "MultiWindowCoreState"


# instance fields
.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static blacklist getInstance()Lcom/samsung/android/multiwindow/MultiWindowCoreState;
    .locals 1

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowCoreState$LazyHolder;->-$$Nest$sfgetsInstance()Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    move-result-object v0

    return-object v0
.end method

.method private blacklist updateCornerGestureCustomValue(Landroid/os/Bundle;)I
    .locals 2

    sget p0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_CUSTOM_VALUE:I

    const-string v0, "corner_gesture_custom_value"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    sget v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_CUSTOM_VALUE:I

    if-eq v0, p1, :cond_0

    sput p1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_CUSTOM_VALUE:I

    :cond_0
    sget p1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_CUSTOM_VALUE:I

    if-eq p1, p0, :cond_1

    const/16 p0, 0x2000

    return p0

    :cond_1
    return v1
.end method

.method private blacklist updateCornerGestureState(Landroid/os/Bundle;)I
    .locals 2

    sget-boolean p0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_ENABLED:Z

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "open_in_pop_up_view"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_ENABLED:Z

    if-eq v0, p0, :cond_1

    const/16 p0, 0x10

    return p0

    :cond_1
    return v1
.end method

.method private blacklist updateFontScaleForExternalDesktop(Landroid/os/Bundle;)I
    .locals 2

    sget p0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FONT_SCALE_FOR_EXTERNAL_DESKTOP:F

    const-string v0, "font_scale_for_external_desktop"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    sput p1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FONT_SCALE_FOR_EXTERNAL_DESKTOP:F

    cmpl-float p0, p1, p0

    if-eqz p0, :cond_0

    const p0, 0x8000

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist updateMultiStarBlockedMinimizeFreeformState(Landroid/os/Bundle;)I
    .locals 2

    sget-boolean p0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_BLOCKED_MINIMIZED_FREEFORM_ENABLED:Z

    const-string/jumbo v0, "mw_blocked_minimized_freeform"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_BLOCKED_MINIMIZED_FREEFORM_ENABLED:Z

    if-eq v0, p0, :cond_1

    const/16 p0, 0x800

    return p0

    :cond_1
    return v1
.end method

.method private blacklist updateMultiStarEnsureLaunchSplitState(Landroid/os/Bundle;)I
    .locals 2

    sget-boolean p0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_ENSURE_LAUNCH_SPLIT_ENABLED:Z

    const-string/jumbo v0, "mw_ensure_launch_split"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_ENSURE_LAUNCH_SPLIT_ENABLED:Z

    if-eq v0, p0, :cond_1

    const/16 p0, 0x4000

    return p0

    :cond_1
    return v1
.end method

.method private blacklist updateMultiStarSupportCustomDensityState(Landroid/os/Bundle;)I
    .locals 2

    sget p0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED:I

    const-string v0, "custom_density"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED:I

    if-eq p1, p0, :cond_0

    const/16 p0, 0x20

    return p0

    :cond_0
    return v1
.end method

.method private blacklist updateMultiStarSupportStayFocusActivity(Landroid/os/Bundle;)I
    .locals 2

    sget-boolean p0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "stay_focus_activity"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    if-eq v0, p0, :cond_1

    const/16 p0, 0x40

    return p0

    :cond_1
    return v1
.end method

.method private blacklist updateMultiStarSupportStayTopResumedActivity(Landroid/os/Bundle;)I
    .locals 2

    sget-boolean p0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_STAY_TOP_RESUMED_ACTIVITY_DYNAMIC_ENABLED:Z

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "stay_top_resumed_activity"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_STAY_TOP_RESUMED_ACTIVITY_DYNAMIC_ENABLED:Z

    if-eq v0, p0, :cond_1

    const/16 p0, 0x80

    return p0

    :cond_1
    return v1
.end method

.method private blacklist updateMultiWindowEnabledState(Landroid/os/Bundle;)I
    .locals 2

    sget-boolean p0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    const-string/jumbo v0, "mw_enabled"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    sput-boolean p1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-eq p1, p0, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method private blacklist updateNaviStarSplitImmersiveModeState(Landroid/os/Bundle;)I
    .locals 2

    sget-boolean p0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    const-string/jumbo v0, "mw_navibar_immersive_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eq v0, p0, :cond_1

    const/16 p0, 0x400

    return p0

    :cond_1
    return v1
.end method

.method private blacklist updateSplitImmersiveModeState(Landroid/os/Bundle;)I
    .locals 2

    sget-boolean p0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    const-string/jumbo v0, "mw_immersive_mode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eq v0, p0, :cond_1

    const/16 p0, 0x200

    return p0

    :cond_1
    return v1
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mw_enabled="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", f_ges="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_ENABLED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", density="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", immersive="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", nav_immersive="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", minimize_block="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_BLOCKED_MINIMIZED_FREEFORM_ENABLED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", ges_val="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_CUSTOM_VALUE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", stay_focus="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", stay_top_resumed="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_STAY_TOP_RESUMED_ACTIVITY_DYNAMIC_ENABLED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", ensure_split="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_ENSURE_LAUNCH_SPLIT_ENABLED:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ", font_scale_for_external_desktop_display="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FONT_SCALE_FOR_EXTERNAL_DESKTOP:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateFrom(Landroid/os/Bundle;)I
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateMultiWindowEnabledState(Landroid/os/Bundle;)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateCornerGestureState(Landroid/os/Bundle;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateCornerGestureCustomValue(Landroid/os/Bundle;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateMultiStarSupportCustomDensityState(Landroid/os/Bundle;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateSplitImmersiveModeState(Landroid/os/Bundle;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateNaviStarSplitImmersiveModeState(Landroid/os/Bundle;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateMultiStarSupportStayFocusActivity(Landroid/os/Bundle;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateMultiStarSupportStayTopResumedActivity(Landroid/os/Bundle;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateMultiStarBlockedMinimizeFreeformState(Landroid/os/Bundle;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateMultiStarEnsureLaunchSplitState(Landroid/os/Bundle;)I

    move-result v2

    or-int/2addr v1, v2

    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateFontScaleForExternalDesktop(Landroid/os/Bundle;)I

    move-result p0

    or-int/2addr p0, v1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
