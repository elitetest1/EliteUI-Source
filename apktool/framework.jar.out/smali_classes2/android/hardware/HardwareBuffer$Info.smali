.class public Landroid/hardware/HardwareBuffer$Info;
.super Ljava/lang/Object;
.source "HardwareBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/HardwareBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Info"
.end annotation


# instance fields
.field blacklist mCallStack:Ljava/lang/String;

.field blacklist mCreatedTime:J

.field blacklist mHeight:I

.field blacklist mId:J

.field blacklist mNativeObject:J

.field blacklist mWidth:I


# direct methods
.method constructor blacklist <init>(Landroid/hardware/HardwareBuffer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/hardware/HardwareBuffer$Info;->mCallStack:Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Landroid/hardware/HardwareBuffer$Info;->mCreatedTime:J

    return-void
.end method
