.class public final Landroid/graphics/FrameInfo;
.super Ljava/lang/Object;
.source "FrameInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/FrameInfo$FrameInfoFlags;
    }
.end annotation


# static fields
.field public static final blacklist ANIMATION_START:I = 0x6

.field public static final blacklist DRAW_START:I = 0x8

.field public static final blacklist FLAGS:I = 0x0

.field public static final blacklist FLAG_SURFACE_CANVAS:J = 0x4L

.field public static final blacklist FLAG_WINDOW_VISIBILITY_CHANGED:J = 0x1L

.field public static final blacklist FRAME_DEADLINE:I = 0x9

.field private static final blacklist FRAME_INFO_SIZE:I = 0xd

.field public static final blacklist FRAME_INTERVAL:I = 0xb

.field public static final blacklist FRAME_START_TIME:I = 0xa

.field public static final blacklist FRAME_TIMELINE_VSYNC_ID:I = 0x1

.field public static final blacklist HANDLE_INPUT_START:I = 0x5

.field public static final blacklist INPUT_EVENT_ID:I = 0x4

.field public static final blacklist INTENDED_VSYNC:I = 0x2

.field public static final blacklist INVALID_VSYNC_ID:J = -0x1L

.field public static final blacklist PERFORM_TRAVERSALS_START:I = 0x7

.field public static final blacklist VSYNC:I = 0x3

.field public static final blacklist WORKLOAD_TARGET:I = 0xc


# instance fields
.field public blacklist frameInfo:[J


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xd

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/graphics/FrameInfo;->frameInfo:[J

    return-void
.end method


# virtual methods
.method public blacklist addFlags(J)V
    .locals 3

    iget-object p0, p0, Landroid/graphics/FrameInfo;->frameInfo:[J

    const/4 v0, 0x0

    aget-wide v1, p0, v0

    or-long/2addr p1, v1

    aput-wide p1, p0, v0

    return-void
.end method

.method public blacklist markAnimationsStart()V
    .locals 3

    iget-object p0, p0, Landroid/graphics/FrameInfo;->frameInfo:[J

    const/4 v0, 0x6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    aput-wide v1, p0, v0

    return-void
.end method

.method public blacklist markInputHandlingStart()V
    .locals 3

    iget-object p0, p0, Landroid/graphics/FrameInfo;->frameInfo:[J

    const/4 v0, 0x5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    aput-wide v1, p0, v0

    return-void
.end method

.method public blacklist markPerformTraversalsStart()V
    .locals 3

    iget-object p0, p0, Landroid/graphics/FrameInfo;->frameInfo:[J

    const/4 v0, 0x7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    aput-wide v1, p0, v0

    return-void
.end method

.method public blacklist setVsync(JJJJJJ)V
    .locals 1

    iget-object p0, p0, Landroid/graphics/FrameInfo;->frameInfo:[J

    const/4 v0, 0x1

    aput-wide p5, p0, v0

    const/4 p5, 0x2

    aput-wide p1, p0, p5

    const/4 p5, 0x3

    aput-wide p3, p0, p5

    const/4 p3, 0x0

    const-wide/16 p4, 0x0

    aput-wide p4, p0, p3

    const/16 p3, 0x9

    aput-wide p7, p0, p3

    const/16 p3, 0xa

    aput-wide p9, p0, p3

    const/16 p3, 0xb

    aput-wide p11, p0, p3

    const/16 p3, 0xc

    sub-long/2addr p7, p1

    aput-wide p7, p0, p3

    return-void
.end method
