.class public Landroid/view/ScrollCaptureSession;
.super Ljava/lang/Object;
.source "ScrollCaptureSession.java"


# instance fields
.field private final blacklist mPositionInWindow:Landroid/graphics/Point;

.field private final blacklist mScrollBounds:Landroid/graphics/Rect;

.field private final blacklist mSurface:Landroid/view/Surface;


# direct methods
.method public constructor whitelist <init>(Landroid/view/Surface;Landroid/graphics/Rect;Landroid/graphics/Point;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    iput-object p1, p0, Landroid/view/ScrollCaptureSession;->mSurface:Landroid/view/Surface;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Landroid/view/ScrollCaptureSession;->mScrollBounds:Landroid/graphics/Rect;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Point;

    iput-object p1, p0, Landroid/view/ScrollCaptureSession;->mPositionInWindow:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public whitelist getPositionInWindow()Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Landroid/view/ScrollCaptureSession;->mPositionInWindow:Landroid/graphics/Point;

    return-object p0
.end method

.method public whitelist getScrollBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/view/ScrollCaptureSession;->mScrollBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Landroid/view/ScrollCaptureSession;->mSurface:Landroid/view/Surface;

    return-object p0
.end method
