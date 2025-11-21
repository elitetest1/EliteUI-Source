.class final Landroid/graphics/GraphicsStatsService$BufferInfo;
.super Ljava/lang/Object;
.source "GraphicsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/GraphicsStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BufferInfo"
.end annotation


# instance fields
.field blacklist mEndTime:J

.field final blacklist mPackageName:Ljava/lang/String;

.field blacklist mStartTime:J

.field final blacklist mUid:I

.field final blacklist mVersionCode:J


# direct methods
.method constructor blacklist <init>(Landroid/graphics/GraphicsStatsService;ILjava/lang/String;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/graphics/GraphicsStatsService$BufferInfo;->mUid:I

    iput-object p3, p0, Landroid/graphics/GraphicsStatsService$BufferInfo;->mPackageName:Ljava/lang/String;

    iput-wide p4, p0, Landroid/graphics/GraphicsStatsService$BufferInfo;->mVersionCode:J

    iput-wide p6, p0, Landroid/graphics/GraphicsStatsService$BufferInfo;->mStartTime:J

    return-void
.end method
