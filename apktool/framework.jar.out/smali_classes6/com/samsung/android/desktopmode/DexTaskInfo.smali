.class public Lcom/samsung/android/desktopmode/DexTaskInfo;
.super Ljava/lang/Object;
.source "DexTaskInfo.java"


# static fields
.field public static final blacklist FLAG_FIXED_ORIENTATION:I = 0x4

.field public static final blacklist FLAG_IN_MULTI_WINDOW_MODE:I = 0x1

.field public static final blacklist FLAG_RESIZEABLE_TO_FULLSCREEN:I = 0x2


# instance fields
.field private final blacklist mFlags:I


# direct methods
.method public constructor blacklist <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/desktopmode/DexTaskInfo;->mFlags:I

    return-void
.end method


# virtual methods
.method public blacklist isFixedOrientation()Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/desktopmode/DexTaskInfo;->mFlags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isInMultiWindowMode()Z
    .locals 1

    iget p0, p0, Lcom/samsung/android/desktopmode/DexTaskInfo;->mFlags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isResizableToFullscreen()Z
    .locals 0

    iget p0, p0, Lcom/samsung/android/desktopmode/DexTaskInfo;->mFlags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
