.class public Landroid/view/WindowlessWindowLayout;
.super Landroid/view/WindowLayout;
.source "WindowlessWindowLayout.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/WindowLayout;-><init>()V

    return-void
.end method

.method private static blacklist calculateLength(III)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p2

    :cond_0
    const/4 p2, -0x2

    if-ne p0, p2, :cond_1

    return p1

    :cond_1
    return p0
.end method


# virtual methods
.method public blacklist computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;)V
    .locals 14

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v13}, Landroid/view/WindowlessWindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;ILandroid/graphics/Rect;Z)V

    return-void
.end method

.method public blacklist computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;ILandroid/graphics/Rect;Z)V
    .locals 0

    iget-object p0, p10, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    if-nez p0, :cond_0

    iget-object p0, p10, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 p3, 0x0

    invoke-virtual {p0, p3, p3, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p10, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    iget-object p1, p10, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p10, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object p1, p10, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p2, p10, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-static {p0, p7, p2}, Landroid/view/WindowlessWindowLayout;->calculateLength(III)I

    move-result p5

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object p2, p10, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-static {p0, p6, p2}, Landroid/view/WindowlessWindowLayout;->calculateLength(III)I

    move-result p4

    iget p3, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p6, p10, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float p0, p0

    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    add-float/2addr p0, p2

    float-to-int p7, p0

    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float p0, p0

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    add-float/2addr p0, p1

    float-to-int p8, p0

    iget-object p9, p10, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-static/range {p3 .. p9}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    iget-object p0, p10, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object p1, p10, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object p0, p10, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    iget-object p1, p10, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
