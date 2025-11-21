.class public abstract Landroid/media/effect/FilterEffect;
.super Landroid/media/effect/Effect;
.source "FilterEffect.java"


# instance fields
.field protected greylist-max-o mEffectContext:Landroid/media/effect/EffectContext;

.field private greylist-max-o mName:Ljava/lang/String;


# direct methods
.method protected constructor greylist-max-o <init>(Landroid/media/effect/EffectContext;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/effect/Effect;-><init>()V

    iput-object p1, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    iput-object p2, p0, Landroid/media/effect/FilterEffect;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected greylist-max-o beginGLEffect()V
    .locals 1

    iget-object v0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    invoke-virtual {v0}, Landroid/media/effect/EffectContext;->assertValidGLState()V

    iget-object p0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    invoke-virtual {p0}, Landroid/media/effect/EffectContext;->saveGLState()V

    return-void
.end method

.method protected greylist-max-o endGLEffect()V
    .locals 0

    iget-object p0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    invoke-virtual {p0}, Landroid/media/effect/EffectContext;->restoreGLState()V

    return-void
.end method

.method protected greylist-max-o frameFromTexture(III)Landroid/filterfw/core/Frame;
    .locals 2

    invoke-virtual {p0}, Landroid/media/effect/FilterEffect;->getFilterContext()Landroid/filterfw/core/FilterContext;

    move-result-object p0

    invoke-virtual {p0}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p2, p3, v0, v0}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object p2

    const/16 p3, 0x64

    int-to-long v0, p1

    invoke-virtual {p0, p2, p3, v0, v1}, Landroid/filterfw/core/FrameManager;->newBoundFrame(Landroid/filterfw/core/FrameFormat;IJ)Landroid/filterfw/core/Frame;

    move-result-object p0

    const-wide/16 p1, -0x1

    invoke-virtual {p0, p1, p2}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    return-object p0
.end method

.method protected greylist-max-o getFilterContext()Landroid/filterfw/core/FilterContext;
    .locals 0

    iget-object p0, p0, Landroid/media/effect/FilterEffect;->mEffectContext:Landroid/media/effect/EffectContext;

    iget-object p0, p0, Landroid/media/effect/EffectContext;->mFilterContext:Landroid/filterfw/core/FilterContext;

    return-object p0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/effect/FilterEffect;->mName:Ljava/lang/String;

    return-object p0
.end method
