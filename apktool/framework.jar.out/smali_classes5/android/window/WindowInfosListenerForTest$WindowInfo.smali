.class public Landroid/window/WindowInfosListenerForTest$WindowInfo;
.super Ljava/lang/Object;
.source "WindowInfosListenerForTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/WindowInfosListenerForTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowInfo"
.end annotation


# instance fields
.field public final blacklist bounds:Landroid/graphics/Rect;

.field public final blacklist displayId:I

.field public final blacklist isDuplicateTouchToWallpaper:Z

.field public final blacklist isFocusable:Z

.field public final blacklist isTouchable:Z

.field public final blacklist isTrustedOverlay:Z

.field public final blacklist isVisible:Z

.field public final blacklist isWatchOutsideTouch:Z

.field public final blacklist name:Ljava/lang/String;

.field public final blacklist transform:Landroid/graphics/Matrix;

.field public final blacklist windowToken:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;Ljava/lang/String;ILandroid/graphics/Rect;ILandroid/graphics/Matrix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->windowToken:Landroid/os/IBinder;

    iput-object p2, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->name:Ljava/lang/String;

    iput p3, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->displayId:I

    iput-object p4, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->bounds:Landroid/graphics/Rect;

    and-int/lit16 p1, p5, 0x100

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    iput-boolean p1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isTrustedOverlay:Z

    and-int/lit8 p1, p5, 0x2

    if-nez p1, :cond_1

    move p1, p2

    goto :goto_1

    :cond_1
    move p1, p3

    :goto_1
    iput-boolean p1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isVisible:Z

    iput-object p6, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->transform:Landroid/graphics/Matrix;

    and-int/lit8 p1, p5, 0x8

    if-nez p1, :cond_2

    move p1, p2

    goto :goto_2

    :cond_2
    move p1, p3

    :goto_2
    iput-boolean p1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isTouchable:Z

    and-int/lit8 p1, p5, 0x4

    if-nez p1, :cond_3

    move p1, p2

    goto :goto_3

    :cond_3
    move p1, p3

    :goto_3
    iput-boolean p1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isFocusable:Z

    and-int/lit8 p1, p5, 0x20

    if-eqz p1, :cond_4

    move p1, p2

    goto :goto_4

    :cond_4
    move p1, p3

    :goto_4
    iput-boolean p1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isDuplicateTouchToWallpaper:Z

    and-int/lit16 p1, p5, 0x200

    if-eqz p1, :cond_5

    goto :goto_5

    :cond_5
    move p2, p3

    :goto_5
    iput-boolean p2, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isWatchOutsideTouch:Z

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", frame="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isTrustedOverlay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->isTrustedOverlay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->windowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/window/WindowInfosListenerForTest$WindowInfo;->transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
