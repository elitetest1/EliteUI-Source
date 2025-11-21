.class public Landroid/graphics/Interpolator;
.super Ljava/lang/Object;
.source "Interpolator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Interpolator$Result;
    }
.end annotation


# instance fields
.field private greylist-max-o mFrameCount:I

.field private greylist-max-o mValueCount:I

.field private greylist-max-o native_instance:J


# direct methods
.method public constructor whitelist <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    invoke-static {p1, v0}, Landroid/graphics/Interpolator;->nativeConstructor(II)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    return-void
.end method

.method public constructor whitelist <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    iput p2, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    invoke-static {p1, p2}, Landroid/graphics/Interpolator;->nativeConstructor(II)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/graphics/Interpolator;->native_instance:J

    return-void
.end method

.method private static native greylist-max-o nativeConstructor(II)J
.end method

.method private static native greylist-max-o nativeDestructor(J)V
.end method

.method private static native greylist-max-o nativeReset(JII)V
.end method

.method private static native greylist-max-o nativeSetKeyFrame(JII[F[F)V
.end method

.method private static native greylist-max-o nativeSetRepeatMirror(JFZ)V
.end method

.method private static native greylist-max-o nativeTimeToValues(JI[F)I
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Interpolator;->nativeDestructor(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    return-void
.end method

.method public final whitelist getKeyFrameCount()I
    .locals 0

    iget p0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    return p0
.end method

.method public final whitelist getValueCount()I
    .locals 0

    iget p0, p0, Landroid/graphics/Interpolator;->mValueCount:I

    return p0
.end method

.method public whitelist reset(I)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/graphics/Interpolator;->reset(II)V

    return-void
.end method

.method public whitelist reset(II)V
    .locals 2

    iput p1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    iput p2, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Interpolator;->nativeReset(JII)V

    return-void
.end method

.method public whitelist setKeyFrame(II[F)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/Interpolator;->setKeyFrame(II[F[F)V

    return-void
.end method

.method public whitelist setKeyFrame(II[F[F)V
    .locals 6

    if-ltz p1, :cond_3

    iget v0, p0, Landroid/graphics/Interpolator;->mFrameCount:I

    if-ge p1, v0, :cond_3

    array-length v0, p3

    iget v1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    if-lt v0, v1, :cond_2

    if-eqz p4, :cond_1

    array-length v0, p4

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/ArrayStoreException;

    invoke-direct {p0}, Ljava/lang/ArrayStoreException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Interpolator;->nativeSetKeyFrame(JII[F[F)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/ArrayStoreException;

    invoke-direct {p0}, Ljava/lang/ArrayStoreException;-><init>()V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public whitelist setRepeatMirror(FZ)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Interpolator;->nativeSetRepeatMirror(JFZ)V

    :cond_0
    return-void
.end method

.method public whitelist timeToValues(I[F)Landroid/graphics/Interpolator$Result;
    .locals 2

    if-eqz p2, :cond_1

    array-length v0, p2

    iget v1, p0, Landroid/graphics/Interpolator;->mValueCount:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/ArrayStoreException;

    invoke-direct {p0}, Ljava/lang/ArrayStoreException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    iget-wide v0, p0, Landroid/graphics/Interpolator;->native_instance:J

    invoke-static {v0, v1, p1, p2}, Landroid/graphics/Interpolator;->nativeTimeToValues(JI[F)I

    move-result p0

    if-eqz p0, :cond_3

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    sget-object p0, Landroid/graphics/Interpolator$Result;->FREEZE_END:Landroid/graphics/Interpolator$Result;

    return-object p0

    :cond_2
    sget-object p0, Landroid/graphics/Interpolator$Result;->FREEZE_START:Landroid/graphics/Interpolator$Result;

    return-object p0

    :cond_3
    sget-object p0, Landroid/graphics/Interpolator$Result;->NORMAL:Landroid/graphics/Interpolator$Result;

    return-object p0
.end method

.method public whitelist timeToValues([F)Landroid/graphics/Interpolator$Result;
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Interpolator;->timeToValues(I[F)Landroid/graphics/Interpolator$Result;

    move-result-object p0

    return-object p0
.end method
