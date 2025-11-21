.class public Landroid/window/SnapshotDrawerUtils;
.super Ljava/lang/Object;
.source "SnapshotDrawerUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/SnapshotDrawerUtils$SnapshotSurface;,
        Landroid/window/SnapshotDrawerUtils$SystemBarBackgroundPainter;
    }
.end annotation


# static fields
.field static final blacklist FLAG_INHERIT_EXCLUDES:I = 0x3186e03a

.field private static final blacklist TAG:Ljava/lang/String; = "SnapshotDrawerUtils"

.field private static blacklist sToolkitSetFrameRateReadOnlyFlagValue:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/flags/Flags;->toolkitSetFrameRateReadOnly()Z

    move-result v0

    sput-boolean v0, Landroid/window/SnapshotDrawerUtils;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createLayoutParameters(Landroid/window/StartingWindowInfo;Ljava/lang/CharSequence;IILandroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 5

    iget-object p0, p0, Landroid/window/StartingWindowInfo;->mainWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez p0, :cond_0

    const-string p0, "SnapshotDrawerUtils"

    const-string/jumbo p1, "unable to create taskSnapshot surface "

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v1, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget v1, v1, Landroid/view/InsetsFlags;->appearance:I

    iget v2, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iput-object v4, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v4, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const p2, -0x3186e03b

    and-int/2addr p2, v2

    or-int/lit8 p2, p2, 0x18

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const p2, 0x8800

    and-int/2addr p2, v3

    const/high16 p3, 0x20000000

    or-int/2addr p2, p3

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iput-object p4, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 p2, -0x1

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p2, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iput v1, p2, Landroid/view/InsetsFlags;->appearance:I

    iget-object p2, v0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget-object p3, p0, Landroid/view/WindowManager$LayoutParams;->insetsFlags:Landroid/view/InsetsFlags;

    iget p3, p3, Landroid/view/InsetsFlags;->behavior:I

    iput p3, p2, Landroid/view/InsetsFlags;->behavior:I

    iget p2, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsSides()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->isFitInsetsIgnoringVisibility()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsIgnoringVisibility(Z)V

    sget-boolean p0, Landroid/window/SnapshotDrawerUtils;->sToolkitSetFrameRateReadOnlyFlagValue:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setFrameRatePowerSavingsBalanced(Z)V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 p0, p0, 0x1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    return-object v0
.end method

.method public static blacklist drawSnapshotOnSurface(Landroid/view/WindowManager$LayoutParams;Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Landroid/graphics/Rect;Z)V
    .locals 1

    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_0
    const-string p0, "SnapshotDrawerUtils"

    const-string p1, "Unable to draw snapshot on an empty windowBounds"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;

    invoke-virtual {p0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-direct {v0, p1, p2, p3, p0}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;-><init>(Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Landroid/graphics/Rect;Ljava/lang/CharSequence;)V

    invoke-static {v0, p4}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->-$$Nest$mdrawSnapshot(Landroid/window/SnapshotDrawerUtils$SnapshotSurface;Z)V

    return-void
.end method

.method public static blacklist getOrCreateTaskDescription(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$TaskDescription;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object p0

    :cond_0
    new-instance p0, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {p0}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    return-object p0
.end method
