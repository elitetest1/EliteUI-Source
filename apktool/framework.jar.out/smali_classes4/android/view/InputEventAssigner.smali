.class public Landroid/view/InputEventAssigner;
.super Ljava/lang/Object;
.source "InputEventAssigner.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InputEventAssigner"


# instance fields
.field private blacklist mDownEventId:I

.field private blacklist mHasUnprocessedDown:Z


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InputEventAssigner;->mHasUnprocessedDown:Z

    iput v0, p0, Landroid/view/InputEventAssigner;->mDownEventId:I

    return-void
.end method


# virtual methods
.method public blacklist notifyFrameProcessed()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InputEventAssigner;->mHasUnprocessedDown:Z

    return-void
.end method

.method public blacklist processEvent(Landroid/view/InputEvent;)I
    .locals 3

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iput-boolean v1, p0, Landroid/view/InputEventAssigner;->mHasUnprocessedDown:Z

    invoke-virtual {p1}, Landroid/view/InputEvent;->getId()I

    move-result v2

    iput v2, p0, Landroid/view/InputEventAssigner;->mDownEventId:I

    :cond_1
    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    if-ne v0, v1, :cond_3

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/InputEventAssigner;->mHasUnprocessedDown:Z

    :cond_3
    iget-boolean v0, p0, Landroid/view/InputEventAssigner;->mHasUnprocessedDown:Z

    if-eqz v0, :cond_4

    iget p0, p0, Landroid/view/InputEventAssigner;->mDownEventId:I

    return p0

    :cond_4
    invoke-virtual {p1}, Landroid/view/InputEvent;->getId()I

    move-result p0

    return p0
.end method
