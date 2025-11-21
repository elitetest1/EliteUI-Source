.class public Landroid/graphics/PathMeasure;
.super Ljava/lang/Object;
.source "PathMeasure.java"


# static fields
.field public static final whitelist POSITION_MATRIX_FLAG:I = 0x1

.field public static final whitelist TANGENT_MATRIX_FLAG:I = 0x2


# instance fields
.field private greylist-max-o mPath:Landroid/graphics/Path;

.field private greylist-max-o native_instance:J


# direct methods
.method public constructor whitelist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/graphics/PathMeasure;->native_create(JZ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Path;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1, p2}, Landroid/graphics/PathMeasure;->native_create(JZ)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/graphics/PathMeasure;->native_instance:J

    return-void
.end method

.method private static native greylist-max-o native_create(JZ)J
.end method

.method private static native greylist-max-o native_destroy(J)V
.end method

.method private static native greylist-max-o native_getLength(J)F
.end method

.method private static native greylist-max-o native_getMatrix(JFJI)Z
.end method

.method private static native greylist-max-o native_getPosTan(JF[F[F)Z
.end method

.method private static native greylist-max-o native_getSegment(JFFJZ)Z
.end method

.method private static native greylist-max-o native_isClosed(J)Z
.end method

.method private static native greylist-max-o native_nextContour(J)Z
.end method

.method private static native greylist-max-o native_setPath(JJZ)V
.end method


# virtual methods
.method protected whitelist test-api finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_destroy(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    return-void
.end method

.method public whitelist getLength()F
    .locals 2

    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_getLength(J)F

    move-result p0

    return p0
.end method

.method public whitelist getMatrix(FLandroid/graphics/Matrix;I)Z
    .locals 6

    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-virtual {p2}, Landroid/graphics/Matrix;->ni()J

    move-result-wide v3

    move v2, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/graphics/PathMeasure;->native_getMatrix(JFJI)Z

    move-result p0

    return p0
.end method

.method public whitelist getPosTan(F[F[F)Z
    .locals 2

    const/4 v0, 0x2

    if-eqz p2, :cond_0

    array-length v1, p2

    if-lt v1, v0, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    array-length v1, p3

    if-lt v1, v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/graphics/PathMeasure;->native_getPosTan(JF[F[F)Z

    move-result p0

    return p0
.end method

.method public whitelist getSegment(FFLandroid/graphics/Path;Z)Z
    .locals 10

    invoke-virtual {p0}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gez v2, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    move v5, p1

    :goto_0
    cmpl-float p1, p2, v0

    if-lez p1, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    move v6, p2

    :goto_1
    cmpl-float p1, v5, v6

    if-ltz p1, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    iget-wide v3, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-virtual {p3}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v7

    move v9, p4

    invoke-static/range {v3 .. v9}, Landroid/graphics/PathMeasure;->native_getSegment(JFFJZ)Z

    move-result p0

    return p0
.end method

.method public whitelist isClosed()Z
    .locals 2

    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_isClosed(J)Z

    move-result p0

    return p0
.end method

.method public whitelist nextContour()Z
    .locals 2

    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/PathMeasure;->native_nextContour(J)Z

    move-result p0

    return p0
.end method

.method public whitelist setPath(Landroid/graphics/Path;Z)V
    .locals 2

    iput-object p1, p0, Landroid/graphics/PathMeasure;->mPath:Landroid/graphics/Path;

    iget-wide v0, p0, Landroid/graphics/PathMeasure;->native_instance:J

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    invoke-static {v0, v1, p0, p1, p2}, Landroid/graphics/PathMeasure;->native_setPath(JJZ)V

    return-void
.end method
