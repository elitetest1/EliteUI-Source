.class public abstract Lcom/android/internal/widget/remotecompose/core/PaintContext;
.super Ljava/lang/Object;
.source "PaintContext.java"


# static fields
.field public static final blacklist TEXT_COMPLEX:I = 0x8

.field public static final blacklist TEXT_MEASURE_FONT_HEIGHT:I = 0x2

.field public static final blacklist TEXT_MEASURE_MONOSPACE_WIDTH:I = 0x1

.field public static final blacklist TEXT_MEASURE_SPACES:I = 0x4


# instance fields
.field protected blacklist mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

.field private blacklist mNeedsRepaint:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mNeedsRepaint:Z

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    return-void
.end method


# virtual methods
.method public abstract blacklist applyPaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V
.end method

.method public blacklist clearNeedsRepaint()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mNeedsRepaint:Z

    return-void
.end method

.method public abstract blacklist clipPath(II)V
.end method

.method public abstract blacklist clipRect(FFFF)V
.end method

.method public abstract blacklist combinePath(IIIB)V
.end method

.method public blacklist doesNeedsRepaint()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mNeedsRepaint:Z

    return p0
.end method

.method public abstract blacklist drawArc(FFFFFF)V
.end method

.method public abstract blacklist drawBitmap(IFFFF)V
.end method

.method public abstract blacklist drawBitmap(IIIIIIIIII)V
.end method

.method public abstract blacklist drawCircle(FFF)V
.end method

.method public abstract blacklist drawComplexText(Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;)V
.end method

.method public abstract blacklist drawLine(FFFF)V
.end method

.method public abstract blacklist drawOval(FFFF)V
.end method

.method public abstract blacklist drawPath(IFF)V
.end method

.method public abstract blacklist drawRect(FFFF)V
.end method

.method public abstract blacklist drawRoundRect(FFFFFF)V
.end method

.method public abstract blacklist drawSector(FFFFFF)V
.end method

.method public abstract blacklist drawTextOnPath(IIFF)V
.end method

.method public abstract blacklist drawTextRun(IIIIIFFZ)V
.end method

.method public abstract blacklist drawTweenPath(IIFFF)V
.end method

.method public abstract blacklist endGraphicsLayer()V
.end method

.method public blacklist getContext()Lcom/android/internal/widget/remotecompose/core/RemoteContext;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    return-object p0
.end method

.method public abstract blacklist getText(I)Ljava/lang/String;
.end method

.method public abstract blacklist getTextBounds(IIII[F)V
.end method

.method public blacklist isAnimationEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->isAnimationEnabled()Z

    move-result p0

    return p0
.end method

.method public blacklist isDebug()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->isDebug()Z

    move-result p0

    return p0
.end method

.method public blacklist isVisualDebug()Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->isVisualDebug()Z

    move-result p0

    return p0
.end method

.method public abstract blacklist layoutComplexText(IIIIIIFI)Lcom/android/internal/widget/remotecompose/core/Platform$ComputedTextLayout;
.end method

.method public blacklist log(Ljava/lang/String;)V
    .locals 2

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[LOG] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public abstract blacklist matrixRestore()V
.end method

.method public abstract blacklist matrixRotate(FFF)V
.end method

.method public abstract blacklist matrixSave()V
.end method

.method public abstract blacklist matrixScale(FFFF)V
.end method

.method public abstract blacklist matrixSkew(FF)V
.end method

.method public abstract blacklist matrixTranslate(FF)V
.end method

.method public blacklist needsRepaint()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mNeedsRepaint:Z

    return-void
.end method

.method public abstract blacklist replacePaint(Lcom/android/internal/widget/remotecompose/core/operations/paint/PaintBundle;)V
.end method

.method public abstract blacklist reset()V
.end method

.method public blacklist restore()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->matrixRestore()V

    return-void
.end method

.method public abstract blacklist restorePaint()V
.end method

.method public abstract blacklist roundedClipRect(FFFFFF)V
.end method

.method public blacklist save()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->matrixSave()V

    return-void
.end method

.method public blacklist saveLayer(FFFF)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->matrixSave()V

    return-void
.end method

.method public abstract blacklist savePaint()V
.end method

.method public abstract blacklist scale(FF)V
.end method

.method public blacklist setContext(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    return-void
.end method

.method public abstract blacklist setGraphicsLayer(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract blacklist startGraphicsLayer(II)V
.end method

.method public blacklist supportsVersion(III)Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/widget/remotecompose/core/PaintContext;->mContext:Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;->supportsVersion(III)Z

    move-result p0

    return p0
.end method

.method public abstract blacklist translate(FF)V
.end method

.method public abstract blacklist tweenPath(IIIF)V
.end method
