.class public Landroid/window/SnapshotDrawerUtils$SnapshotSurface;
.super Ljava/lang/Object;
.source "SnapshotDrawerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/window/SnapshotDrawerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapshotSurface"
.end annotation


# instance fields
.field private final blacklist mContainerH:I

.field private final blacklist mContainerW:I

.field private final blacklist mRootSurface:Landroid/view/SurfaceControl;

.field private final blacklist mSnapshot:Landroid/window/TaskSnapshot;

.field private final blacklist mSnapshotH:I

.field private final blacklist mSnapshotW:I

.field private final blacklist mTitle:Ljava/lang/CharSequence;

.field private final blacklist mTransaction:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdrawSnapshot(Landroid/window/SnapshotDrawerUtils$SnapshotSurface;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->drawSnapshot(Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Landroid/graphics/Rect;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mRootSurface:Landroid/view/SurfaceControl;

    iput-object p2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    iput-object p4, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result p2

    iput p2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotW:I

    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result p1

    iput p1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotH:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    iput p1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerW:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerH:I

    return-void
.end method

.method private blacklist drawSizeMatchSnapshot()V
    .locals 3

    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mRootSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mRootSurface:Landroid/view/SurfaceControl;

    iget-object p0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method private blacklist drawSizeMismatchSnapshot()V
    .locals 5

    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    new-instance v1, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Builder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " - task-snapshot-surface"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mRootSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "TaskSnapshotWindow.drawSizeMismatchSnapshot"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v1}, Landroid/window/TaskSnapshot;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v3, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-nez v4, :cond_0

    cmpl-float v3, v1, v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    neg-float v2, v2

    iget v4, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerW:I

    int-to-float v4, v4

    mul-float/2addr v2, v4

    iget-object v4, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v4}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    neg-float v1, v1

    iget v4, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerH:I

    int-to-float v4, v4

    mul-float/2addr v1, v4

    iget-object v4, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v4}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-virtual {v3, v0, v2, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_1
    iget v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerW:I

    int-to-float v1, v1

    iget v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotW:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerH:I

    int-to-float v2, v2

    iget v3, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotH:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v3, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setColorSpace(Landroid/view/SurfaceControl;Landroid/graphics/ColorSpace;)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setBuffer(Landroid/view/SurfaceControl;Landroid/hardware/HardwareBuffer;)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    return-void
.end method

.method private blacklist drawSnapshot(Z)V
    .locals 3

    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerW:I

    iget v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotW:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mContainerH:I

    iget v2, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshotH:I

    if-ne v1, v2, :cond_1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Drawing snapshot surface sizeMismatch="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SnapshotDrawerUtils"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->drawSizeMismatchSnapshot()V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->drawSizeMatchSnapshot()V

    :goto_2
    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mSnapshot:Landroid/window/TaskSnapshot;

    invoke-virtual {v0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_3
    if-eqz p1, :cond_4

    iget-object p0, p0, Landroid/window/SnapshotDrawerUtils$SnapshotSurface;->mRootSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->release()V

    :cond_4
    return-void
.end method
