.class public Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
.super Ljava/lang/Object;
.source "SyncRtSurfaceTransactionApplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field blacklist alpha:F

.field blacklist backgroundBlurRadius:I

.field blacklist cornerRadius:F

.field blacklist flags:I

.field blacklist layer:I

.field blacklist matrix:Landroid/graphics/Matrix;

.field blacklist mergeTransaction:Landroid/view/SurfaceControl$Transaction;

.field blacklist opaque:Z

.field final blacklist surface:Landroid/view/SurfaceControl;

.field blacklist visible:Z

.field blacklist windowCrop:Landroid/graphics/Rect;


# direct methods
.method public constructor blacklist <init>(Landroid/view/SurfaceControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->surface:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;
    .locals 13

    new-instance v0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;

    iget-object v1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->surface:Landroid/view/SurfaceControl;

    iget v2, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    iget v3, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->alpha:F

    iget-object v4, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->matrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->windowCrop:Landroid/graphics/Rect;

    iget v6, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->layer:I

    iget v7, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->cornerRadius:F

    iget v8, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->backgroundBlurRadius:I

    iget-boolean v9, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->visible:Z

    iget-object v10, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->mergeTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-boolean v11, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->opaque:Z

    const/4 v12, 0x0

    invoke-direct/range {v0 .. v12}, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams;-><init>(Landroid/view/SurfaceControl;IFLandroid/graphics/Matrix;Landroid/graphics/Rect;IFIZLandroid/view/SurfaceControl$Transaction;ZLandroid/view/SyncRtSurfaceTransactionApplier-IA;)V

    return-object v0
.end method

.method public blacklist withAlpha(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .locals 0

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->alpha:F

    iget p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public blacklist withBackgroundBlur(I)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .locals 0

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->backgroundBlurRadius:I

    iget p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public blacklist withCornerRadius(F)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .locals 0

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->cornerRadius:F

    iget p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public blacklist withEarlyWakeupEnd()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .locals 1

    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public blacklist withEarlyWakeupStart()Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .locals 1

    iget v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public blacklist withLayer(I)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .locals 0

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->layer:I

    iget p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public blacklist withMatrix(Landroid/graphics/Matrix;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .locals 1

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->matrix:Landroid/graphics/Matrix;

    iget p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public blacklist withMergeTransaction(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->mergeTransaction:Landroid/view/SurfaceControl$Transaction;

    iget p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public blacklist withOpaque(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->opaque:Z

    iget p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit16 p1, p1, 0x400

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public blacklist withVisibility(Z)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->visible:Z

    iget p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    return-object p0
.end method

.method public blacklist withWindowCrop(Landroid/graphics/Rect;)Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->windowCrop:Landroid/graphics/Rect;

    iget p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Landroid/view/SyncRtSurfaceTransactionApplier$SurfaceParams$Builder;->flags:I

    return-object p0
.end method
